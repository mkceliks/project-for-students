-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 14, 2021 at 02:34 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intern_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `isim` varchar(72) NOT NULL,
  `sifre` varchar(72) NOT NULL,
  `id` int(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`isim`, `sifre`, `id`) VALUES
('algorithms', 'e10adc3949ba59abbe56e057f20f883e', 2),
('theoryofcomputation', 'e10adc3949ba59abbe56e057f20f883e', 3),
('datamng', 'e10adc3949ba59abbe56e057f20f883e', 4),
('datastr', 'e10adc3949ba59abbe56e057f20f883e', 5),
('digidesign', 'e10adc3949ba59abbe56e057f20f883e', 6),
('digilab', 'e10adc3949ba59abbe56e057f20f883e', 7),
('electronics', 'e10adc3949ba59abbe56e057f20f883e', 8);

-- --------------------------------------------------------

--
-- Table structure for table `admin_student`
--

CREATE TABLE `admin_student` (
  `isim` varchar(72) NOT NULL,
  `sifre` varchar(72) NOT NULL,
  `id` int(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_student`
--

INSERT INTO `admin_student` (`isim`, `sifre`, `id`) VALUES
('abtas', 'e10adc3949ba59abbe56e057f20f883e', 1),
('mkemal', 'e10adc3949ba59abbe56e057f20f883e', 2),
('alicem', 'e10adc3949ba59abbe56e057f20f883e', 3),
('fekici', 'e10adc3949ba59abbe56e057f20f883e', 4),
('cakbas', 'e10adc3949ba59abbe56e057f20f883e', 5),
('eozdem', 'e10adc3949ba59abbe56e057f20f883e', 6),
('getem', 'e10adc3949ba59abbe56e057f20f883e', 7),
('cbindal', 'e10adc3949ba59abbe56e057f20f883e', 8);

-- --------------------------------------------------------

--
-- Table structure for table `algorithms`
--

CREATE TABLE `algorithms` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `algorithms`
--

INSERT INTO `algorithms` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Abdullah', 'Taş', 100, 100, 80, 'Failed', 1),
('Mustafa Kemal', 'Çelik', 55, 50, 100, 'Success', 2),
('Ali Cem', 'Üzüm', 50, 5, 5, 'Success', 3),
('Furkan', 'Ekici', 100, 100, 100, 'Failed', 4),
('Civan', 'Akbaş', 53, 15, 100, 'Success', 5),
('Cavit Yener', 'Bindal', 70, 70, 0, 'Failed', 8);

-- --------------------------------------------------------

--
-- Table structure for table `datamng`
--

CREATE TABLE `datamng` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datamng`
--

INSERT INTO `datamng` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Ali Cem', 'Üzüm', 100, 30, 50, 'Success', 3),
('Furkan', 'Ekici', 100, 100, 50, 'Failed', 4),
('Emre ', 'Özdem', 30, 45, 0, 'Success', 6),
('Görkem Etem', 'Irmak', 55, 34, 100, 'Success', 7),
('Cavit Yener', 'Bindal', 70, 70, 0, 'Failed', 8);

-- --------------------------------------------------------

--
-- Table structure for table `datastr`
--

CREATE TABLE `datastr` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datastr`
--

INSERT INTO `datastr` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Abdullah', 'Taş', 56, 44, 75, 'Success', 1),
('Mustafa Kemal', 'Çelik', 55, 100, 100, 'Success', 2),
('Ali Cem', 'Üzüm', 100, 100, 100, 'Success', 3),
('Civan', 'Akbaş', 53, 80, 100, 'Failed', 5),
('Görkem Etem', 'Irmak', 55, 34, 100, 'Success', 7);

-- --------------------------------------------------------

--
-- Table structure for table `dersler`
--

CREATE TABLE `dersler` (
  `ders_adi` varchar(72) NOT NULL,
  `ders_id` int(72) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dersler`
--

INSERT INTO `dersler` (`ders_adi`, `ders_id`) VALUES
('Algorithms', 1),
('Theory Of Computation', 2),
('Data Structures', 3),
('Digital Design', 4),
('Digital Design Lab.', 5),
('Electronics', 6),
('Data Management and File Structures', 7);

-- --------------------------------------------------------

--
-- Table structure for table `digidesign`
--

CREATE TABLE `digidesign` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `digidesign`
--

INSERT INTO `digidesign` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Abdullah', 'Taş', 100, 35, 75, 'Failed', 1),
('Mustafa Kemal', 'Çelik', 55, 0, 0, 'Success', 2),
('Ali Cem', 'Üzüm', 100, 100, 100, 'Success', 3),
('Furkan', 'Ekici', 50, 50, 50, 'Failed', 4),
('Civan', 'Akbaş', 53, 15, 100, 'Success', 5),
('Emre ', 'Özdem', NULL, NULL, NULL, NULL, 6),
('Görkem Etem', 'Irmak', 55, 70, 80, 'Failed', 7),
('Cavit Yener', 'Bindal', 70, 70, 0, 'Failed', 8);

-- --------------------------------------------------------

--
-- Table structure for table `digilab`
--

CREATE TABLE `digilab` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `digilab`
--

INSERT INTO `digilab` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Ali Cem', 'Üzüm', 100, 100, 100, 'Success', 3),
('Civan', 'Akbaş', 53, 15, 15, 'Success', 5),
('Emre ', 'Özdem', NULL, NULL, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE `electronics` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `electronics`
--

INSERT INTO `electronics` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Abdullah', 'Taş', 0, 50, 100, 'Failed', 1),
('Mustafa Kemal', 'Çelik', 55, 100, 100, 'Success', 2),
('Ali Cem', 'Üzüm', 100, 100, 100, 'Success', 3),
('Furkan', 'Ekici', 100, 100, 100, 'Success', 4),
('Civan', 'Akbaş', 53, 45, 100, 'Success', 5),
('Emre ', 'Özdem', NULL, NULL, NULL, NULL, 6),
('Görkem Etem', 'Irmak', 55, 34, 100, 'Success', 7),
('Cavit Yener', 'Bindal', 70, 70, 0, 'Failed', 8);

-- --------------------------------------------------------

--
-- Table structure for table `info_algorithms`
--

CREATE TABLE `info_algorithms` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_algorithms`
--

INSERT INTO `info_algorithms` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(1, 'Abdullah', 'Taş', 2016555001, 'abdullahtas@email.com'),
(2, 'Mustafa Kemal', 'Çelik', 2016555023, 'mkceliks@email.com'),
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(4, 'Furkan', 'Ekici', 2016555003, 'furkanekici@email.com'),
(5, 'Civan', 'Akbaş', 2016555004, 'civanakbas@email.com'),
(6, 'Cavit Yener', 'Bindal', 2016555007, 'yenerbindal@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `info_datamng`
--

CREATE TABLE `info_datamng` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_datamng`
--

INSERT INTO `info_datamng` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(4, 'Furkan', 'Ekici', 2016555003, 'furkanekici@email.com'),
(6, 'Emre', 'Özdem', 2016555005, 'emreozdem@email.com'),
(7, 'Görkem Etem', 'Irmak', 2016555006, 'etemirmak@email.com'),
(8, 'Cavit Yener', 'Bindal', 2016555007, 'yenerbindal@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `info_datastr`
--

CREATE TABLE `info_datastr` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_datastr`
--

INSERT INTO `info_datastr` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(1, 'Abdullah', 'Taş', 2016555001, 'abdullahtas@email.com'),
(2, 'Mustafa Kemal', 'Çelik', 2016555023, 'mkceliks@email.com'),
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(5, 'Civan', 'Akbaş', 2016555004, 'civanakbas@email.com'),
(7, 'Görkem Etem', 'Irmak', 2016555006, 'etemirmak@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `info_digidesign`
--

CREATE TABLE `info_digidesign` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_digidesign`
--

INSERT INTO `info_digidesign` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(1, 'Abdullah', 'Taş', 2016555001, 'abdullahtas@email.com'),
(2, 'Mustafa Kemal', 'Çelik', 2016555023, 'mkceliks@email.com'),
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(4, 'Furkan', 'Ekici', 2016555003, 'furkanekici@email.com'),
(5, 'Civan', 'Akbaş', 2016555004, 'civanakbas@email.com'),
(6, 'Emre', 'Özdem', 2016555005, 'emreozdem@email.com'),
(7, 'Görkem Etem', 'Irmak', 2016555006, 'etemirmak@email.com'),
(8, 'Cavit Yener', 'Bindal', 2016555007, 'yenerbindal@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `info_digilab`
--

CREATE TABLE `info_digilab` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_digilab`
--

INSERT INTO `info_digilab` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(5, 'Civan', 'Akbaş', 2016555004, 'civanakbas@email.com'),
(6, 'Emre', 'Özdem', 2016555005, 'emreozdem@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `info_electronics`
--

CREATE TABLE `info_electronics` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_electronics`
--

INSERT INTO `info_electronics` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(1, 'Abdullah', 'Taş', 2016555001, 'abdullahtas@email.com'),
(2, 'Mustafa Kemal', 'Çelik', 2016555023, 'mkceliks@email.com'),
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(4, 'Furkan', 'Ekici', 2016555003, 'furkanekici@email.com'),
(5, 'Civan', 'Akbaş', 2016555004, 'civanakbas@email.com'),
(6, 'Emre', 'Özdem', 2016555005, 'emreozdem@email.com'),
(7, 'Görkem Etem', 'Irmak', 2016555006, 'etemirmak@email.com'),
(8, 'Cavit Yener', 'Bindal', 2016555007, 'yenerbindal@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `info_toc`
--

CREATE TABLE `info_toc` (
  `info_id` int(5) NOT NULL,
  `info_fname` varchar(15) DEFAULT NULL,
  `info_lname` varchar(15) DEFAULT NULL,
  `info_num` int(10) DEFAULT NULL,
  `info_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info_toc`
--

INSERT INTO `info_toc` (`info_id`, `info_fname`, `info_lname`, `info_num`, `info_email`) VALUES
(1, 'Abdullah', 'Taş', 2016555001, 'abdullahtas@email.com'),
(2, 'Mustafa Kemal', 'Çelik', 2016555023, 'mkceliks@email.com'),
(3, 'Ali Cem', 'Üzüm', 2016555002, 'alicemuzum@email.com'),
(4, 'Furkan', 'Ekici', 2016555003, 'furkanekici@email.com'),
(5, 'Civan', 'Akbaş', 2016555004, 'civanakbas@email.com'),
(6, 'Emre', 'Özdem', 2016555005, 'emreozdem@email.com'),
(7, 'Görkem Etem', 'Irmak', 2016555006, 'etemirmak@email.com'),
(8, 'Cavit Yener', 'Bindal', 2016555007, 'yenerbindal@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `toc`
--

CREATE TABLE `toc` (
  `ogrenci_isim` varchar(72) NOT NULL,
  `ogrenci_soyisim` varchar(72) NOT NULL,
  `ogrenci_vize` int(11) DEFAULT NULL,
  `ogrenci_final` int(11) DEFAULT NULL,
  `ogrenci_quiz` int(11) DEFAULT NULL,
  `ogrenci_devam` varchar(72) DEFAULT NULL,
  `ogrenci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toc`
--

INSERT INTO `toc` (`ogrenci_isim`, `ogrenci_soyisim`, `ogrenci_vize`, `ogrenci_final`, `ogrenci_quiz`, `ogrenci_devam`, `ogrenci_id`) VALUES
('Abdullah', 'Taş', 100, 44, 75, 'Success', 1),
('Mustafa Kemal', 'Çelik', 55, 100, 100, 'Success', 2),
('Ali Cem', 'Üzüm', 100, 30, 100, 'Failed', 3),
('Furkan', 'Ekici', 100, 100, 100, 'Success', 4),
('Civan', 'Akbaş', 53, 15, 100, 'Success', 5),
('Emre ', 'Özdem', NULL, NULL, NULL, NULL, 6),
('Görkem Etem', 'Irmak', 55, 34, 100, 'Success', 7),
('Cavit Yener', 'Bindal', 70, 70, 0, 'Failed', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_student`
--
ALTER TABLE `admin_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `algorithms`
--
ALTER TABLE `algorithms`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `datamng`
--
ALTER TABLE `datamng`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `datastr`
--
ALTER TABLE `datastr`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`ders_id`);

--
-- Indexes for table `digidesign`
--
ALTER TABLE `digidesign`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `digilab`
--
ALTER TABLE `digilab`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `electronics`
--
ALTER TABLE `electronics`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- Indexes for table `info_algorithms`
--
ALTER TABLE `info_algorithms`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_datamng`
--
ALTER TABLE `info_datamng`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_datastr`
--
ALTER TABLE `info_datastr`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_digidesign`
--
ALTER TABLE `info_digidesign`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_digilab`
--
ALTER TABLE `info_digilab`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_electronics`
--
ALTER TABLE `info_electronics`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `info_toc`
--
ALTER TABLE `info_toc`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `toc`
--
ALTER TABLE `toc`
  ADD PRIMARY KEY (`ogrenci_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(72) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_student`
--
ALTER TABLE `admin_student`
  MODIFY `id` int(72) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `algorithms`
--
ALTER TABLE `algorithms`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `datamng`
--
ALTER TABLE `datamng`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `datastr`
--
ALTER TABLE `datastr`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dersler`
--
ALTER TABLE `dersler`
  MODIFY `ders_id` int(72) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `digidesign`
--
ALTER TABLE `digidesign`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `digilab`
--
ALTER TABLE `digilab`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `electronics`
--
ALTER TABLE `electronics`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info_algorithms`
--
ALTER TABLE `info_algorithms`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `info_datamng`
--
ALTER TABLE `info_datamng`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info_datastr`
--
ALTER TABLE `info_datastr`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `info_digidesign`
--
ALTER TABLE `info_digidesign`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info_digilab`
--
ALTER TABLE `info_digilab`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `info_electronics`
--
ALTER TABLE `info_electronics`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `info_toc`
--
ALTER TABLE `info_toc`
  MODIFY `info_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `toc`
--
ALTER TABLE `toc`
  MODIFY `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
