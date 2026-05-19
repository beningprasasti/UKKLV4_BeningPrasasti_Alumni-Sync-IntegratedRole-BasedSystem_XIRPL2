-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2026 at 09:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdata_alumni2`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `angkatan` year(4) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `nama_lengkap`, `angkatan`, `jurusan`) VALUES
(8, 'Bening Prasasti', '2024', 'Rekayasa Perangkat Lunak'),
(11, 'Rizky Nafit Yudistira', '2025', 'Teknik Jaringan Akses Telekomunikasi'),
(12, 'Mardalena Kharisma Dila', '2027', 'ANIMASI'),
(13, 'Naifa Naifasyah', '2026', 'Rekayasa Perangkat Lunak'),
(14, 'Khoirunnisya', '2021', 'Teknik Komputer dan Jaringan'),
(15, 'Qirana Fikriyah', '2023', 'Teknik Jaringan Akses Telekomunikasi'),
(16, 'Reja Oktaviyani', '2024', 'ANIMASI'),
(17, 'Meutiyara Chesa', '2025', 'Rekayasa Perangkat Lunak'),
(18, 'Selvi Dea Rifa', '2027', 'Teknik Jaringan Akses Telekomunikasi'),
(19, 'Nuzul Alifta Hasanah', '2026', 'Teknik Komputer dan Jaringan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `role`) VALUES
(1, 'bening ', '$2y$10$wnbtrtN1eaZv1ruz4ELHj.l31O2pBe0P5DVakkKf7Q00Jr5m4iZBG', NULL, 'user'),
(2, 'bening ', '$2y$10$QE0NEOSj/VDeqWbOEMqP3exwUojftRr5fblIB5dBNKtLY6667LFxe', NULL, 'user'),
(3, 'bening ', '$2y$10$uVgNoLZ8MD96YWswTtbyeeLq3OHn0rXol566XEEWYxAW8mnF0a3ZS', NULL, 'user'),
(4, 'bening ', '$2y$10$6T9uDL8vJBpdAwstr4YbYuLgyzGyEUVTmPumGFORUBC7dQbl.duSa', NULL, 'user'),
(5, 'bening ', '$2y$10$D7XFlFUVTkZG7.i1Lwm4N.m.5wzhACoFeSpiR9EXt7FTNJ0YWxlx6', NULL, 'user'),
(6, 'bening ', '$2y$10$c2wsT0Z/by2kcjgMUCGoFedtsExy9tnZL1aLUCrFn/iPQaWtn9AwC', NULL, 'user'),
(7, 'adminn', '$2y$10$m5jMtJwZ61B5HDPvCJ2DCeEnCxC3hTLwh286n5tn6hkwbkyCB/4FO', NULL, 'admin'),
(8, 'min', '$2y$10$Y7nJSuMdcM8hL9c4ujeaC.G3WSuWlvEEHsfKNk/dBqpeXpI2yjrvC', NULL, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
