-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 08:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komik_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-04-01-074253', 'App\\Database\\Migrations\\Penduduk', 'default', 'App', 1711969631, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Sholahuddin Hasan', 'Jl. Bandeng no. 123, Bangil', '2024-04-01 23:29:35', '2024-04-01 23:29:35'),
(2, 'Udin Petot', 'Jl. Cucut no. 456, Kersikan', '2024-04-01 23:29:35', '2024-04-01 23:29:35'),
(3, 'Kevon Senger Jr.', '83273 Trisha Circles Suite 524\nNew Horace, TX 12443-3586', '2024-04-01 23:59:40', '2024-04-01 23:59:40'),
(4, 'Clara Volkman', '7167 Lizeth Parkway\nNew Alisa, IA 34472', '1976-09-05 20:19:38', '2024-04-02 00:06:33'),
(5, 'Qori Putri Mardhiyah S.Pd', 'Ds. Bakin No. 644, Kotamobagu 23593, Gorontalo', '1988-06-15 14:28:02', '2024-04-02 00:07:17'),
(6, 'Harja Pranowo', 'Jr. Flora No. 269, Dumai 39966, Sultra', '1999-10-24 01:05:16', '2024-04-03 23:58:57'),
(7, 'Laswi Siregar', 'Jr. Baha No. 286, Surabaya 90715, Sulteng', '1998-05-29 21:47:11', '2024-04-03 23:58:57'),
(8, 'Raisa Hariyah S.Sos', 'Dk. Wahid No. 335, Bengkulu 39829, Kalbar', '2018-05-16 12:18:02', '2024-04-03 23:58:57'),
(9, 'Tania Fujiati M.Kom.', 'Jln. Gotong Royong No. 966, Bitung 38918, Riau', '2011-03-03 03:39:05', '2024-04-03 23:58:57'),
(10, 'Taufan Gunarto', 'Jln. Bah Jaya No. 354, Batu 95782, Aceh', '2000-05-21 13:03:03', '2024-04-03 23:58:57'),
(11, 'Dinda Puspita', 'Jln. Ciwastra No. 330, Padangsidempuan 87808, Sumbar', '1988-10-25 02:38:36', '2024-04-03 23:58:57'),
(12, 'Galiono Natsir S.Psi', 'Kpg. Gardujati No. 967, Sorong 24275, Aceh', '1972-09-26 02:40:41', '2024-04-03 23:58:57'),
(13, 'Irma Puspita', 'Psr. Jend. Sudirman No. 366, Sawahlunto 25728, Papua', '2013-11-08 00:00:21', '2024-04-03 23:58:57'),
(14, 'Cici Uyainah S.Farm', 'Jln. Sugiono No. 823, Manado 78522, Sultra', '1992-06-01 08:05:18', '2024-04-03 23:58:57'),
(15, 'Karen Winarsih', 'Ki. Badak No. 685, Makassar 47929, Bali', '1991-08-08 09:36:33', '2024-04-03 23:58:57'),
(16, 'Widya Sudiati S.Sos', 'Kpg. Abdul. Muis No. 676, Tual 88494, Bali', '2001-06-02 22:33:00', '2024-04-03 23:58:57'),
(17, 'Cakrawala Maulana', 'Psr. Karel S. Tubun No. 162, Sukabumi 69212, DIY', '2017-11-30 23:08:22', '2024-04-03 23:58:57'),
(18, 'Carub Saragih', 'Dk. Dipatiukur No. 84, Padang 55966, Papua', '1975-07-09 19:59:22', '2024-04-03 23:58:57'),
(19, 'Irsad Manullang', 'Ds. Bass No. 489, Banjarbaru 56154, Banten', '1973-12-03 01:28:25', '2024-04-03 23:58:57'),
(20, 'Rafi Lazuardi', 'Dk. Tubagus Ismail No. 705, Magelang 83913, Sulsel', '2013-07-26 09:20:07', '2024-04-03 23:58:57'),
(21, 'Rahmi Mayasari', 'Dk. Pasir Koja No. 168, Denpasar 25646, Kaltim', '1987-07-15 20:28:36', '2024-04-03 23:58:57'),
(22, 'Daruna Tamba', 'Jln. Nangka No. 542, Cilegon 10889, Babel', '1999-07-03 19:06:12', '2024-04-03 23:58:57'),
(23, 'Caraka Thamrin', 'Jln. Asia Afrika No. 423, Bogor 80433, Riau', '1994-06-23 14:18:59', '2024-04-03 23:58:57'),
(24, 'Drajat Bahuwirya Mangunsong', 'Jr. Sutan Syahrir No. 447, Denpasar 72961, Babel', '2007-05-23 13:59:17', '2024-04-03 23:58:57'),
(25, 'Luwar Nashiruddin', 'Psr. Samanhudi No. 78, Manado 97513, Kaltara', '1986-07-01 21:39:15', '2024-04-03 23:58:57'),
(26, 'Garan Zulkarnain M.M.', 'Jln. Cokroaminoto No. 636, Lubuklinggau 38852, Babel', '1973-12-18 09:01:51', '2024-04-03 23:58:57'),
(27, 'Mahmud Saragih', 'Psr. Baladewa No. 29, Bitung 44253, NTB', '1985-03-27 04:04:32', '2024-04-03 23:58:57'),
(28, 'Cawisono Tarihoran', 'Ki. Imam No. 128, Padang 34580, Papua', '1974-12-13 21:03:43', '2024-04-03 23:58:57'),
(29, 'Almira Purnawati', 'Ki. Perintis Kemerdekaan No. 678, Surabaya 42609, Riau', '2020-06-13 22:51:32', '2024-04-03 23:58:57'),
(30, 'Malika Yuliarti S.Sos', 'Ki. Honggowongso No. 208, Bogor 53848, Jateng', '1980-07-30 11:01:44', '2024-04-03 23:58:57'),
(31, 'Aisyah Purwanti', 'Ki. Bah Jaya No. 388, Bitung 45506, Sulteng', '1978-12-04 09:24:59', '2024-04-03 23:58:57'),
(32, 'Balapati Galak Sirait S.Farm', 'Jln. Salam No. 336, Administrasi Jakarta Pusat 56098, Riau', '2008-07-05 02:41:41', '2024-04-03 23:58:57'),
(33, 'Dimaz Hardiansyah', 'Gg. Yos Sudarso No. 777, Sungai Penuh 20582, Kaltara', '2012-12-31 13:21:44', '2024-04-03 23:58:57'),
(34, 'Anita Nuraini S.Psi', 'Dk. Ikan No. 434, Sungai Penuh 19643, Kalteng', '1999-03-23 07:26:33', '2024-04-03 23:58:57'),
(35, 'Intan Anggraini', 'Ki. Wahid No. 897, Batu 55934, Sulut', '2001-12-06 12:24:29', '2024-04-03 23:58:57'),
(36, 'Kamaria Yuliarti S.IP', 'Dk. Lembong No. 608, Payakumbuh 30117, Banten', '1979-04-22 14:39:28', '2024-04-03 23:58:57'),
(37, 'Nasim Yahya Thamrin S.T.', 'Psr. Bakti No. 349, Bekasi 21465, Jateng', '1972-10-04 09:29:17', '2024-04-03 23:58:57'),
(38, 'Emas Pratama M.Pd', 'Psr. Yap Tjwan Bing No. 679, Probolinggo 80516, NTB', '1994-01-06 16:09:26', '2024-04-03 23:58:57'),
(39, 'Rina Vanesa Mardhiyah M.TI.', 'Gg. Sugiyopranoto No. 786, Pekanbaru 41754, DKI', '1996-08-29 01:35:36', '2024-04-03 23:58:57'),
(40, 'Asman Nainggolan M.Pd', 'Gg. Taman No. 298, Pangkal Pinang 94630, Sumut', '1995-07-12 08:13:33', '2024-04-03 23:58:57'),
(41, 'Kardi Oman Mandala', 'Gg. Dahlia No. 590, Payakumbuh 11530, Gorontalo', '1992-06-22 23:17:11', '2024-04-03 23:58:57'),
(42, 'Sabrina Yolanda', 'Gg. Cikutra Barat No. 547, Medan 35450, Sulsel', '2012-09-30 07:01:20', '2024-04-03 23:58:57'),
(43, 'Damu Zulkarnain M.Pd', 'Dk. Baung No. 56, Payakumbuh 96598, Bengkulu', '2002-04-06 17:21:37', '2024-04-03 23:58:57'),
(44, 'Ade Novitasari', 'Dk. Sunaryo No. 947, Pangkal Pinang 58859, NTB', '1985-03-27 00:58:04', '2024-04-03 23:58:57'),
(45, 'Talia Yuniar', 'Ds. Dahlia No. 571, Bau-Bau 97400, Sulbar', '2018-10-21 08:53:06', '2024-04-03 23:58:57'),
(46, 'Parman Wijaya', 'Ki. Pelajar Pejuang 45 No. 155, Jambi 89134, DIY', '1978-11-12 13:44:25', '2024-04-03 23:58:57'),
(47, 'Makara Perkasa Hidayat', 'Gg. Flores No. 818, Tangerang Selatan 31319, Kalteng', '2001-10-08 02:58:01', '2024-04-03 23:58:57'),
(48, 'Wirda Dinda Permata S.Kom', 'Dk. Batako No. 853, Padangsidempuan 90558, Kaltim', '2001-11-26 18:46:23', '2024-04-03 23:58:57'),
(49, 'Cayadi Napitupulu', 'Kpg. Yogyakarta No. 115, Blitar 73553, Bali', '2017-04-29 14:50:15', '2024-04-03 23:58:57'),
(50, 'Sakti Luluh Suryono M.Kom.', 'Dk. Moch. Ramdan No. 380, Mataram 14014, Kaltim', '2000-07-06 21:10:13', '2024-04-03 23:58:57'),
(51, 'Vera Maryati', 'Psr. Cikapayang No. 684, Sungai Penuh 65252, Papua', '2020-01-02 08:45:04', '2024-04-03 23:58:57'),
(52, 'Malika Cinta Pertiwi M.M.', 'Jln. Basuki No. 255, Pariaman 91726, Jateng', '1989-07-27 11:59:22', '2024-04-03 23:58:57'),
(53, 'Intan Mayasari S.Ked', 'Dk. Baik No. 380, Kediri 26403, Kaltara', '1980-04-18 15:35:07', '2024-04-03 23:58:57'),
(54, 'Janet Cindy Mandasari S.IP', 'Kpg. Madrasah No. 350, Pagar Alam 21864, Sumbar', '1997-04-30 02:05:43', '2024-04-03 23:58:57'),
(55, 'Lidya Novitasari M.Pd', 'Kpg. Diponegoro No. 285, Prabumulih 57682, DIY', '1991-04-13 05:21:47', '2024-04-03 23:58:57'),
(56, 'Umi Mulyani S.I.Kom', 'Dk. Baranang Siang No. 919, Tebing Tinggi 84612, Malut', '1985-06-05 21:25:16', '2024-04-03 23:58:57'),
(57, 'Koko Bagus Napitupulu S.IP', 'Jr. Dipenogoro No. 332, Bitung 99989, Sumut', '1979-02-07 08:38:59', '2024-04-03 23:58:57'),
(58, 'Zelda Riyanti S.Pd', 'Dk. Veteran No. 781, Bitung 15114, Jatim', '1988-03-13 02:14:43', '2024-04-03 23:58:57'),
(59, 'Irma Yuniar', 'Psr. Teuku Umar No. 118, Semarang 94577, Aceh', '1981-02-04 05:42:50', '2024-04-03 23:58:57'),
(60, 'Uchita Farida', 'Kpg. Sumpah Pemuda No. 5, Palu 83604, Kaltim', '1988-08-07 23:40:42', '2024-04-03 23:58:57'),
(61, 'Nalar Widodo', 'Gg. Supomo No. 708, Langsa 54300, Malut', '2010-11-30 00:02:07', '2024-04-03 23:58:57'),
(62, 'Wahyu Prasetya', 'Jr. Banal No. 333, Mataram 40141, Sulteng', '1984-10-26 15:49:38', '2024-04-03 23:58:57'),
(63, 'Zaenab Andriani', 'Gg. Bank Dagang Negara No. 371, Surabaya 20264, Sultra', '1989-10-02 01:08:54', '2024-04-03 23:58:57'),
(64, 'Baktiadi Marsito Zulkarnain', 'Ds. Jend. Sudirman No. 368, Palembang 92795, Sulbar', '1979-09-02 15:12:23', '2024-04-03 23:58:57'),
(65, 'Raisa Puput Mayasari S.I.Kom', 'Jr. Abdullah No. 586, Probolinggo 40213, Malut', '2022-07-18 18:02:39', '2024-04-03 23:58:57'),
(66, 'Genta Agustina', 'Psr. Gatot Subroto No. 204, Tanjungbalai 41938, Sulteng', '1979-06-22 17:57:06', '2024-04-03 23:58:57'),
(67, 'Kamidin Pandu Tampubolon', 'Gg. Thamrin No. 701, Tual 96630, Jateng', '1973-07-06 02:02:17', '2024-04-03 23:58:57'),
(68, 'Jane Mayasari', 'Psr. Ikan No. 665, Tangerang Selatan 67547, Jateng', '2024-02-24 03:47:34', '2024-04-03 23:58:57'),
(69, 'Diah Laksita', 'Dk. Pasir Koja No. 870, Salatiga 36831, Jabar', '1996-01-17 19:52:28', '2024-04-03 23:58:57'),
(70, 'Zamira Aryani', 'Kpg. Bakhita No. 795, Jayapura 19195, Aceh', '1978-07-24 22:35:29', '2024-04-03 23:58:57'),
(71, 'Gilang Haryanto', 'Dk. Antapani Lama No. 938, Tegal 44129, Babel', '1972-04-21 20:05:53', '2024-04-03 23:58:57'),
(72, 'Dadap Maryadi Kusumo', 'Psr. Tangkuban Perahu No. 576, Magelang 37775, Aceh', '1971-04-10 16:01:02', '2024-04-03 23:58:57'),
(73, 'Gasti Usada', 'Gg. Raya Ujungberung No. 325, Malang 14362, NTT', '2009-08-18 10:15:46', '2024-04-03 23:58:57'),
(74, 'Almira Oktaviani', 'Ki. Gajah Mada No. 100, Medan 47572, Sultra', '2014-01-05 19:30:17', '2024-04-03 23:58:57'),
(75, 'Nrima Hutagalung M.M.', 'Gg. Dr. Junjunan No. 395, Singkawang 63666, DKI', '2019-06-10 15:52:21', '2024-04-03 23:58:57'),
(76, 'Vanesa Vicky Kusmawati M.Pd', 'Kpg. Laksamana No. 223, Kotamobagu 49123, Bali', '1979-05-08 15:01:02', '2024-04-03 23:58:57'),
(77, 'Elisa Ratna Safitri', 'Psr. Kebangkitan Nasional No. 87, Administrasi Jakarta Utara 68218, Banten', '1976-08-18 19:27:39', '2024-04-03 23:58:57'),
(78, 'Wani Yuniar', 'Ds. Kalimantan No. 284, Sawahlunto 13105, Banten', '1995-07-18 22:18:56', '2024-04-03 23:58:57'),
(79, 'Anggabaya Putra', 'Jln. Bagis Utama No. 568, Medan 13319, Maluku', '1971-03-05 13:47:11', '2024-04-03 23:58:57'),
(80, 'Maman Santoso', 'Jln. Jend. Sudirman No. 593, Banda Aceh 21325, Malut', '1992-11-03 03:12:57', '2024-04-03 23:58:57'),
(81, 'Tina Intan Prastuti S.IP', 'Gg. Katamso No. 158, Cimahi 70120, Kalbar', '2012-10-04 19:21:43', '2024-04-03 23:58:57'),
(82, 'Belinda Ciaobella Nurdiyanti', 'Kpg. Arifin No. 89, Sabang 96885, Sulbar', '2007-03-24 00:52:49', '2024-04-03 23:58:57'),
(83, 'Catur Dadap Budiman S.I.Kom', 'Kpg. Rajawali No. 480, Tanjung Pinang 47951, Sulbar', '1989-09-25 14:34:08', '2024-04-03 23:58:57'),
(84, 'Kamaria Nurdiyanti', 'Ds. Banceng Pondok No. 587, Tanjungbalai 85722, Papua', '1994-08-16 11:22:48', '2024-04-03 23:58:57'),
(85, 'Bakianto Mahendra', 'Jr. Ki Hajar Dewantara No. 681, Bitung 60250, Lampung', '1989-02-25 11:01:14', '2024-04-03 23:58:57'),
(86, 'Banawa Utama', 'Jr. Kalimantan No. 447, Metro 71744, Malut', '1998-11-24 05:51:58', '2024-04-03 23:58:57'),
(87, 'Cemeti Habibi', 'Psr. Aceh No. 986, Administrasi Jakarta Timur 88397, Kaltim', '1992-05-04 12:54:25', '2024-04-03 23:58:57'),
(88, 'Dirja Pranowo S.Kom', 'Dk. Yosodipuro No. 472, Pangkal Pinang 87031, Riau', '2015-06-05 11:10:26', '2024-04-03 23:58:57'),
(89, 'Wulan Tiara Aryani S.Farm', 'Ki. Muwardi No. 965, Banjarbaru 56730, Riau', '1974-11-16 11:27:01', '2024-04-03 23:58:57'),
(90, 'Ulya Ophelia Hariyah', 'Ds. Teuku Umar No. 874, Tidore Kepulauan 24303, Papua', '2006-07-14 22:04:48', '2024-04-03 23:58:57'),
(91, 'Najwa Mulyani', 'Ds. Cokroaminoto No. 598, Administrasi Jakarta Barat 52582, Pabar', '2014-03-09 00:10:14', '2024-04-03 23:58:57'),
(92, 'Indra Thamrin S.E.I', 'Jr. Lumban Tobing No. 424, Banjarmasin 51128, Banten', '2016-10-13 02:53:08', '2024-04-03 23:58:57'),
(93, 'Surya Maheswara', 'Ds. Tambun No. 381, Bima 57483, Jambi', '1985-04-29 10:11:02', '2024-04-03 23:58:57'),
(94, 'Lembah Kusumo', 'Dk. Bhayangkara No. 673, Tarakan 61033, Jambi', '2015-11-05 03:26:41', '2024-04-03 23:58:57'),
(95, 'Samiah Ratih Widiastuti', 'Gg. Suharso No. 760, Bekasi 54875, Sulbar', '2016-07-09 09:55:50', '2024-04-03 23:58:57'),
(96, 'Sarah Padmasari', 'Ki. Banceng Pondok No. 302, Jambi 59528, Kaltara', '1992-04-28 13:34:21', '2024-04-03 23:58:57'),
(97, 'Farah Agnes Nurdiyanti M.TI.', 'Psr. Juanda No. 379, Payakumbuh 20880, Lampung', '1985-09-02 00:31:24', '2024-04-03 23:58:57'),
(98, 'Fathonah Wijayanti', 'Psr. Katamso No. 364, Administrasi Jakarta Timur 11274, Pabar', '2009-02-04 20:09:59', '2024-04-03 23:58:57'),
(99, 'Aris Salman Tarihoran', 'Ki. Moch. Toha No. 606, Palangka Raya 58310, Kalbar', '1972-11-27 19:45:30', '2024-04-03 23:58:57'),
(100, 'Fitriani Palastri S.Kom', 'Kpg. Balikpapan No. 15, Pangkal Pinang 73371, Aceh', '2012-11-30 15:40:28', '2024-04-03 23:58:57'),
(101, 'Unjani Elma Sudiati S.Ked', 'Dk. Labu No. 656, Administrasi Jakarta Barat 86992, Aceh', '2018-10-19 16:42:47', '2024-04-03 23:58:57'),
(102, 'Gadang Prabowo', 'Jln. Abdullah No. 340, Jambi 55189, Sumsel', '2012-08-05 11:34:01', '2024-04-03 23:58:57'),
(103, 'Michelle Maria Usada', 'Jln. Gajah No. 397, Palembang 52338, Jabar', '1995-04-14 08:53:11', '2024-04-03 23:58:57'),
(104, 'Luthfi Dongoran', 'Jr. Elang No. 773, Mojokerto 32039, DKI', '1985-10-07 15:38:41', '2024-04-03 23:58:57'),
(105, 'Nova Chelsea Lailasari S.Kom', 'Jr. Ters. Kiaracondong No. 944, Padang 92970, Malut', '1986-01-02 16:15:48', '2024-04-03 23:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komik`
--

CREATE TABLE `tb_komik` (
  `id` int(11) NOT NULL,
  `judul_komik` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_komik`
--

INSERT INTO `tb_komik` (`id`, `judul_komik`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Sword Art Online', 'sword-art-online', 'Reki Kawahara', 'clover', 'sao.jpg', '2024-03-08 04:49:42', '2024-03-24 23:37:43'),
(4, 'Wall-e', 'wall-e', 'Steve Jobs', 'Gramedia', 'hasan.jpg', NULL, NULL),
(5, 'Angel Beats', 'angel-beats', 'Jun Maeda', 'ASCII Media Works', 'annisa.jpg', NULL, NULL),
(6, 'Hataraku Maou-sama', 'hataraku-maou-sama', 'Satoshi Wagahara', 'ASCII Media Works', 'maou.jpg', NULL, NULL),
(13, 'Ruto', 'ruto', 'asdsa', 'sadsad', 'sadasda', '2024-03-19 20:31:02', '2024-03-20 00:25:22'),
(14, 'bismillah', 'bismillah', 'safdsfda', 'safdsf', '1711937932_834b83ce0580e6997aef.jpg', '2024-03-24 05:57:53', '2024-03-31 19:18:52'),
(17, 'udin', 'udin', 'udin petot', 'hasanudin', 'arnold_1.jpg', '2024-03-24 06:24:16', '2024-03-24 06:24:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_komik`
--
ALTER TABLE `tb_komik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tb_komik`
--
ALTER TABLE `tb_komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
