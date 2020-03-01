-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 07:01 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel_tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_tamu` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `jumlah_kamar` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_hotel`, `id_tamu`, `check_in`, `check_out`, `jumlah_kamar`) VALUES
(1, 11011, 900001, '2019-12-01', '2020-03-03', 1),
(2, 11012, 900002, '2020-01-02', '2020-01-04', 1),
(3, 11013, 900003, '2020-01-14', '2020-01-16', 1),
(4, 11014, 900004, '2020-01-18', '2020-03-20', 1),
(5, 11015, 900005, '2020-02-17', '2020-03-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_fasilitas_kamar`
--

CREATE TABLE `detail_fasilitas_kamar` (
  `id_tipe_kamar` varchar(18) DEFAULT NULL,
  `id_fasilitas_kamar` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_fasilitas_kamar`
--

INSERT INTO `detail_fasilitas_kamar` (`id_tipe_kamar`, `id_fasilitas_kamar`) VALUES
('DLX', 'AC'),
('DLX', 'CLST'),
('DLX', 'CRP'),
('DLX', 'CT'),
('DLX', 'CTM'),
('DLX', 'D'),
('DLX', 'DN'),
('DLX', 'HD'),
('DLX', 'IRS'),
('DLX', 'KTC'),
('DLX', 'LR'),
('DLX', 'MB'),
('DLX', 'SD'),
('DLX', 'T'),
('DLX', 'TLPN'),
('DLX', 'TWL'),
('DLX', 'WF'),
('DLX', 'WS'),
('JRSTE', 'AC'),
('JRSTE', 'AC'),
('JRSTE', 'AC'),
('JRSTE', 'CT'),
('JRSTE', 'CTM'),
('JRSTE', 'D'),
('JRSTE', 'DN'),
('JRSTE', 'HD'),
('JRSTE', 'IRS'),
('JRSTE', 'KTC'),
('JRSTE', 'WF'),
('PS', 'AC'),
('PS', 'CLST'),
('PS', 'CT'),
('PS', 'CTM'),
('PS', 'D'),
('PS', 'DN'),
('PS', 'HD'),
('PS', 'IRS'),
('PS', 'KTC'),
('PS', 'LR'),
('PS', 'MB'),
('PS', 'SD'),
('PS', 'T'),
('PS', 'TLPN'),
('PS', 'WF'),
('PS', 'WS'),
('STD', 'AC'),
('STD', 'CLST'),
('STD', 'CT'),
('STD', 'WF'),
('STE', 'AC'),
('STE', 'CLST'),
('STE', 'CRP'),
('STE', 'CT'),
('STE', 'CTM'),
('STE', 'CTM'),
('STE', 'D'),
('STE', 'DN'),
('STE', 'HD'),
('STE', 'IRS'),
('STE', 'KTC'),
('STE', 'LR'),
('STE', 'MB'),
('STE', 'SD'),
('STE', 'T'),
('STE', 'T'),
('STE', 'TWL'),
('STE', 'WF'),
('STE', 'WS'),
('SUP', 'AC'),
('SUP', 'CLST'),
('SUP', 'CRP'),
('SUP', 'CT'),
('SUP', 'CTM'),
('SUP', 'D'),
('SUP', 'DN'),
('SUP', 'HD'),
('SUP', 'IRS'),
('SUP', 'KTC'),
('SUP', 'LR'),
('SUP', 'MB'),
('SUP', 'SD'),
('SUP', 'T'),
('SUP', 'TLPN'),
('SUP', 'TWL'),
('SUP', 'TWL'),
('SUP', 'WF'),
('SUP', 'WS');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotel`
--

CREATE TABLE `fasilitas_hotel` (
  `id_fasilitas` varchar(18) NOT NULL,
  `diskripsi_fasilitas` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas_hotel`
--

INSERT INTO `fasilitas_hotel` (`id_fasilitas`, `diskripsi_fasilitas`) VALUES
('AP', 'Area Parkir'),
('B', 'Bar'),
('D', 'Diskotik'),
('GYM', 'GYM'),
('KLM', 'Kolam Renang'),
('KRE', 'Karaoke'),
('LDY', 'Laundy'),
('LF', 'Lapangan Futsal'),
('LG', 'Lapangan Golf'),
('LT', 'Lapangan Tenis'),
('MR', 'Meeting Room'),
('RSN', 'Restaurant'),
('SCY', 'Security');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_hotel_detail`
--

CREATE TABLE `fasilitas_hotel_detail` (
  `id_hotel` int(11) DEFAULT NULL,
  `id_fasilitas` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas_hotel_detail`
--

INSERT INTO `fasilitas_hotel_detail` (`id_hotel`, `id_fasilitas`) VALUES
(11011, 'AP'),
(11011, 'B'),
(11011, 'D'),
(11011, 'GYM'),
(11011, 'KLM'),
(11011, 'KRE'),
(11011, 'LF'),
(11011, 'LF'),
(11011, 'LG'),
(11011, 'MR'),
(11011, 'SCY'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11012, 'AP'),
(11013, 'KRE'),
(11013, 'KRE'),
(11013, 'KRE'),
(11013, 'KRE'),
(11013, 'KRE'),
(11014, 'LF'),
(11014, 'LF'),
(11014, 'LF'),
(11015, 'AP'),
(11015, 'AP'),
(11015, 'AP'),
(11015, 'AP'),
(11015, 'AP'),
(11015, 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `id_fasilitas_kamar` varchar(18) NOT NULL,
  `fasilitas_kamar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fasilitas_kamar`
--

INSERT INTO `fasilitas_kamar` (`id_fasilitas_kamar`, `fasilitas_kamar`) VALUES
('AC', 'Air Conditioning'),
('CLST', 'Closet'),
('CRP', 'Carpeting'),
('CT', 'Cable TV'),
('CTM', 'Caffe/Tea Maker'),
('D', 'Desk'),
('DN', 'Daily News Paper'),
('HD', 'Hair Dryer'),
('IRS', 'In Room Safe'),
('KTC', 'Kithcen'),
('LR', 'Living Room'),
('MB', 'Mini Bar'),
('SD', 'Smoke Detector'),
('T', 'Toiletries'),
('TLPN', 'Telephone'),
('TWL', 'Towels'),
('WF', 'Wifi'),
('WS', 'Wake Up Services');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(250) DEFAULT NULL,
  `negara` varchar(18) DEFAULT NULL,
  `kota` varchar(18) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `nama_hotel`, `negara`, `kota`, `alamat`) VALUES
(11011, 'JW Marriot Surabaya', 'ID', 'SUB', 'Jl Gatot Subroto no 16'),
(11012, 'JW Marriot Malang', 'ID', 'MLG', 'Jl panglima sudirman no 17'),
(11013, 'Four Point Surabaya', 'ID', 'SUB', 'Jl tnojoto 01'),
(11014, 'AC Hotel Ambon', 'ID', 'AMQ', 'JL Mawar 09'),
(11015, 'Sheraton Hotells and Resorts Padang', 'ID', 'AEG', 'JL NEputnus 8');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_tipe_kamar` varchar(18) DEFAULT NULL,
  `id_tipe_kasur` varchar(18) DEFAULT NULL,
  `nomor_kamar` int(10) DEFAULT NULL,
  `lantai_kamar` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `id_hotel`, `id_tipe_kamar`, `id_tipe_kasur`, `nomor_kamar`, `lantai_kamar`) VALUES
(11101, 11011, 'DLX', 'DB', 101, '1'),
(11102, 11011, 'JRSTE', 'DB', 102, '1'),
(11103, 11011, 'JRSTE', 'TWB', 103, '1'),
(11104, 11011, 'PS', 'TWB', 104, '1'),
(11105, 11011, 'STD', 'SB', 105, '1'),
(11106, 11011, 'STE', 'KB', 106, '1'),
(21101, 11011, 'SUP', 'KB', 201, '2'),
(21102, 11011, 'STE', 'TPB', 202, '2'),
(21103, 11011, 'STD', 'DB', 203, '2'),
(31101, 11011, 'STD', 'TWB', 301, '3'),
(31102, 11011, 'DLX', 'KB', 302, '3'),
(31103, 11011, 'STD', 'SB', 303, '3'),
(31114, 11011, 'STE', 'TWB', 304, '3');

-- --------------------------------------------------------

--
-- Table structure for table `kamar_booked`
--

CREATE TABLE `kamar_booked` (
  `id_kamar_booked` int(11) DEFAULT NULL,
  `id_kamar` int(11) DEFAULT NULL,
  `id_booking` int(11) DEFAULT NULL,
  `id_tarif_kamar_hariini` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kamar_booked`
--

INSERT INTO `kamar_booked` (`id_kamar_booked`, `id_kamar`, `id_booking`, `id_tarif_kamar_hariini`) VALUES
(901, 11101, 1, NULL),
(902, 21102, 2, NULL),
(903, 31102, 3, NULL),
(904, 31101, 4, NULL),
(9055, 31114, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kamar_yang_tersedia`
--

CREATE TABLE `kamar_yang_tersedia` (
  `id_kamar` int(11) DEFAULT NULL,
  `status_tersedia` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id_kota` varchar(18) NOT NULL,
  `nama_kota` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
('ABU', 'Atambua'),
('AEG', 'Padang Sidempuan'),
('AGD', 'Anggi'),
('AMQ', 'Ambon'),
('AYX', 'Ayawasi'),
('BDJ', 'Banjarmasin'),
('BDO', 'Bandung'),
('BEJ', 'Tanjung Redep, Ber'),
('BIK', 'Biak'),
('BJK', 'Benjina'),
('BKS', 'Bengkulu'),
('BMU', 'Bima'),
('BPN', 'Balikpapan'),
('BTH', 'Batam'),
('BTJ', 'Banda Aceh'),
('BUW', 'Bau-Bau'),
('BWX', 'Banyuwangi'),
('BXB', 'Babo'),
('BXT', 'Bontang'),
('BXW', 'Bawean'),
('CBN', 'Cirebon'),
('CGK', 'Jakarta'),
('CXP', 'Cilacap'),
('DJB', 'Jambi'),
('DJJ', 'Jayapura'),
('DOB', 'Dobo'),
('DPS', 'Denpasar'),
('DTB', 'Siborong-Borong'),
('DTD', 'Datadawai'),
('DUM', 'Dumai'),
('ENE', 'Ende'),
('FKQ', 'Fakfak'),
('FLZ', 'Sibolga'),
('FOO', 'Numfor'),
('GLX', 'Galela'),
('GNS', 'Gunung Sitoli'),
('GTO', 'Gorontalo'),
('HLP', 'Jakarta'),
('JBB', 'Jember'),
('JIO', 'Moa'),
('JOG', 'Yogyakarta'),
('KAZ', 'Kao'),
('KBU', 'Gusti Syamsir Alam'),
('KDI', 'Kendari'),
('KNG', 'Kaimana'),
('KNO', 'Medan'),
('KOE', 'Kupang'),
('KSR', 'Selayar'),
('KTG', 'Ketapang'),
('LAH', 'Labuha'),
('LBJ', 'Labuan Bajo'),
('LBW', 'Long Bawan'),
('LLG', 'Lubuklinggau'),
('LLO', 'Selayar'),
('LOP', 'Mataram'),
('LPU', 'Long Apung'),
('LSE', 'Batu s'),
('LUV', 'Tual'),
('MDC', 'Manado'),
('MEQ', 'Suka Makmue'),
('MES', 'Medan'),
('MJU', 'Mamuju'),
('MKQ', 'Merauke'),
('MKW', 'Manokwari'),
('MLG', 'Malang'),
('MNA', 'Melonguane'),
('MOF', 'Maumere'),
('MXB', 'Masamba'),
('NAH', 'Naha'),
('NAM', 'Namlea'),
('NBX', 'Nabire'),
('NDA', 'Banda'),
('NNX', 'Nunukan'),
('NRE', 'Namrole'),
('NTI', 'Bintuni'),
('NTX', 'Ranai'),
('ORG', 'Oksibil'),
('OTI', 'Morotai'),
('PCB', 'Tangerang Selatan'),
('PDG', 'Padang'),
('PGK', 'Pangkal Pinang'),
('PKN', 'Pangkalanbun'),
('PKU', 'Pekanbaru'),
('PKY', 'Palangkaraya'),
('PLM', 'Palembang'),
('PLW', 'Palu'),
('PNK', 'Pontianak'),
('PSJ', 'Poso'),
('PSU', 'Putussibau'),
('PUM', 'Kolaka'),
('RKI', 'Sipora'),
('SAU', 'Savu'),
('SIW', 'Parapat / Toba Sam'),
('SMQ', 'Sampit'),
('SOC', 'Solo / Surakarta'),
('SOQ', 'Sorong'),
('SQG', 'Sintang'),
('SRG', 'Semarang'),
('SRI', 'Samarinda'),
('SUB', 'Surabaya'),
('SWQ', 'Sumbawa Besar'),
('SXK', 'Saumlaki'),
('TIM', 'Timika'),
('TJQ', 'Tanjung Pandan'),
('TJS', 'Tanjung Selor'),
('TKG', 'Bandar Lampung'),
('TMC', 'Waikabubak'),
('TNJ', 'Tanjung Pinang'),
('TRK', 'Tarakan'),
('TTE', 'Ternate'),
('TXE', 'Takengon'),
('UPG', 'Makassar'),
('WGP', 'Waingapu'),
('WMX', 'Wamena'),
('WSR', 'Wasior'),
('WUB', 'Buli');

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `id_negara` varchar(18) NOT NULL,
  `nama_negara` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`id_negara`, `nama_negara`) VALUES
('', NULL),
('AE', 'United Arab Emirat'),
('AR', 'Argentina'),
('CN', 'China'),
('DK', 'Denmark'),
('ES', 'Spain'),
('ID', 'Indonesia'),
('IQ', 'Iraq'),
('KG', 'Kytgyzstan'),
('LB', 'Lebanon'),
('LY', 'Libya'),
('MN', 'Mongolia'),
('NL', 'Netheland'),
('PE', 'Peru'),
('RS', 'Serbia'),
('TH', 'Thailand'),
('TN', 'Tunisia'),
('TZ', 'Tanzania'),
('US', 'United States'),
('VN', 'Vietnam'),
('ZA', 'Afrika Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) DEFAULT NULL,
  `id_kamar_booked` int(11) DEFAULT NULL,
  `id_tamu` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_depan` varchar(250) DEFAULT NULL,
  `nama_belakang` varchar(250) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `kota` varchar(18) DEFAULT NULL,
  `negara` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_depan`, `nama_belakang`, `alamat`, `umur`, `kota`, `negara`) VALUES
(900001, 'Jaelani', 'Z', 'Jl x', 20, 'ABU', 'ID'),
(900002, 'Siti', 'Munaroh', 'jl b', 50, 'BDJ', 'ID'),
(900003, 'aji', 'ar', 'jl a', 80, 'BDO', 'ID'),
(900004, 'siti', 'mumainah', 'jl c', 40, 'BEJ', 'ID'),
(900005, NULL, NULL, NULL, NULL, 'BDO', 'ID'),
(900006, NULL, NULL, NULL, NULL, 'BEJ', 'ID'),
(900007, NULL, NULL, NULL, NULL, 'BXW', 'ID'),
(900008, NULL, NULL, NULL, NULL, 'CGK', 'ID'),
(900009, NULL, NULL, NULL, NULL, 'CXP', 'ID'),
(900010, NULL, NULL, NULL, NULL, 'CBN', 'ID'),
(900011, NULL, NULL, NULL, NULL, 'CBN', 'ID'),
(900012, NULL, NULL, NULL, NULL, 'BPN', 'ID'),
(900013, NULL, NULL, NULL, NULL, 'CGK', 'ID'),
(900014, NULL, NULL, NULL, NULL, 'CBN', 'ID'),
(900016, NULL, NULL, NULL, NULL, 'CGK', 'ID'),
(900017, NULL, NULL, NULL, NULL, 'CBN', 'ID'),
(900018, NULL, NULL, NULL, NULL, 'DTB', 'ID'),
(900019, NULL, NULL, NULL, NULL, 'LBW', 'ID'),
(900020, NULL, NULL, NULL, NULL, 'MNA', 'ID'),
(900021, NULL, NULL, NULL, NULL, 'PLM', 'ID'),
(900022, NULL, NULL, NULL, NULL, 'ORG', 'ID'),
(900023, NULL, NULL, NULL, NULL, 'LPU', 'ID'),
(900024, NULL, NULL, NULL, NULL, 'DJB', 'ID'),
(900025, NULL, NULL, NULL, NULL, 'AMQ', 'ID'),
(900026, NULL, NULL, NULL, NULL, 'PUM', 'ID'),
(900027, NULL, NULL, NULL, NULL, NULL, 'US'),
(900028, NULL, NULL, NULL, NULL, NULL, 'US'),
(900029, NULL, NULL, NULL, NULL, NULL, 'US'),
(900030, NULL, NULL, NULL, NULL, NULL, 'US'),
(900031, NULL, NULL, NULL, NULL, NULL, 'US'),
(900032, NULL, NULL, NULL, NULL, NULL, 'US'),
(900033, NULL, NULL, NULL, NULL, NULL, 'AR'),
(900034, NULL, NULL, NULL, NULL, NULL, 'DK'),
(900035, NULL, NULL, NULL, NULL, NULL, 'VN'),
(900036, NULL, NULL, NULL, NULL, NULL, 'ID'),
(900037, NULL, NULL, NULL, NULL, NULL, 'ZA'),
(900038, NULL, NULL, NULL, NULL, NULL, 'VN'),
(900039, NULL, NULL, NULL, NULL, NULL, 'DK'),
(900040, NULL, NULL, NULL, NULL, NULL, 'DK');

-- --------------------------------------------------------

--
-- Table structure for table `tarif_kamar_hariini`
--

CREATE TABLE `tarif_kamar_hariini` (
  `id_tarif_kamar_hariini` int(11) NOT NULL,
  `id_kamar` int(11) DEFAULT NULL,
  `dari_tgl` date DEFAULT NULL,
  `sampai_tgl` date DEFAULT NULL,
  `tarif` decimal(20,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kamar`
--

CREATE TABLE `tipe_kamar` (
  `id_tipe_kamar` varchar(18) NOT NULL,
  `tipe_kamar` varchar(30) DEFAULT NULL,
  `standar_harga` decimal(20,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_kamar`
--

INSERT INTO `tipe_kamar` (`id_tipe_kamar`, `tipe_kamar`, `standar_harga`) VALUES
('DLX', 'Deluxe room', '300000'),
('JRSTE', 'Junior suit room ', '250000'),
('PS', 'Presiden Suit', '500000'),
('STD', 'Standar room ', '100000'),
('STE', 'Suit room ', '300000'),
('SUP', 'Superior room', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kasur`
--

CREATE TABLE `tipe_kasur` (
  `id_tipe_kasur` varchar(18) NOT NULL,
  `tipe_kasur` varchar(25) DEFAULT NULL,
  `Deskripsi` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_kasur`
--

INSERT INTO `tipe_kasur` (`id_tipe_kasur`, `tipe_kasur`, `Deskripsi`) VALUES
('DB', 'Double Bed', '1 Double Bed'),
('KB', 'King Bed', '1 King Bed'),
('SB', 'Single Bed', '1 Single Bed'),
('TPB', 'Tripel Bed', '3 Double Bed'),
('TWB', 'Twin Bed', '2 Single Bed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_tamu` (`id_tamu`);

--
-- Indexes for table `detail_fasilitas_kamar`
--
ALTER TABLE `detail_fasilitas_kamar`
  ADD KEY `id_tipe_kamar` (`id_tipe_kamar`),
  ADD KEY `id_fasilitas_kamar` (`id_fasilitas_kamar`);

--
-- Indexes for table `fasilitas_hotel`
--
ALTER TABLE `fasilitas_hotel`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `fasilitas_hotel_detail`
--
ALTER TABLE `fasilitas_hotel_detail`
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_fasilitas` (`id_fasilitas`);

--
-- Indexes for table `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`id_fasilitas_kamar`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `negara` (`negara`),
  ADD KEY `kota` (`kota`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_tipe_kamar` (`id_tipe_kamar`),
  ADD KEY `id_tipe_kasur` (`id_tipe_kasur`);

--
-- Indexes for table `kamar_booked`
--
ALTER TABLE `kamar_booked`
  ADD KEY `id_kamar` (`id_kamar`),
  ADD KEY `id_booking` (`id_booking`),
  ADD KEY `id_tarif_kamar_hariini` (`id_tarif_kamar_hariini`);

--
-- Indexes for table `kamar_yang_tersedia`
--
ALTER TABLE `kamar_yang_tersedia`
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD KEY `id_kamar_booked` (`id_kamar_booked`),
  ADD KEY `id_tamu` (`id_tamu`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`),
  ADD KEY `kota` (`kota`),
  ADD KEY `negara` (`negara`);

--
-- Indexes for table `tarif_kamar_hariini`
--
ALTER TABLE `tarif_kamar_hariini`
  ADD PRIMARY KEY (`id_tarif_kamar_hariini`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indexes for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  ADD PRIMARY KEY (`id_tipe_kamar`);

--
-- Indexes for table `tipe_kasur`
--
ALTER TABLE `tipe_kasur`
  ADD PRIMARY KEY (`id_tipe_kasur`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_tamu`) REFERENCES `tamu` (`id_tamu`);

--
-- Constraints for table `detail_fasilitas_kamar`
--
ALTER TABLE `detail_fasilitas_kamar`
  ADD CONSTRAINT `detail_fasilitas_kamar_ibfk_1` FOREIGN KEY (`id_tipe_kamar`) REFERENCES `tipe_kamar` (`id_tipe_kamar`),
  ADD CONSTRAINT `detail_fasilitas_kamar_ibfk_2` FOREIGN KEY (`id_fasilitas_kamar`) REFERENCES `fasilitas_kamar` (`id_fasilitas_kamar`);

--
-- Constraints for table `fasilitas_hotel_detail`
--
ALTER TABLE `fasilitas_hotel_detail`
  ADD CONSTRAINT `fasilitas_hotel_detail_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`),
  ADD CONSTRAINT `fasilitas_hotel_detail_ibfk_2` FOREIGN KEY (`id_fasilitas`) REFERENCES `fasilitas_hotel` (`id_fasilitas`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`negara`) REFERENCES `negara` (`id_negara`),
  ADD CONSTRAINT `hotel_ibfk_2` FOREIGN KEY (`kota`) REFERENCES `kota` (`id_kota`);

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`),
  ADD CONSTRAINT `kamar_ibfk_2` FOREIGN KEY (`id_tipe_kamar`) REFERENCES `tipe_kamar` (`id_tipe_kamar`),
  ADD CONSTRAINT `kamar_ibfk_3` FOREIGN KEY (`id_tipe_kasur`) REFERENCES `tipe_kasur` (`id_tipe_kasur`);

--
-- Constraints for table `kamar_booked`
--
ALTER TABLE `kamar_booked`
  ADD CONSTRAINT `kamar_booked_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`),
  ADD CONSTRAINT `kamar_booked_ibfk_2` FOREIGN KEY (`id_booking`) REFERENCES `booking` (`id_booking`),
  ADD CONSTRAINT `kamar_booked_ibfk_3` FOREIGN KEY (`id_tarif_kamar_hariini`) REFERENCES `tarif_kamar_hariini` (`id_tarif_kamar_hariini`);

--
-- Constraints for table `kamar_yang_tersedia`
--
ALTER TABLE `kamar_yang_tersedia`
  ADD CONSTRAINT `kamar_yang_tersedia_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_kamar_booked`) REFERENCES `kamar_booked` (`id_kamar`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_tamu`) REFERENCES `tamu` (`id_tamu`);

--
-- Constraints for table `tamu`
--
ALTER TABLE `tamu`
  ADD CONSTRAINT `tamu_ibfk_1` FOREIGN KEY (`kota`) REFERENCES `kota` (`id_kota`),
  ADD CONSTRAINT `tamu_ibfk_2` FOREIGN KEY (`negara`) REFERENCES `negara` (`id_negara`);

--
-- Constraints for table `tarif_kamar_hariini`
--
ALTER TABLE `tarif_kamar_hariini`
  ADD CONSTRAINT `tarif_kamar_hariini_ibfk_1` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_hotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
