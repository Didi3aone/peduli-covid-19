-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09 Jun 2020 pada 00.40
-- Versi Server: 5.7.30-0ubuntu0.16.04.1
-- PHP Version: 7.3.18-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_peduli_covid_19`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_hit_count`
--

CREATE TABLE `api_hit_count` (
  `tipe` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid_informasi`
--

CREATE TABLE `covid_informasi` (
  `id` varchar(255) NOT NULL,
  `path_storage` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `covid_informasi`
--

INSERT INTO `covid_informasi` (`id`, `path_storage`, `category_id`, `filename`, `created_at`, `updated_at`, `created_by`, `updated_by`, `title`) VALUES
('046FEEC7-9A3C-4435-BC5A-CCF241A194D1', '/uploads/informasi/IMG-20200608-WA0024.jpg', 2, 'IMG-20200608-WA0024.jpg', '2020-06-09 00:28:38', '2020-06-09 00:28:38', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Protokol Transisi'),
('1DCC64F0-8B9F-4329-ACD4-3D5F20BAC243', '/uploads/informasi/Pergub_51_Tahun_2020_Tentang_Pelaksanaan_PSBB_Transisi_.pdf', 1, 'Pergub_51_Tahun_2020_Tentang_Pelaksanaan_PSBB_Transisi_.pdf', '2020-06-07 22:17:01', '2020-06-07 22:17:01', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Pergub 51 tahun 2020 tentang pelaksanaan PSBB Transisi'),
('3DA93A7F-D51D-41B7-9033-CD599723D134', '/uploads/informasi/WhatsApp_Image_2020-06-07_at_15.54.421.jpeg', NULL, 'WhatsApp_Image_2020-06-07_at_15.54.421.jpeg', '2020-06-07 09:14:10', '2020-06-07 09:14:10', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', ''),
('6CEBD090-824C-4A7B-9FE9-6B1097A43213', '/uploads/informasi/IMG-20200608-WA0025.jpg', 2, 'IMG-20200608-WA0025.jpg', '2020-06-09 00:28:54', '2020-06-09 00:28:54', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Protokol Transisi'),
('7B3BD0E3-A757-4003-A655-B073599D448B', '/uploads/informasi/432stemp.pdf', 1, '432stemp.pdf', '2020-06-09 00:33:57', '2020-06-09 00:33:57', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Jadwal Piket Pegawai Perumda Pembangunan Sarana Jaya'),
('A93AA3B7-3C49-4659-A8B7-02996B6C757E', '/uploads/informasi/IMG-20200608-WA0022.jpg', 2, 'IMG-20200608-WA0022.jpg', '2020-06-09 00:27:31', '2020-06-09 00:27:31', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Protokol Transisi'),
('D72D27F0-44EE-44D2-8575-C2730205FC88', '/uploads/informasi/IMG-20200608-WA0023.jpg', 2, 'IMG-20200608-WA0023.jpg', '2020-06-09 00:28:19', '2020-06-09 00:28:19', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Protokol Transisi'),
('ED4E37B0-6737-4E29-AC5B-53FA18D34760', '/uploads/informasi/431stemp.pdf', 1, '431stemp.pdf', '2020-06-09 00:32:23', '2020-06-09 00:32:23', 'kdjaksdkas2193821938921', '0000-00-00 00:00:00', 'Surat Edaran Direksi Sarana Jaya Pelaksanaan PSBB  Masa Transisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `covid_informasi_category`
--

CREATE TABLE `covid_informasi_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `covid_informasi_category`
--

INSERT INTO `covid_informasi_category` (`id`, `category`) VALUES
(1, 'Menu Peraturan Covid-19'),
(2, 'Protokol PSBB Transisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily_check_suhu`
--

CREATE TABLE `daily_check_suhu` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `suhu` varchar(10) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `ketentuan_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daily_check_suhu`
--

INSERT INTO `daily_check_suhu` (`id`, `user_id`, `suhu`, `check_date`, `ketentuan_id`, `created_at`, `updated_at`) VALUES
('02D0A698-5BC0-4DEB-91FE-B108FD65EC64', 'B3FF78AD-7C01-4277-8DD9-01A45322600D', '39', '2020-06-07 20:52:47', '0B05522C-D993-4D2E-81B7-19811B7E072C', '2020-06-07 20:52:47', '2020-06-07 20:52:47'),
('08AC62CE-552F-40C2-9A5E-EC8709AD44D0', 'B3FF78AD-7C01-4277-8DD9-01A45322600D', '38', '2020-06-07 12:50:28', '12541707-4662-4750-87E9-9DC4BE627F85', '2020-06-07 12:50:28', '2020-06-07 12:50:28'),
('20FD9542-A6D1-4223-861D-75FF8E47EEBB', 'B3FF78AD-7C01-4277-8DD9-01A45322600D', '36.6', '2020-06-07 12:20:25', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-07 12:20:25', '2020-06-07 12:20:25'),
('2D40C7F9-1CC2-4ECB-BD28-FDC5FD923C48', '33328DEF-083E-4165-9251-67F9B6FF67A0', '38', '2020-06-07 20:41:30', '43BC3F8A-6AE5-4E48-8DF0-E65B4D312707', '2020-06-07 20:41:30', '2020-06-07 20:41:30'),
('4153F087-3386-430C-8548-91C0795AA84C', '33328DEF-083E-4165-9251-67F9B6FF67A0', '36.6', '2020-06-07 20:24:47', '7AD2F028-8B0B-4C85-9950-4F8C1A5CF518', '2020-06-07 20:24:47', '2020-06-07 20:24:47'),
('41FDB380-BA9E-4706-B84E-4B96FCD60C4C', '33328DEF-083E-4165-9251-67F9B6FF67A0', '38', '2020-06-07 20:59:47', '43BC3F8A-6AE5-4E48-8DF0-E65B4D312707', '2020-06-07 20:59:47', '2020-06-07 20:59:47'),
('45157D35-BB26-4569-AE3A-2AFA6F9FDF82', '33328DEF-083E-4165-9251-67F9B6FF67A0', '35.6', '2020-06-07 19:39:30', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-07 19:39:30', '2020-06-07 19:39:30'),
('49D829AD-7A7F-4911-BAD4-61E6FB876414', 'B3FF78AD-7C01-4277-8DD9-01A45322600D', '35', '2020-06-08 00:12:05', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-08 00:12:05', '2020-06-08 00:12:05'),
('5998E90A-2E90-448E-B2D8-3C0EFC7C96E2', '33328DEF-083E-4165-9251-67F9B6FF67A0', '38', '2020-06-07 21:00:08', '43BC3F8A-6AE5-4E48-8DF0-E65B4D312707', '2020-06-07 21:00:08', '2020-06-07 21:00:08'),
('80FAEBB0-A591-49C7-8BE6-DDF8D8A4EF66', 'B3FF78AD-7C01-4277-8DD9-01A45322600D', '35', '2020-06-07 20:41:18', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-07 20:41:18', '2020-06-07 20:41:18'),
('9152362B-15E0-46BC-93A8-2782D6CB1B7D', '040D63D3-6C67-47BF-AB3D-C8E424039A0B', '39', '2020-06-08 00:08:22', '0B05522C-D993-4D2E-81B7-19811B7E072C', '2020-06-08 00:08:22', '2020-06-08 00:08:22'),
('965E08AF-4FCB-4201-950A-B8A88008EBE1', NULL, '35', '2020-06-07 12:06:18', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-07 12:06:18', '2020-06-07 12:06:18'),
('A304A298-FDDE-4AD9-BA3A-658DE950D308', '314CC8AE-86D5-4F45-A506-F659391A2AEB', '36', '2020-06-08 00:04:58', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-08 00:04:58', '2020-06-08 00:04:58'),
('A7E26F03-8D73-46F6-A1A8-352DA1BD81E6', '33328DEF-083E-4165-9251-67F9B6FF67A0', '40.9', '2020-06-07 20:47:09', '716D2979-3892-4029-AAB3-77601702FBD1', '2020-06-07 20:47:09', '2020-06-07 20:47:09'),
('B4EA909F-F2C9-4847-8158-E2495D590D97', '33328DEF-083E-4165-9251-67F9B6FF67A0', '2558', '2020-06-08 00:13:54', '716D2979-3892-4029-AAB3-77601702FBD1', '2020-06-08 00:13:54', '2020-06-08 00:13:54'),
('C7461F28-7161-49AF-B3CE-4D0EB1ECE7AE', '314CC8AE-86D5-4F45-A506-F659391A2AEB', '34.5', '2020-06-07 12:17:01', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-07 12:17:01', '2020-06-07 12:17:01'),
('CC6742C5-873E-4BA7-BCCD-4879573582D7', '314CC8AE-86D5-4F45-A506-F659391A2AEB', '36', '2020-06-07 12:19:38', 'ABF51543-0A71-478B-88BE-487A66A03CB5', '2020-06-07 12:19:38', '2020-06-07 12:19:38'),
('D653C819-2581-40AE-9973-D12F393C1559', 'B3FF78AD-7C01-4277-8DD9-01A45322600D', '38', '2020-06-07 20:40:02', '12541707-4662-4750-87E9-9DC4BE627F85', '2020-06-07 20:40:02', '2020-06-07 20:40:02'),
('EB789FE7-E543-481B-A99F-39B6166BA206', '33328DEF-083E-4165-9251-67F9B6FF67A0', '70.6', '2020-06-07 20:47:19', '716D2979-3892-4029-AAB3-77601702FBD1', '2020-06-07 20:47:19', '2020-06-07 20:47:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `name`) VALUES
(1, 'BOC'),
(2, 'BOD'),
(3, 'Direktorat Administrasi & Keuangan'),
(4, 'Direktorat Pengembangan'),
(5, 'Divisi Keuangan & Akuntansi'),
(6, 'Divisi Pertanahan & Hukum'),
(7, 'Divisi Umum & SDM'),
(8, 'Divisi Usaha'),
(9, 'Saranawisesa Properindo'),
(10, 'Satuan Pengawas Intern'),
(11, 'Sub Divisi Akuntansi & Anggaran'),
(12, 'Sub Divisi Hukum'),
(13, 'Sub Divisi Umum'),
(14, 'Sub Unit Pemasaran'),
(15, 'Unit Bisnis  Inovasi & Rintisan'),
(16, 'Unit Layanan Pengadaan'),
(17, 'Unit Pemasaran & Pengelolaan Aset'),
(18, 'Unit Perencanaan & Pembangunan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketentuan`
--

CREATE TABLE `ketentuan` (
  `id` varchar(255) NOT NULL,
  `suhu_start` varchar(20) DEFAULT NULL,
  `logic` varchar(10) DEFAULT NULL,
  `suhu_end` varchar(20) DEFAULT NULL,
  `zona_status_id` int(11) DEFAULT NULL,
  `rekomendasi` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ketentuan`
--

INSERT INTO `ketentuan` (`id`, `suhu_start`, `logic`, `suhu_end`, `zona_status_id`, `rekomendasi`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
('0B05522C-D993-4D2E-81B7-19811B7E072C', '38.2', '>', '', 1, 'Tidak wajib bekerja dan Periksa kedokter', '2020-06-07 03:09:42', '2020-06-07 03:09:42', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('12541707-4662-4750-87E9-9DC4BE627F85', '37.2', '-', '38.2', 1, 'Bekerja dirumah', '2020-06-07 03:07:48', '2020-06-07 06:46:44', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', 'kdjaksdkas2193821938921'),
('23998928-303C-461B-A84D-B0BE23148D94', '37.2', '-', '38.2', 3, 'Bekerja dirumah', '2020-06-07 03:08:03', '2020-06-07 06:46:36', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', 'kdjaksdkas2193821938921'),
('43BC3F8A-6AE5-4E48-8DF0-E65B4D312707', '37.2', '-', '38.2', 2, 'Bekerja dirumah dan isolasi mandiri', '2020-06-07 03:08:16', '2020-06-07 06:46:24', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', 'kdjaksdkas2193821938921'),
('716D2979-3892-4029-AAB3-77601702FBD1', '38.2', '>', '', 2, 'Tidak wajib bekerja dan Periksa kedokter', '2020-06-07 03:10:03', '2020-06-07 03:10:03', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('746989F0-339F-4B4A-A5F7-01FD89FCC945', '38.2', '>', '', 3, 'Tidak wajib bekerja dan Periksa kedokter', '2020-06-07 03:10:14', '2020-06-07 03:10:14', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7AD2F028-8B0B-4C85-9950-4F8C1A5CF518', '34.5', '-', '37.2', 2, 'Bekerja dikantor', '2020-06-07 03:06:49', '2020-06-07 03:06:49', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8E1958CA-927C-4C7C-9E10-5AC64319EDDB', '40', '>', '', 2, 'enak dirumah aja yoi', '2020-06-07 07:35:14', '2020-06-07 07:36:04', 'kdjaksdkas2193821938921', 'kdjaksdkas2193821938921'),
('ABF51543-0A71-478B-88BE-487A66A03CB5', '34.5', '-', '37.2', 1, 'Bekerja dikantor', '2020-06-07 03:05:52', '2020-06-07 03:05:52', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BD58772D-81A4-4F6E-AEE3-B556C010D4D7', '34.5', '-', '37.2', 3, 'Bekerja dikantor', '2020-06-07 03:06:40', '2020-06-07 03:06:40', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` varchar(255) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
('04B4032C-4E33-4C51-8598-71B8B14DC3B2', 'ADMIN'),
('069729EB-7070-4AA5-BFB4-461CAA322D0C', 'USER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `employee_id` varchar(10) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `divisi` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tempat_tinggal` text,
  `transportasi_normal` varchar(100) DEFAULT NULL,
  `transportasi_wfh` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `role_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `employee_id`, `fullname`, `divisi`, `username`, `password`, `tempat_tinggal`, `transportasi_normal`, `transportasi_wfh`, `created_at`, `updated_at`, `is_active`, `role_id`) VALUES
('02793020-88BA-46F0-A06E-D9EEBE6043C2', '0218', 'Charoline S. Panjaitan', 'Unit Pemasaran & Pengelolaan Aset', 'charoline_s._panjaitan', '81dc9bdb52d04dc20036dbd8313ed055', 'Cipayung', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('037E9441-B016-49ED-869C-1D1EF17B36BE', '0276', 'Harwin Utama Tenggano', 'Unit Perencanaan & Pembangunan', 'harwin_utama_tenggano', '81dc9bdb52d04dc20036dbd8313ed055', 'Maphar', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('040D63D3-6C67-47BF-AB3D-C8E424039A0B', '0138', 'Sri Lestari', 'Divisi Umum & SDM', 'sri_lestari', '81dc9bdb52d04dc20036dbd8313ed055', 'Jaka Setia', 'Mobil', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('04648248-C4A8-47C9-ABBB-C6CEE69C359B', '9296', 'Jovita Calista Romauli S', 'Divisi Usaha', 'jovita_calista_romauli_s', '81dc9bdb52d04dc20036dbd8313ed055', 'Pengadegan', 'mobil', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('08FF7194-BAA2-4F9A-BE7D-D7F52B37970D', '9298', 'Feri Kasiaman Sinaga', 'Unit Pemasaran & Pengelolaan Aset', 'feri_kasiaman_sinaga', '81dc9bdb52d04dc20036dbd8313ed055', 'Pekayon Jaya', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0B80ED86-4EFD-4256-BA3C-BEE9C0082301', '0230', 'Kristianto Prabowo', 'Unit Perencanaan & Pembangunan', 'kristianto_prabowo', '81dc9bdb52d04dc20036dbd8313ed055', 'Pamulang Barat', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0D8BA405-80D4-40FE-9D0F-FE28C8AAC72A', '9286', 'Reza Dwipa Sandhi', 'Unit Perencanaan & Pembangunan', 'reza_dwipa_sandhi', '81dc9bdb52d04dc20036dbd8313ed055', 'Bojong', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('17A2EEB4-F659-43D8-A8DF-E777952C351F', '0235', 'Sylvia Ummah', 'Unit Perencanaan & Pembangunan', 'sylvia_ummah', '81dc9bdb52d04dc20036dbd8313ed055', 'harapan Mulya', 'kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1B48052B-25DB-4622-A196-07E1BEC63BAD', '0181', 'Sarmili', 'Divisi Keuangan & Akuntansi', 'sarmili', '81dc9bdb52d04dc20036dbd8313ed055', 'Cibadak', 'Mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1CCA9C49-61FF-42EE-8BF8-AEE11E5404CF', '0146', 'Slamet Riyanto', 'Divisi Usaha', 'slamet_riyanto', '81dc9bdb52d04dc20036dbd8313ed055', 'Sukamaju', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1EFAC118-A170-4CC1-9410-3F0BD1D4EE10', '0257', 'Rr. Sri Yulianita Rianti', 'Divisi Umum & SDM', 'rr._sri_yulianita_rianti', '81dc9bdb52d04dc20036dbd8313ed055', 'Mampang', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1F154A7C-5E06-4782-B2A2-83EF54FA4704', '0163', 'Edih', 'Divisi Umum & SDM', 'edih', '81dc9bdb52d04dc20036dbd8313ed055', 'Cengkareng', 'Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('23E7BAF2-60DA-44F0-843F-F53616345B8A', '0166', 'Slamet Santoso', 'Divisi Pertanahan & Hukum', 'slamet_santoso', '81dc9bdb52d04dc20036dbd8313ed055', 'Mangga Besar', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('27FB93A3-CC78-4BAA-9669-4288A7F4CE24', '0252', 'Nur Maritsa Khamidy', 'Unit Perencanaan & Pembangunan', 'nur_maritsa_khamidy', '81dc9bdb52d04dc20036dbd8313ed055', 'Petojo Selatan', 'jalan kaki', 'Jalan Kaki', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('2E5B42F9-AB8D-42FC-87F8-8A3791F5704A', '1007', 'Dariah', 'BOC', 'dariah', '81dc9bdb52d04dc20036dbd8313ed055', 'Lambang Sari', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('2EC739A6-D5A1-4665-AB4A-6B06F0F56157', '0245', 'Jeri Jismilatif', 'Unit Perencanaan & Pembangunan', 'jeri_jismilatif', '81dc9bdb52d04dc20036dbd8313ed055', 'Pejaten barat', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('314CC8AE-86D5-4F45-A506-F659391A2AEB', '0261', 'Farsiana Andini', 'Divisi Keuangan & Akuntansi', 'farsiana_andini', '81dc9bdb52d04dc20036dbd8313ed055', 'Pasar Minggu', 'mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('32EB44A7-A8FA-407A-9913-0101C0B7C2C3', '0251', 'Choirunnisa Mutiah', 'Unit Perencanaan & Pembangunan', 'choirunnisa_mutiah', '81dc9bdb52d04dc20036dbd8313ed055', 'Petojo Selatan', 'jalan kaki', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('33328DEF-083E-4165-9251-67F9B6FF67A0', '0176', 'Yadi Robby', 'Divisi Pertanahan & Hukum', 'yadi_robby', '81dc9bdb52d04dc20036dbd8313ed055', 'Cempaka PutihBarat', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3357CAAB-6C70-457B-8D42-A02FC1D2817A', '9281', 'Putri Isabel', 'Divisi Usaha', 'putri_isabel', '81dc9bdb52d04dc20036dbd8313ed055', 'Tomang', 'Ojek online', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('337DA264-A5DA-4460-A7EE-C41995E394DB', '001', 'Yoory C. Pinontoan', 'BOD', 'yoory_c._pinontoan', '81dc9bdb52d04dc20036dbd8313ed055', 'Serpong', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('357EE8A8-8EB1-4BBC-B239-99AF596984DF', '0256', 'Afniyanti', 'Divisi Pertanahan & Hukum', 'afniyanti', '81dc9bdb52d04dc20036dbd8313ed055', 'Kedoya', 'motor', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('39BCCA29-34A8-4A80-892D-45DCB5CC3822', '0246', 'Amalia Fattimah', 'Divisi Usaha', 'amalia_fattimah', '81dc9bdb52d04dc20036dbd8313ed055', 'Pasar Minggu', 'kereta', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3CAC2446-748A-4457-AD01-AC7C2217E2C0', '0269', 'Alicia Teresa', 'Divisi Pertanahan & Hukum', 'alicia_teresa', '81dc9bdb52d04dc20036dbd8313ed055', 'Pondok Kelapa', 'kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3E23120A-3BEE-4ABB-A965-65E9A8AC8426', '9275', 'Gerry Prastia', 'Unit Bisnis  Inovasi & Rintisan', 'gerry_prastia', '81dc9bdb52d04dc20036dbd8313ed055', 'Warakas', '', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3F5B87D4-C4BE-441D-AAFE-F33D624D84C3', '0265', 'Dhea Juliani Puteri', 'Divisi Umum & SDM', 'dhea_juliani_puteri', '81dc9bdb52d04dc20036dbd8313ed055', 'Kayu Putih', 'Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('44526339-3F44-450A-98BC-BB3F226D7BA8', '9283', 'Labibah Zai', 'Unit Pemasaran & Pengelolaan Aset', 'labibah_zai', '81dc9bdb52d04dc20036dbd8313ed055', 'Paseban', 'motor', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('47FCEC07-D66D-4BB2-A417-E7D4804FDE03', '0187', 'Asep Firdaus Risnandar', 'Divisi Keuangan & Akuntansi', 'asep_firdaus_risnandar', '81dc9bdb52d04dc20036dbd8313ed055', 'Kelapa Dua Wetan', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('48043ADA-E99A-4C7A-9FD7-D867C2DB4255', '1001', 'Nurdin Sobari', 'BOC', 'nurdin_sobari', '81dc9bdb52d04dc20036dbd8313ed055', 'Rawamangun', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('48DBF198-F9AD-483C-B557-55CFB967C78A', '0262', 'Erik Raharjo Pasaribu', 'Unit Perencanaan & Pembangunan', 'erik_raharjo_pasaribu', '81dc9bdb52d04dc20036dbd8313ed055', 'Sukapura', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4A01E2B5-B81A-43C5-87B6-D70874D064C8', '0275', 'Sukmawati Agustina', 'Unit Layanan Pengadaan', 'sukmawati_agustina', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebon Jeruk', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4BB7C221-A234-435C-AEC3-37D0F12510E8', '0267', 'Tomy Suhartanto', 'Unit Bisnis  Inovasi & Rintisan', 'tomy_suhartanto', '81dc9bdb52d04dc20036dbd8313ed055', 'Utan Kayu Selatan', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4DBC92C8-2846-4F98-8B1E-7A4CA8D6602C', '1002', 'Hasreiza', 'BOC', 'hasreiza', '81dc9bdb52d04dc20036dbd8313ed055', 'Pisangan', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4F4ECF6D-8924-4665-95CB-B1D475D54813', '0242', 'Maulina Wulansari', 'Divisi Usaha', 'maulina_wulansari', '81dc9bdb52d04dc20036dbd8313ed055', 'Ciangsana', 'bus', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5057F7F2-84BA-45BC-95A6-C6A5CE578163', '0167', 'Suradi', 'Divisi Umum & SDM', 'suradi', '81dc9bdb52d04dc20036dbd8313ed055', 'Tugu', 'Mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5272F480-D774-4A77-8956-86BCB16D3BEB', '9294', 'Henny Herdianti', 'Unit Perencanaan & Pembangunan', 'henny_herdianti', '81dc9bdb52d04dc20036dbd8313ed055', 'Kampung rawa', 'Ojek online', 'Transportasi Umum (Ojeg Langganan)', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('52B2B895-71C0-4F41-BC00-7E2C57FB867D', '9287', 'Yosua Vincencius Harefa', 'Divisi Usaha', 'yosua_vincencius_harefa', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebon pala', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('55630821-7EA5-43B1-B383-9668CCF87978', 'Dummy10', 'Raden Mirza Aldi Pamungkas', 'Direktorat Pengembangan', 'raden_mirza_aldi_pamungkas', '81dc9bdb52d04dc20036dbd8313ed055', 'Cibubur', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('55A1221B-FABF-4316-A277-F0C4C5DC5240', '0129', 'Prabowo', 'Saranawisesa Properindo', 'prabowo', '81dc9bdb52d04dc20036dbd8313ed055', 'Ciluar', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('55F78D87-82A8-48A8-AFAD-1B45D1035E21', '0195', 'Mirna Maria Bacas', 'Divisi Usaha', 'mirna_maria_bacas', '81dc9bdb52d04dc20036dbd8313ed055', 'Tirta jaya', 'kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('56365DB8-2D7B-44FA-A304-627287412F80', '0255', 'Winda Saraswati', 'Unit Layanan Pengadaan', 'winda_saraswati', '81dc9bdb52d04dc20036dbd8313ed055', 'Duren Sawit', 'transjakarta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('573BC15F-C317-4BBB-AF9A-C8FF5AF2DA18', '0215', 'Deddy Purwanto', 'Unit Pemasaran & Pengelolaan Aset', 'deddy_purwanto', '81dc9bdb52d04dc20036dbd8313ed055', 'Jati makmur', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('59D75B3D-FE96-4A8E-B260-CA6C11B6F2FE', '1005', 'Tritoto', 'BOC', 'tritoto', '81dc9bdb52d04dc20036dbd8313ed055', 'Ciparigi', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5A0A2E93-5706-49C1-B611-C5EACCCD03E0', '0266', 'Yuliana Paminto', 'Unit Perencanaan & Pembangunan', 'yuliana_paminto', '81dc9bdb52d04dc20036dbd8313ed055', 'Menteng dalam', 'ojek online', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5B462D2D-E07F-4745-A68F-5A3D350C6C13', '0221', 'Bayu Wahyudiono, S.T', 'Divisi Pertanahan & Hukum', 'bayu_wahyudiono,_s.t', '81dc9bdb52d04dc20036dbd8313ed055', 'Grogol', 'transjakarta/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5BB1EA99-3A1B-4902-A5BF-F16D86C0B1D2', '0247', 'Rachmat Nuryadin', 'Satuan Pengawas Intern', 'rachmat_nuryadin', '81dc9bdb52d04dc20036dbd8313ed055', 'Pisangan Timur', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('607619AD-6346-44AF-8618-928FA0A57E47', '9290', 'Muhammad Fattah', 'Unit Perencanaan & Pembangunan', 'muhammad_fattah', '81dc9bdb52d04dc20036dbd8313ed055', 'Pengadegan', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('62D9D999-100D-4817-AA16-5A07C4F0AAC7', '0158', 'Wasito', 'Satuan Pengawas Intern', 'wasito', '81dc9bdb52d04dc20036dbd8313ed055', 'Kalibata', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('65B6C2E4-1AB5-4141-BF0F-9F65E64374E9', '0136', 'Ronald Batubara', 'Saranawisesa Properindo', 'ronald_batubara', '81dc9bdb52d04dc20036dbd8313ed055', 'Tebet', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('669B2604-6291-469F-9C6E-5783F13621E1', '0272', 'Daniel Kolompoy', 'Divisi Keuangan & Akuntansi', 'daniel_kolompoy', '81dc9bdb52d04dc20036dbd8313ed055', 'Dukuh', 'transjakarta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('67114267-1A66-4A8F-95AA-E7BB93990CCF', '0249', 'Hilmi Zakiri', 'Divisi Umum & SDM', 'hilmi_zakiri', '81dc9bdb52d04dc20036dbd8313ed055', 'Tegal Gundil', 'Kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6886AB72-4242-4407-B932-90E4A2F26957', 'Dummy04', 'Adi Permana', 'Direktorat Pengembangan', 'adi_permana', '81dc9bdb52d04dc20036dbd8313ed055', 'Cibodasari', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('688BC651-A803-4DE2-B14C-D6C8A6EAEFC9', '0280', 'Wahyu Yulianto', 'Unit Perencanaan & Pembangunan', 'wahyu_yulianto', '81dc9bdb52d04dc20036dbd8313ed055', 'Banjar Waru', 'mobil/bus', 'Kendaraan Umum (Transjakarta)', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('69713CEC-4534-4647-B3B3-29B45A00CABA', '0200', 'Reni Indah Etikasari', 'Unit Pemasaran & Pengelolaan Aset', 'reni_indah_etikasari', '81dc9bdb52d04dc20036dbd8313ed055', 'Pulo Jahe', 'transjakarta', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6A31EF8F-2B4F-4691-B1B0-BC1B858DBFCA', '0253', 'Wahyu Idris', 'Unit Perencanaan & Pembangunan', 'wahyu_idris', '81dc9bdb52d04dc20036dbd8313ed055', 'Kemiri Muka', 'kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6AC9528A-79C7-4DC3-ADB0-0D26C62D378E', '1003', 'Taridi Kasbi Ridho', 'BOC', 'taridi_kasbi_ridho', '81dc9bdb52d04dc20036dbd8313ed055', 'Sardonoharjo', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6B535B83-79DB-45B1-A8DD-12F013D1AAE4', '0217', 'Toni', 'Unit Pemasaran & Pengelolaan Aset', 'toni', '81dc9bdb52d04dc20036dbd8313ed055', 'Rawa Panjang', 'motor/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6CE4A1F7-BF5F-4C5A-B1E6-794846667C8C', '0244', 'Islani', 'Divisi Keuangan & Akuntansi', 'islani', '81dc9bdb52d04dc20036dbd8313ed055', 'Pengasingan', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6FE21852-C320-40C8-8FC6-CB1181343526', 'Dummy01', 'Aura Akhman', 'Direktorat Administrasi & Keuangan', 'aura_akhman', '81dc9bdb52d04dc20036dbd8313ed055', 'Gunung', '', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7086ACE6-0F83-47AE-A5E8-F3982C43197A', '0237', 'Anisa Tri Wahyuni', 'Divisi Umum & SDM', 'anisa_tri_wahyuni', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebon Jeruk', 'Mobil/Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('70C2406F-2D87-4615-83EE-7DF65C3BFAC1', '9280', 'Jemmy Handrianus', 'Unit Pemasaran & Pengelolaan Aset', 'jemmy_handrianus', '81dc9bdb52d04dc20036dbd8313ed055', 'Gandaria Utara', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('71055A91-5E6A-481B-BC2B-B8AE51EF63D9', '0243', 'Mohamad Wahyudi Hidayat', 'Divisi Keuangan & Akuntansi', 'mohamad_wahyudi_hidayat', '81dc9bdb52d04dc20036dbd8313ed055', 'Pisangan Baru', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7145C180-D657-4A00-BC15-3E8B091FBFD9', '0254', 'Bunga Rosalia', 'Divisi Keuangan & Akuntansi', 'bunga_rosalia', '81dc9bdb52d04dc20036dbd8313ed055', 'Petojo Utara', 'jalan kaki', 'Jalan Kaki', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7704C092-CC88-4261-AA6A-D62ED0DFF8DA', '0140', 'Ferra Ferdiyanti', 'Satuan Pengawas Intern', 'ferra_ferdiyanti', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebon Baru', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('77823A8E-68CD-4B79-9A46-B1DA667F917C', '9295', 'Muhamad Fandi Firdaus', 'Unit Perencanaan & Pembangunan', 'muhamad_fandi_firdaus', '81dc9bdb52d04dc20036dbd8313ed055', 'Susukan', 'mobil/motor', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('77E4EE5B-A64F-4D3A-97E3-0FE1921CB918', '0193', 'Dian Wahyuni', 'Divisi Umum & SDM', 'dian_wahyuni', '81dc9bdb52d04dc20036dbd8313ed055', 'Pisangan Timur', 'Ojek online', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('77F9C93C-E288-46FD-A3A9-EE630C2CB2B6', '0278', 'Muhammad Alfarisi', 'Divisi Pertanahan & Hukum', 'muhammad_alfarisi', '81dc9bdb52d04dc20036dbd8313ed055', 'Kalibata', 'mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('797F4176-CC6A-422B-B3EE-911E221905EA', '0234', 'Chandra Andhika Putra', 'Divisi Usaha', 'chandra_andhika_putra', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebon Melati', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7E9DD5EE-66F4-4243-A222-0C5272EE1072', 'Dummy09', 'Dimas Numan Fadhil', 'Direktorat Pengembangan', 'dimas_numan_fadhil', '81dc9bdb52d04dc20036dbd8313ed055', 'Kedung waringin', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('86DFFF2E-B066-4CD7-B57D-D2D05F5EA4F7', '0240', 'Maulana Rizaldi', 'Unit Pemasaran & Pengelolaan Aset', 'maulana_rizaldi', '81dc9bdb52d04dc20036dbd8313ed055', 'Aren Jaya', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8B36001C-AE09-44D7-8B9C-3F406C1629A7', '9289', 'Silmi Mardiatusholihah', 'Unit Layanan Pengadaan', 'silmi_mardiatusholihah', '81dc9bdb52d04dc20036dbd8313ed055', 'Petojo Selatan', 'jalan kaki', 'Jalan Kaki', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8BE47F61-BA9E-4878-9EB3-4F693684AD11', '0203', 'Yulianto Pamungkas', 'Divisi Pertanahan & Hukum', 'yulianto_pamungkas', '81dc9bdb52d04dc20036dbd8313ed055', 'Susukan', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8FBD12DC-A29B-4C64-AE2C-A9E6CF887F91', '0279', 'Annisa Dewi Ayu', 'Divisi Umum & SDM', 'annisa_dewi_ayu', '81dc9bdb52d04dc20036dbd8313ed055', 'Raga Jaya', 'Mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('929BA145-4FC6-41E1-B602-76BC0E1E5B3E', '0258', 'Keren', 'Divisi Umum & SDM', 'keren', '81dc9bdb52d04dc20036dbd8313ed055', 'Klender', 'Ojek online', 'Transportasi Umum (Ojeg Langganan)', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('95320B0F-D27A-4D56-B041-DE024FD6C700', '0263', 'Yohanna Fanyuli Theodora', 'Divisi Usaha', 'yohanna_fanyuli_theodora', '81dc9bdb52d04dc20036dbd8313ed055', 'Jati Kramat', 'kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('95B98261-5A67-4C20-84A1-4E777EB09678', '0232', 'Firyal Oktaviyanti', 'Divisi Keuangan & Akuntansi', 'firyal_oktaviyanti', '81dc9bdb52d04dc20036dbd8313ed055', 'Kayu Putih', 'Ojek online', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('97EEE456-E23D-4FA5-96C2-3D04A44E0AA4', 'Dummy11', 'Bramastra Saktyawan Prabowo', 'Direktorat Pengembangan', 'bramastra_saktyawan_prabowo', '81dc9bdb52d04dc20036dbd8313ed055', 'Selong', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('9959E4FA-A90F-47C9-B70A-7233B5585D34', '0206', 'Deni Ismaya', 'Unit Layanan Pengadaan', 'deni_ismaya', '81dc9bdb52d04dc20036dbd8313ed055', 'Karanggan', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('99A068F3-F5B8-4CC3-90F9-C210D8BCC9F7', '1004', 'Irwan', 'BOC', 'irwan', '81dc9bdb52d04dc20036dbd8313ed055', 'Rawa lumbu', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('9B0DC614-5CD2-469C-A87E-6A0D0F9539AC', '0220', 'Windar Rakhman Akbar', 'Divisi Pertanahan & Hukum', 'windar_rakhman_akbar', '81dc9bdb52d04dc20036dbd8313ed055', 'Bantarjati', 'mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('9E8CFA03-82CC-454B-9AE3-6436081342CC', '002', 'Bima Priya Santosa', 'BOD', 'bima_priya_santosa', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebayoran Lama Selatan', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A22D9839-5F10-4137-9DAC-1E9E0E4F7339', '9297', 'Achmad Fahrul Rozi', 'Unit Layanan Pengadaan', 'achmad_fahrul_rozi', '81dc9bdb52d04dc20036dbd8313ed055', 'Pancoran', 'Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A3B81098-B974-4A4C-BA13-0D92E55733C9', '0248', 'Helmy Azis', 'Unit Perencanaan & Pembangunan', 'helmy_azis', '81dc9bdb52d04dc20036dbd8313ed055', 'Ratujaya', 'kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A4B4CD88-6D78-40EE-AEB3-C0A6A874C429', '0236', 'Henriko Ganesha Putra', 'Divisi Usaha', 'henriko_ganesha_putra', '81dc9bdb52d04dc20036dbd8313ed055', 'Kopo', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A7479CA1-2B1D-457E-B746-389804A5133A', '0153', 'Arben Bastari Harahap', 'Saranawisesa Properindo', 'arben_bastari_harahap', '81dc9bdb52d04dc20036dbd8313ed055', 'Mekarjaya', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('AC604D4B-3B82-48A0-8DE7-9D45DAF9852A', '0205', 'Ratu Ekky Zakiyyah', 'Satuan Pengawas Intern', 'ratu_ekky_zakiyyah', '81dc9bdb52d04dc20036dbd8313ed055', 'Cempaka PutihTimur', 'Taksi/Ojek online', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('AFC2ACDD-D31C-4B9C-9A49-8CEB814D86E1', '0268', 'Reynaldi Ahmad Juliawan', 'Divisi Usaha', 'reynaldi_ahmad_juliawan', '81dc9bdb52d04dc20036dbd8313ed055', 'Cengkareng', 'transjakarta', 'Transportasi Umum (Transjakarta)', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B21EA145-E6AE-4F25-BBCE-108030315E3B', '0154', 'Rachmat Taufik', 'Unit Layanan Pengadaan', 'rachmat_taufik', '81dc9bdb52d04dc20036dbd8313ed055', 'Bintara Jaya', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B3FF78AD-7C01-4277-8DD9-01A45322600D', '0227', 'Wahyu Kharisma Putra', 'Divisi Umum & SDM', 'wahyu_kharisma_putra', '3f67fd97162d20e6fe27748b5b372509', 'Kranji', 'mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B490866B-FABA-4CAE-B972-4CACEC7B8A1A', '0270', 'Hary Kresna', 'Satuan Pengawas Intern', 'hary_kresna', '81dc9bdb52d04dc20036dbd8313ed055', 'Wisma Asri', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B560A518-9E5B-41A0-9039-B6BCC2CC7A74', '0212', 'Anton', 'Divisi Umum & SDM', 'anton', '81dc9bdb52d04dc20036dbd8313ed055', 'Waringin Jaya', 'Kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B6A9481E-A1D3-4BF6-AAD4-283D1E945F9F', '0171', 'Ririn Nurul Jannah', 'Saranawisesa Properindo', 'ririn_nurul_jannah', '81dc9bdb52d04dc20036dbd8313ed055', 'Cibubur', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B8F2DF6D-8ED8-4720-B1D0-5FF9D3986A9A', '0222', 'Rito', 'Divisi Umum & SDM', 'rito', '81dc9bdb52d04dc20036dbd8313ed055', 'Mekar Jaya', 'Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B9067F78-686E-4345-8220-C499A0D45330', '0231', 'Yulia Afifah Noerjanah', 'Divisi Umum & SDM', 'yulia_afifah_noerjanah', '81dc9bdb52d04dc20036dbd8313ed055', 'Tirta jaya', 'Mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B934C7E2-AC08-47EE-8C1E-977FFC4B055C', '0210', 'Jumadi', 'Divisi Keuangan & Akuntansi', 'jumadi', '81dc9bdb52d04dc20036dbd8313ed055', 'Teluk Pucung', 'motor/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BC333E85-2433-4777-8498-B01967303D6F', '1009', 'Reisa Bunga', 'BOC', 'reisa_bunga', '81dc9bdb52d04dc20036dbd8313ed055', 'Mekar Bakti', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BFA44993-9A46-4A5F-911D-1780D3953F0A', '0225', 'Wahyudi', 'Divisi Umum & SDM', 'wahyudi', '81dc9bdb52d04dc20036dbd8313ed055', 'Pondok Kelapa', 'Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C0E09BC6-EDBD-441B-9CC8-D518D065B013', '0219', 'Zulfictar Reza Pahley', 'Divisi Keuangan & Akuntansi', 'zulfictar_reza_pahley', '81dc9bdb52d04dc20036dbd8313ed055', 'Poris Plawad', 'Mobil/Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C116C9F2-B56E-48AD-9800-800146AFE565', '0204', 'Yayan Sudiana', 'Divisi Pertanahan & Hukum', 'yayan_sudiana', '81dc9bdb52d04dc20036dbd8313ed055', 'KembanganSelatan', 'Ojek online', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C1B1A27B-279B-4F19-9969-F1EDB7D86D13', '9284', 'Septa Risnanti', 'Divisi Keuangan & Akuntansi', 'septa_risnanti', '81dc9bdb52d04dc20036dbd8313ed055', 'Puspanegara', 'bus', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C207FAFF-78AA-4C12-9545-FFEB40ABC1C6', '0202', 'Farouk Maurice Arzby', 'Divisi Usaha', 'farouk_maurice_arzby', '81dc9bdb52d04dc20036dbd8313ed055', 'Jati Mulya', 'motor/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C43FD2C6-1CFD-488F-A715-3A5BBEC16FFF', '9272', 'Alkasjah', 'Divisi Pertanahan & Hukum', 'alkasjah', '81dc9bdb52d04dc20036dbd8313ed055', 'Kebon Jeruk', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C5550CCB-E815-45CD-91E7-DBC116B2A0C4', '0131', 'Supriyatno', 'Divisi Umum & SDM', 'supriyatno', '81dc9bdb52d04dc20036dbd8313ed055', 'Kayumanis', 'Mobil/Motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C5C94718-55B6-49C2-9B52-83CA14719973', '0226', 'I Gede Aldi Pradana', 'Divisi Pertanahan & Hukum', 'i_gede_aldi_pradana', '81dc9bdb52d04dc20036dbd8313ed055', 'Waringin Jaya', 'mobil/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C5F9E9AD-F5C0-49AE-8C20-846876E7C2A4', '1006', 'M.Wahyudi', 'BOC', 'm.wahyudi', '81dc9bdb52d04dc20036dbd8313ed055', 'Sentul', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C7065193-36C0-4B6A-B0B2-6B89AF595B65', '0274', 'Uswatun Hasanah', 'Unit Perencanaan & Pembangunan', 'uswatun_hasanah', '81dc9bdb52d04dc20036dbd8313ed055', 'Grogol', 'ojek online', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C828A455-340B-46B6-84D4-4529D33FAA42', '0229', 'Nuryadi', 'Divisi Keuangan & Akuntansi', 'nuryadi', '81dc9bdb52d04dc20036dbd8313ed055', 'Sudimara Timur', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C84264B2-539D-4E79-8EDE-0FD19B950C42', '9285', 'Tika Sarah Permata', 'Divisi Umum & SDM', 'tika_sarah_permata', '81dc9bdb52d04dc20036dbd8313ed055', 'Koja', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('CCE00BC4-0FCD-48A0-B45A-975FDFB5179A', '0264', 'Donni Setiawan Simanihuruk', 'Divisi Usaha', 'donni_setiawan_simanihuruk', '81dc9bdb52d04dc20036dbd8313ed055', 'Kalisari', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('CECD463D-0851-408D-BE67-86500691520D', '0233', 'Kartika Ayu Agustina', 'Unit Perencanaan & Pembangunan', 'kartika_ayu_agustina', '81dc9bdb52d04dc20036dbd8313ed055', 'Gandaria Utara', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D3D12CA9-9B83-4608-8D34-34B6BB8285BE', '0190', 'Heriansyah', 'Unit Pemasaran & Pengelolaan Aset', 'heriansyah', '81dc9bdb52d04dc20036dbd8313ed055', 'Tugu', 'motor/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DA4887F4-8890-452E-B110-F61B0A76A5F1', '0250', 'Reza Wahyuherma', 'Unit Perencanaan & Pembangunan', 'reza_wahyuherma', '81dc9bdb52d04dc20036dbd8313ed055', 'Pejaten Timur', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DAAE8DD9-3C7E-4729-837A-EB43B138B994', 'Dummy02', 'Bambang Setiyono', 'Direktorat Administrasi & Keuangan', 'bambang_setiyono', '81dc9bdb52d04dc20036dbd8313ed055', 'Mustika Jaya', '', '', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DAE7E594-144A-438E-9EE0-9DB0A5015EF0', '003', 'Indra Sukmono Arharrys', 'BOD', 'indra_sukmono_arharrys', '81dc9bdb52d04dc20036dbd8313ed055', 'Jati Karya', 'Mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DB453AE8-D322-4941-AA6C-FA3A4BDC3AAA', '9273', 'Ghozali', 'Divisi Umum & SDM', 'ghozali', '81dc9bdb52d04dc20036dbd8313ed055', 'Pulo Gadung', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DC8FB722-A53A-48BE-B22E-26C0296B91E2', '0241', 'Stefani Dwi Handamari', 'Unit Perencanaan & Pembangunan', 'stefani_dwi_handamari', '81dc9bdb52d04dc20036dbd8313ed055', 'Kunciran Indah', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E00E2029-B6C6-4327-A9C8-2DBCEBC40D33', '1008', 'Kholil', 'BOC', 'kholil', '81dc9bdb52d04dc20036dbd8313ed055', 'Tirta jaya', 'Mobil', 'kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E727F359-6D0A-4EA0-A7A3-EFA300C5A3E0', '0211', 'Ichsanudin', 'Unit Pemasaran & Pengelolaan Aset', 'ichsanudin', '81dc9bdb52d04dc20036dbd8313ed055', 'Bojong Gede', 'motor/kereta', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E91602A8-F04A-4702-A52A-3C5817F5F76F', '9291', 'Rayhan Hadi', 'Unit Perencanaan & Pembangunan', 'rayhan_hadi', '81dc9bdb52d04dc20036dbd8313ed055', 'Kemanggisan', 'mobil/motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('F300E15C-1C32-4F0C-BC1C-7EA14836132A', '0228', 'Villy Yunia Kusnadi Putri', 'Divisi Umum & SDM', 'villy_yunia_kusnadi_putri', '81dc9bdb52d04dc20036dbd8313ed055', 'Cempaka Putih Barat', 'Ojek online', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('F3900674-C8B2-49AF-A36A-F92284FA7352', '0115', 'Zulfita', 'Satuan Pengawas Intern', 'zulfita', '81dc9bdb52d04dc20036dbd8313ed055', 'Bojong Kulur', 'Ompengan', 'Antar Jemput', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('F3EEA5EA-1171-42C1-852A-5B84923075C4', '0238', 'Erna Mardiana Sasmita', 'Unit Pemasaran & Pengelolaan Aset', 'erna_mardiana_sasmita', '81dc9bdb52d04dc20036dbd8313ed055', 'Mustika jaya', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('F814FFD2-3644-4075-AB53-9AEB8A42C881', '0214', 'Eko Prasetyo Utomo', 'Unit Pemasaran & Pengelolaan Aset', 'eko_prasetyo_utomo', '81dc9bdb52d04dc20036dbd8313ed055', 'Grogol', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('F97AEDBF-70EB-4AB6-AD8F-F368B5390B71', '0201', 'Saptono', 'Divisi Usaha', 'saptono', '81dc9bdb52d04dc20036dbd8313ed055', 'Jatiwaringin', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('FB89C034-3F15-48FB-8EEC-1BA3F571D2F6', '9282', 'Dinna Efita Sari', 'Divisi Usaha', 'dinna_efita_sari', '81dc9bdb52d04dc20036dbd8313ed055', 'Poris Gaga', 'bus', 'Transportasi Umum (Grab)', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('FD1A3A24-4FC0-40EF-9A68-E5052E7924EB', '0216', 'Ariswanto Hendarmoko', 'Unit Pemasaran & Pengelolaan Aset', 'ariswanto_hendarmoko', '81dc9bdb52d04dc20036dbd8313ed055', 'Lebak Bulus', 'motor', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('FF313C25-851F-47D1-A1D7-D3553AEC66B1', '0239', 'Linda Badiu Wahyu', 'Unit Pemasaran & Pengelolaan Aset', 'linda_badiu_wahyu', '81dc9bdb52d04dc20036dbd8313ed055', 'Kedaung', 'mobil', 'Kendaraan Pribadi', '2020-06-07 12:14:14', '2020-06-07 12:14:14', 1, '069729EB-7070-4AA5-BFB4-461CAA322D0C'),
('kdjaksdkas2193821938921', '9999', 'admin', 'admin', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, 1, '04B4032C-4E33-4C51-8598-71B8B14DC3B2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `zona`
--

CREATE TABLE `zona` (
  `id` varchar(255) NOT NULL,
  `address` text,
  `zona_status` varchar(255) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `zona`
--

INSERT INTO `zona` (`id`, `address`, `zona_status`, `color`, `valid_from`, `valid_to`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
('0071B25D-F177-4A17-9D04-2DC759D30A30', 'Jaka Setia', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0071C85B-4B88-492A-828C-5A625CCC82B2', 'Waringin Jaya', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 12:45:35', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', 'kdjaksdkas2193821938921'),
('027A68B8-010E-4CDC-8259-993E00B6321F', 'Kalibata', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0495DEC6-F111-4BEF-8CD4-1DE3A2A227DC', 'Pulo Gadung', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('08E989C5-499E-4BE8-AA91-436237BEEFB8', 'Ciparigi', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0984896F-0AEF-4E4C-9A9B-3D705601C76C', 'Grogol', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0BAE114A-7196-452D-A368-15D2D9861E8A', 'Bintara Jaya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('0C967A67-CC3A-461B-B8F6-5328030E1287', 'Pisangan Timur', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1193B455-17DF-4CB9-9E53-2970935C385C', 'Serpong', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('11DC7255-5042-4945-BF46-0E6230C5912D', 'Karanggan', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1473EFAE-2354-4CB4-8DA8-CBCFBC8D21D0', 'Pasar Minggu', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('168F7E13-4314-44EA-945A-961445D997B1', 'Pekayon Jaya', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('17199730-51F5-4493-8BBE-C6E793A303F6', 'Tirta jaya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('194ACD36-8276-4AC6-B9E4-D291DBC15D7F', 'Raga Jaya', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1B736FA0-9955-4619-91BC-F5A11D5ECE51', 'Pejaten Timur', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1BD57C7F-30F0-40C5-9F3F-B5C704DDD21E', 'Kebayoran Lama Selatan', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1C34AA17-1DF0-4738-AEC4-68C1CC2C9D60', 'harapan Mulya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1D030969-D1E0-4703-8B93-E0BC71CF72C5', 'Puspanegara', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1D4D6167-283C-4325-8C51-5A10D58EBA81', 'Jatiwaringin', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1EEFA382-68FA-4C37-877E-9C7E969CA090', 'Gunung', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('1FAA5C91-1975-4E17-8234-AAF24C7B6E46', 'Grogol', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('23829409-2F38-4648-976C-B53570D76124', 'Lebak Bulus', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('2466F486-FB76-4CC0-BDC6-EDCA5FCA4431', 'Mampang', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('249010AB-408B-4DDF-8EA7-13AF329F0CA4', 'Poris Gaga', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('269C8C64-0502-432E-8385-93945B0AEC2C', 'Sukapura', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('2B8323A4-E3D8-456E-8CEB-89D3C2789915', 'Petojo Utara', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3216ACE4-84DC-464F-ABDA-96C7459856FD', 'Pejaten barat', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('32A8C6F1-A689-4C5E-B1B3-67E049DA2F73', 'Susukan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('34D0DF9E-CBB4-4457-84B5-5AFACE9BDA10', 'Pasar Minggu', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3931F584-3D2B-4B4B-A1A6-B8A0E2522302', 'Teluk Pucung', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('3BDA36DF-9564-4B57-A40B-AC03FC558DB3', 'Rawamangun', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('41269E34-C370-44CC-91E5-11CE1B8BFBA5', 'Grogol', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('416B7ADE-4180-4339-9D68-23B1FA76C4F9', 'Aren Jaya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('42C300E6-FFEB-4733-8810-66BF0F171179', 'Kalibata', 'Kuning', 'yer', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('42D3C848-8DE3-4B14-8836-51602BF740C7', 'Cibadak', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4336AB69-C4F7-477E-B276-5A132813EEAA', 'Duren Sawit', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('43E8B563-22CC-4665-B9BD-7970AA1A1564', 'Warakas', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('44667C95-A527-4656-B8EB-2D40605ED07D', 'Mekar Jaya', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('45B54439-5CC2-46B9-BDAC-721FC5C04850', 'Kayumanis', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4782671A-FB76-46E0-9119-9815674AC3FF', 'Jati Karya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('49C52FC8-EFAA-438F-912B-80032FB4034C', 'Pengasingan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4C84070D-D3B0-405D-9BB1-BCBE1BE07E23', 'Mekar Bakti', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('4DCF4478-95F8-485B-9C41-CA59D485B7AA', 'Kemanggisan', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('50D2B7C2-35C6-4394-BAC9-D85CFB09433D', 'Bojong Kulur', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('517EB58F-E7CC-4DAA-BE53-A7CABDFA0A31', 'Sukamaju', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5590DC3C-FF54-49DA-9A14-C9B01A0BFE30', 'Mustika jaya', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('56083FE3-11E9-476C-A408-3C91BB774C56', 'Pisangan Baru', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('58F09603-02E2-49D4-B524-90ABAEFEB035', 'Utan Kayu Selatan', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5A1A636B-10E9-42F8-92D0-28AE8ADD7199', 'Kedung waringin', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5AFA7371-F0A6-4919-ACC2-8B6DCF9D7BED', 'Mekarjaya', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5BBE7112-00DA-4C1B-9CF2-B11625B38BA7', 'Cengkareng', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5E6573EF-D4C1-4D08-9763-538FC9DDF5AA', 'Kebon Melati', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('5F8C20CD-73F9-4D4E-8F52-EC5C324F0915', 'Cibubur', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('602CA988-DE33-4EC5-8CEE-0CEB5DDC2BB4', 'Koja', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('60C9336F-C458-448D-B329-935F0D737F95', 'Kedaung', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('64DD0623-009E-4670-BD21-D175F130CC86', 'Pengadegan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('64E54583-7262-48A3-9A5E-DE55FD998D5D', 'Menteng dalam', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6539B1F7-043A-4CF5-8CF7-801F2CFA2F05', 'Jati makmur', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('69A48F3E-4CCC-42B5-89C8-8E955A6817E3', 'Tegal Gundil', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('6EED25F8-69EB-402A-AE44-CD43522FAE29', 'Dukuh', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('714E0B4F-6B54-4564-A19B-1D90F9C2328B', 'Klender', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('73971A91-36CD-4D86-A489-5B6C4D80AC3F', 'Kedoya', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7784AD1F-E44B-466E-8B31-74C878DCD227', 'Kebon Jeruk', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7BB996C4-E49A-49DC-B029-406AAE9A61A6', 'Pondok Kelapa', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7BE214EE-D160-4DA7-82B0-16C47B1BEA52', 'Paseban', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('7D1C5ABE-6DF6-4A97-9CA7-9CA9530017F8', 'Lambang Sari', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('80C15F0A-8B28-4F43-9487-1109F403E022', 'Tirta jaya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('837F5BB9-7111-498C-863C-2D1E7B8FE14F', 'Jati Kramat', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('857A12AE-B065-4430-8D51-E6D7F7322D25', 'Cempaka PutihBarat', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8642F808-EEA2-4017-9AF8-2EDC863D3D69', 'Cempaka Putih Barat', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('87C9F898-5816-4FB5-8348-8360A29F98A2', 'Petojo Selatan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8CE97C77-74B9-4AAB-8C03-F0B1D5F8429C', 'Tirta jaya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8E0D54C5-225C-4722-AE82-82C3CB476BD4', 'Kopo', NULL, NULL, '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('8F957C7B-DA06-459A-9298-053ED3D2C844', 'Ciluar', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('90653044-E881-47AA-9ADE-A7E9867DAF2E', 'jakartans', 'Merah', 'red', '2020-06-07', '2020-06-23', '2020-06-07 07:45:58', '2020-06-07 07:53:13', 'kdjaksdkas2193821938921', 'kdjaksdkas2193821938921'),
('912FC2D7-0464-462E-8626-BC9A176C77D9', 'Bojong', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('91707507-4308-4FCD-AE5F-39454DFA8FB0', 'Tebet', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('932B0E1B-59A3-4441-AD06-F22D4274968C', 'Waringin Jaya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('94F54A6F-1BFE-4C35-B53D-D6E28CFEEC08', 'Selong', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('97E69D0F-EB23-4EA9-9415-0FA89B8D64B2', 'Banjar Waru', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('993B1B07-1EFC-4FF4-AD78-0C6097EB177A', 'Kayu Putih', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('9AF68AAE-2F86-449B-9209-322FC5D41C8E', 'Poris Plawad', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('9CCE4BFD-B40A-4627-85F9-88AF4FF2E214', 'Pamulang Barat', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('9F1BF626-16A8-4AB1-9224-C22FBE4F5DF7', 'Kranji', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A3432AB5-09F9-4C98-BF79-6C8B0B9F77A2', 'Kunciran Indah', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A4060429-1144-4534-8692-1BBEBB0AF522', 'Wisma Asri', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A51BFA7A-8722-4936-BD3D-BAA09E242E29', 'Tomang', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A591DB2E-9189-4A8E-A2D0-0C6EE919D804', 'Kebon Baru', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A8E3EBCF-A068-4A70-8736-34A6A6920455', 'Rawa Panjang', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('A9B0FF71-E505-4446-8F38-22C288396243', 'Kemiri Muka', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('AF6C8658-A940-4A4A-B026-02DF516CEA71', 'Pulo Jahe', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B84D103B-9C80-4E04-8700-1B0C90C6DEAC', 'Bojong Gede', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('B99AFAB3-F731-44A6-957B-B7C3CC80FB4E', 'Ciangsana', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BBABC8B7-AD37-40A5-ABCE-A0DEA4FCB812', 'Cipayung', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BCD4A959-BE0B-4F48-8A73-EAC351782FBA', 'Cempaka PutihTimur', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BF28EB89-0799-4A33-8242-10FBB3138AD6', 'Kebon Jeruk', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BF64C56B-C899-45E1-9576-B4770A9F1C3D', 'Jati Mulya', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('BFCAF40C-FC7A-49F5-AC3B-6C0E7BD437E2', 'Gandaria Utara', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C0A21120-2B40-40A2-B7DD-2E43C54E5581', 'Bantarjati', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C4E04896-4FAC-4829-9B82-DC54E79F2BE8', 'Pondok Kelapa', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C5E8599D-7837-4546-BA4E-87E0F715C0E7', 'Kebon Jeruk', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C6297A68-5F95-4C2C-A6F5-CAF81E5FD993', 'Maphar', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C6C0DF9D-59A9-4217-BBD6-C654AF6A960D', 'Tugu', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C6E258BB-E1DE-4066-BEE1-BEE25CBCD982', 'KembanganSelatan', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('C71D3548-4152-4093-9B3D-390F1DCF054D', 'Cibubur', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('CA65373D-C8E2-467C-95DF-90A9D48EE47E', 'Mustika Jaya', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('CAD66309-8008-45A7-A758-FF1420741353', 'Pisangan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D0B08085-29E3-4584-81B1-95E808B0AF8A', 'Pancoran', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D10309C9-B9FD-4224-A515-DD72A3C5D835', 'Petojo Selatan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D1430F3E-8D29-49C5-936E-72932E96C383', 'Kayu Putih', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D34D22DE-546F-4958-8972-EAA6996C5BF9', 'Sudimara Timur', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D481907E-F12A-4193-B659-9A7D2E2C59DB', 'Kelapa Dua Wetan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D5A9F8DC-BEBC-4EF6-9335-8B1EEEEB55D7', 'Rawa lumbu', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('D712C886-59A4-4895-A02E-5F9FC65EE27A', 'Sentul', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DA0E0030-1387-4E95-AEE0-6A29E1CF335F', 'Kebon pala', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DA6B642E-C2CE-44C9-8472-302C6542B752', 'Cengkareng', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DE9C9008-CE00-4561-A20E-E387089EE540', 'Mangga Besar', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('DEEC4FC7-71E6-4086-A15E-9A1CF1EA6165', 'Susukan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E267C3FD-F081-42B8-8346-9C3FB29DA147', 'Ratujaya', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E383A176-2CBE-4DF4-9441-D0BFAF3EB2D6', 'Petojo Selatan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E3F79F7D-F86D-4FF4-BCB0-59376EE3A3FF', 'Cibodasari', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E69C6CF5-EB36-4B38-B8C6-28BE27CB5225', 'Sardonoharjo', NULL, NULL, '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('E7C4A04C-9F9F-4864-9AB4-2E3C528D9A2A', 'Kalisari', 'Kuning', 'yellow', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('EA73D376-C078-4902-954F-150F3DAF7F83', 'Kampung rawa', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('EE7FE181-8F5A-41DA-A896-3F9E7DC98673', 'Gandaria Utara', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('F4CA6539-E6A1-4F42-B61B-87E7DF69ABAD', 'Tugu', 'Merah', 'red', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('FAF38921-6BBD-4FD4-83B2-5D373A55265D', 'Pengadegan', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C'),
('FFBA5AF1-1E01-4FAE-A87C-395B2ABD4F95', 'Pisangan Timur', 'Hijau', 'green', '2020-06-07', '2020-06-30', '2020-06-07 01:19:17', '2020-06-07 01:19:17', '065559729EB-7070-4AA5-BFB4-461CAA322D0C', '065559729EB-7070-4AA5-BFB4-461CAA322D0C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `zona_status`
--

CREATE TABLE `zona_status` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `zona_status`
--

INSERT INTO `zona_status` (`id`, `status`) VALUES
(1, 'Hijau'),
(2, 'Merah'),
(3, 'Kuning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covid_informasi`
--
ALTER TABLE `covid_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covid_informasi_category`
--
ALTER TABLE `covid_informasi_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_check_suhu`
--
ALTER TABLE `daily_check_suhu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ketentuan`
--
ALTER TABLE `ketentuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zona_status`
--
ALTER TABLE `zona_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
