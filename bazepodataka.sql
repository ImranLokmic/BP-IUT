-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 09:51 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bazepodataka`
--

-- --------------------------------------------------------

--
-- Table structure for table `automobili`
--

CREATE TABLE `automobili` (
  `VIN` varchar(255) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Lease` tinyint(1) DEFAULT NULL,
  `LeaseDate` timestamp NULL DEFAULT NULL,
  `LeaseAmount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `automobili`
--

INSERT INTO `automobili` (`VIN`, `Brand`, `Model`, `Year`, `Type`, `Lease`, `LeaseDate`, `LeaseAmount`) VALUES
('19XFA1F54AE028487', 'Hyundai', 'Palisade', 2020, 'SUV', NULL, NULL, NULL),
('1B7GG2AZX1S231691', 'Mercedes', 'GLC63', 2020, 'SUV', NULL, NULL, NULL),
('1C4BJWDG5DL645652', 'Mazda', 'CX-30', 2021, 'SUV', NULL, NULL, NULL),
('1FDWF30RX9EA83022', 'Mercedes', 'A-Class', 2021, 'Town Car', NULL, NULL, NULL),
('1FTSW21P07EA58444', 'BMW', 'X2', 2021, 'SUV', NULL, NULL, NULL),
('1G1AK55F367777693', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car', NULL, NULL, NULL),
('1G1ND52J83M647538', 'Mercedes', 'C-Class', 2021, 'Town Car', NULL, NULL, NULL),
('1G1ZB5E05CF201006', 'Toyota', 'RAV4', 2020, 'SUV', NULL, NULL, NULL),
('1G2WR1219YF111719', 'Hyundai', 'Kona', 2020, 'SUV', NULL, NULL, NULL),
('1G4CU541024231523', 'BMW', 'X2', 2021, 'SUV', NULL, NULL, NULL),
('1G4CW54K054104438', 'Hyundai', 'Accent', 2021, 'Town Car', NULL, NULL, NULL),
('1GCEC19X38Z103178', 'Mercedes', 'GLC43', 2020, 'SUV', NULL, NULL, NULL),
('1GNCT18Z2L0187489', 'Hyundai', 'Accent', 2021, 'Town Car', NULL, NULL, NULL),
('1GTHG35K181195400', 'BMW', 'X2', 2021, 'SUV', NULL, NULL, NULL),
('1HGCR2F88FA080616', 'Mercedes', 'C-Class', 2021, 'Town Car', NULL, NULL, NULL),
('1LNHM81W56Y667127', 'Volkswagen', 'Atlas', 2020, 'SUV', NULL, NULL, NULL),
('1N4AL11D13C282659', 'Hyundai', 'Kona', 2021, 'SUV', NULL, NULL, NULL),
('1N6AA0EJ3BN323481', 'BMW', 'X1', 2021, 'SUV', NULL, NULL, NULL),
('1XP5DB9X32N571881', 'Mercedes', 'A-Class', 2021, 'Town Car', NULL, NULL, NULL),
('1YVHP82H495M58943', 'Volvo', 'XC40', 2020, 'SUV', NULL, NULL, NULL),
('2C3KA43R18H248566', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car', NULL, NULL, NULL),
('2G2FS22K7T2273782', 'BMW', '3-Series', 2021, 'Town Car', NULL, NULL, NULL),
('2G4WB52K3T1409243', 'Kia', 'Rio', 2021, 'Town Car', NULL, NULL, NULL),
('2GCEC19T421245875', 'Mercedes', 'A-Class', 2021, 'Town Car', NULL, NULL, NULL),
('2T3BFREV2DW033731', 'Volkswagen', 'Tiguan', 2020, 'SUV', NULL, NULL, NULL),
('3C6JD6CT5CG111362', 'Volkswagen', 'Tiguan', 2021, 'SUV', NULL, NULL, NULL),
('3VW5X7AT0EM849999', 'Kia', 'Soul', 2021, 'SUV', NULL, NULL, NULL),
('4T4BF1FK9FR495680', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car', NULL, NULL, NULL),
('4V4NC9TH45N304515', 'Volvo', 'XC40', 2021, 'SUV', NULL, NULL, NULL),
('5N1AR2MM9EC689119', 'Mercedes', 'A-Class', 2020, 'Town Car', NULL, NULL, NULL),
('5TBET38106S556335', 'Mercedes', 'CLA-Class', 2020, 'Town Car', NULL, NULL, NULL),
('5TENL42N73Z179543', 'Kia', 'Telluride', 2020, 'SUV', NULL, NULL, NULL),
('73VWSF31Y17M431481', 'Mercedes', 'CLA-Class', 2020, 'Town Car', NULL, NULL, NULL),
('8WBAVL1C53EVY94397', 'Mercedes', 'CLA-Class', 2021, 'Town Car', NULL, NULL, NULL),
('JA3AW86V28U044184', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car', NULL, NULL, NULL),
('JA4LX41F65U041228', 'Hyundai', 'Kona', 2020, 'SUV', NULL, NULL, NULL),
('JN1AR5EF8EM248990', 'Mercedes', 'A-Class', 2021, 'Town Car', NULL, NULL, NULL),
('KM8JT3AF5FU092378', 'BMW', 'X1', 2021, 'SUV', NULL, NULL, NULL),
('WDCYC3HF5BX170234', 'Mercedes', 'A35', 2021, 'Town Car', NULL, NULL, NULL),
('WDDHF8HB9AA221796', 'BMW', '3-Series', 2021, 'Town Car', NULL, NULL, NULL),
('WMWZG3C59BTY84563', 'BMW', 'X1', 2020, 'SUV', NULL, NULL, NULL),
('WVWRH63B84P159667', 'Mercedes', 'A-Class', 2020, 'Town Car', NULL, NULL, NULL),
('YV140MEKXF1284754', 'BMW', 'X1', 2020, 'SUV', NULL, NULL, NULL),
('YV1KS9608V1191936', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `funkcije`
--

CREATE TABLE `funkcije` (
  `Funkcija` varchar(255) NOT NULL,
  `Ministarstvo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funkcije`
--

INSERT INTO `funkcije` (`Funkcija`, `Ministarstvo`) VALUES
('Ministar ministarstva finansija', 'Ministarstvo Finansija'),
('Pomo??nik ministra za trezor', 'Ministarstvo Finansija'),
('??ef Odsjeka za planiranje i izvr??enje bud??eta', 'Ministarstvo finansija'),
('??ef Odsjeka za ra??unovodstvo', 'Ministarstvo Finansija'),
('Sekretar ministarstva finansija', 'Ministarstvo Finansija'),
('Ministar ministarstva unutra??njih poslova', 'Ministarstvo unutra??njih poslova'),
('Savjetnik ministra ministarstva unutra??njih poslova', 'Ministarstvo unutra??njih poslova'),
('Sekretar ministarstva unutra??njih poslova', 'Ministarstvo unutra??njih poslova'),
('Ministar ministarstva za bora??ka pitanja', 'Ministarstvo za bora??ka pitanja'),
('Sekretar ministarstva za bora??ka pitanja', 'Ministarstvo za bora??ka pitanja'),
('Direktor Pedago??kog zavoda', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Glavni kantonalni inspektor za obrazovanje i nauku', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Ministar ministarstva za obrazovanje, nauku, kulturu i sport', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za kulturu i sport', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za planiranje, analitiku i poslove saobra??ajne edukacije', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za pred??kolsko, osnovno i srednje obrazovanje i odgoj i obrazovanje odraslih', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za visoko obrazovanje i nauku', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Ministar ministarstva za poljoprivredu, ??umarstvo i vodoprivredu', 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu'),
('Sekretar ministarstva za poljoprivredu, ??umarstvo i vodoprivredu', 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu'),
('Ministar ministarstva za pravosu??e i upravu', 'Ministarstvo za pravosu??e i upravu'),
('Sekretar ministarstva za pravosu??e i upravu', 'Ministarstvo za pravosu??e i upravu'),
('Ministar ministarstva za privredu', 'Ministarstvo za privredu'),
('Sekretar ministarstva za privredu', 'Ministarstvo za privredu'),
('Ministar ministarstva za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline'),
('Sekretar ministarstva za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline'),
('Ministar ministarstva za rad, socijalnu politiku i izbjeglice', 'Ministarstvo za rad, socijalnu politiku i izbjeglice'),
('Sekretar ministarstva za rad, socijalnu politiku i izbjeglice', 'Ministarstvo za rad, socijalnu politiku i izbjeglice'),
('Ministar ministarstva zdravstva', 'Ministarstvo zdravstva'),
('Sekretar ministarstva zdravstva', 'Ministarstvo zdravstva');

-- --------------------------------------------------------

--
-- Table structure for table `ministarstva`
--

CREATE TABLE `ministarstva` (
  `Ministarstvo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ministarstva`
--

INSERT INTO `ministarstva` (`Ministarstvo`, `email`, `telefon`) VALUES
('Ministarstvo Finansija', 'min.finansije@zdk.ba', '+38732460771'),
('Ministarstvo unutra??njih poslova', 'mupzdk@mupzdk.gov.ba', '+38732449240'),
('Ministarstvo za bora??ka pitanja', 'min.boracka@zdk.ba', '+38732460790'),
('Ministarstvo za obrazovanje, nauku, kulturu i sport', 'min.obrazovanje@zdk.ba', '+38732460840'),
('Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu', 'min.poljoprivreda@zdk.ba', '+38732460750'),
('Ministarstvo za pravosu??e i upravu', 'min.pravosudje@zdk.ba', '+38732460740'),
('Ministarstvo za privredu', 'min.privreda@zdk.ba', '+38732460720'),
('Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'min.prostorno@zdk.ba', '+38732460700'),
('Ministarstvo za rad, socijalnu politiku i izbjeglice', 'min.rad@zdk.ba', '+38732460680'),
('Ministarstvo zdravstva', 'min.zdravstvo@zdk.ba', '+38732460830');

-- --------------------------------------------------------

--
-- Table structure for table `uposlenici`
--

CREATE TABLE `uposlenici` (
  `UPOID` int(11) NOT NULL,
  `Ministarstvo` varchar(255) NOT NULL,
  `Funkcija` varchar(255) NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uposlenici`
--

INSERT INTO `uposlenici` (`UPOID`, `Ministarstvo`, `Funkcija`, `Ime`, `Prezime`) VALUES
(1, 'Ministarstvo finansija', 'Ministar Ministarstva Finansija', 'Josip', 'Lovri??'),
(2, 'Ministarstvo finansija', 'Sekretar Ministarstva Finansija', 'Adis', '??ehi??'),
(3, 'Ministarstvo finansija', 'Pomo??nik ministra za trezor', 'Nada', 'Deliba??i??'),
(4, 'Ministarstvo finansija', '??ef Odsjeka za ra??unovodstvo', 'Edina', 'Dogan'),
(5, 'Ministarstvo finansija', '??ef Odsjeka za planiranje i izvr??enje bud??eta', 'Nermin', 'Piljug'),
(6, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Direktor Pedago??kog zavoda', 'Aida', 'Salki??'),
(7, 'Ministarstvo za privredu', 'Ministar ministarstva za privredu', 'Zlatko', 'Jeli??'),
(8, 'Ministarstvo za privredu', 'Sekretar ministarstva za privredu', 'Ljiljana', 'An??eli??'),
(9, 'Ministarstvo za pravosu??e i upravu', 'Ministar ministarstva za pravosu??e i upravu', 'Neboj??a', 'Nikoli??'),
(10, 'Ministarstvo za pravosu??e i upravu', 'Sekretar ministarstva za pravosu??e i upravu', 'Ru??ica', 'Juki??-Ezgeta'),
(11, 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu', 'Ministar ministarstva za poljoprivredu, ??umarstvo i vodoprivredu', 'Mirsad', 'Had??i??'),
(12, 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu', 'Sekretar ministarstva za poljoprivredu, ??umarstvo i vodoprivredu', 'Samra', '??lanjak'),
(13, 'Ministarstvo unutra??njih poslova', 'Ministar ministarstva unutra??njih poslova', 'Dario', 'Peki??'),
(14, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Ministar ministarstva za obrazovanje, nauku, kulturu i sport', 'Spahija', 'Kozli??'),
(15, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za kulturu i sport', 'Marinko', 'Toki??'),
(16, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za planiranje, analitiku i poslove saobra??ajne edukacije', 'Mehmed', 'Mustaba??i??'),
(17, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za pred??kolsko, osnovno i srednje obrazovanje i odgoj i obrazovanje odraslih', 'Bernadeta', 'Galija??evi??'),
(18, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomo??nik ministra ministarstva za obrazovanje, nauku, kulturu i sport za visoko obrazovanje i nauku', '??eljko', 'Bodul'),
(19, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Glavni kantonalni inspektor za obrazovanje i nauku', 'Mujo', 'Ku??anovi??'),
(20, 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Ministar ministarstva za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Arnel', 'Isak'),
(21, 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Sekretar ministarstva za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Na??a', 'Mi??i??'),
(22, 'Ministarstvo zdravstva', 'Ministar ministarstva zdravstva', 'Adnan', 'Jupi??'),
(23, 'Ministarstvo zdravstva', 'Sekretar ministarstva zdravstva', 'Indira', 'Krujeziu'),
(24, 'Ministarstvo za bora??ka pitanja', 'Ministar ministarstva za bora??ka pitanja', 'Fahrudin', '??olakovi??'),
(25, 'Ministarstvo za bora??ka pitanja', 'Sekretar ministarstva za bora??ka pitanja', 'Aida', 'Top??i??'),
(26, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Ministar ministarstva za rad, socijalnu politiku i izbjeglice', 'Azra', '??abanovi??'),
(27, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Sekretar ministarstva za rad, socijalnu politiku i izbjeglice', 'Dijana', 'Dedi??');

-- --------------------------------------------------------

--
-- Table structure for table `vozaci`
--

CREATE TABLE `vozaci` (
  `VOZID` int(11) NOT NULL,
  `Ministarstvo` varchar(255) NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `Lease` tinyint(1) DEFAULT NULL,
  `LeaseDate` timestamp NULL DEFAULT NULL,
  `LeaseAmount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vozaci`
--

INSERT INTO `vozaci` (`VOZID`, `Ministarstvo`, `Ime`, `Prezime`, `telefon`, `Lease`, `LeaseDate`, `LeaseAmount`) VALUES
(1, 'Ministarstvo Finansija', 'Sead', 'Muji??', '+38762458946', NULL, NULL, NULL),
(2, 'Ministarstvo Finansija', 'Muhamed', 'Begovi??', '+38761236742', NULL, NULL, NULL),
(3, 'Ministarstvo Finansija', 'Omer', 'Tahirovi??', '+38761255612', NULL, NULL, NULL),
(4, 'Ministarstvo unutra??njih poslova', 'Amel', 'Smaji??', '+38761648313', NULL, NULL, NULL),
(5, 'Ministarstvo unutra??njih poslova', 'Haris', 'Spahi??', '+38761568423', NULL, NULL, NULL),
(6, 'Ministarstvo unutra??njih poslova', 'Abdulah', 'Agi??', '+38761568133', NULL, NULL, NULL),
(7, 'Ministarstvo za bora??ka pitanja', 'Ivan', 'Mandi??', '+38761567478', NULL, NULL, NULL),
(8, 'Ministarstvo za bora??ka pitanja', 'Josip', 'Kova??', '+38761327143', NULL, NULL, NULL),
(9, 'Ministarstvo za bora??ka pitanja', 'Benjamin', '??abanovi??', '+38761312251', NULL, NULL, NULL),
(10, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Ejub', 'Tahirovi??', '+38761132123', NULL, NULL, NULL),
(11, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Rasim', 'Beganovi??', '+38761131233', NULL, NULL, NULL),
(12, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Petar', 'Mijatovi??', '+38761975133', NULL, NULL, NULL),
(13, 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu', 'Ajdin', 'Majstorovi??', '+38761783133', NULL, NULL, NULL),
(14, 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu', 'Jusuf', '??ehovi??', '+38761682931', NULL, NULL, NULL),
(15, 'Ministarstvo za poljoprivredu, ??umarstvo i vodoprivredu', 'Ismet', 'Luki??', '+38762513211', NULL, NULL, NULL),
(16, 'Ministarstvo za pravosu??e i upravu', 'Lejla', 'Zahirovi??', '+38763512131', NULL, NULL, NULL),
(17, 'Ministarstvo za pravosu??e i upravu', 'Vildana', 'Bijedi??', '+38763143571', NULL, NULL, NULL),
(18, 'Ministarstvo za privredu', 'Enesa', 'Sokolovi??', '+38762312651', NULL, NULL, NULL),
(19, 'Ministarstvo za pravosu??e i upravu', 'Amra', 'Vidovi??', '+38763312571', NULL, NULL, NULL),
(20, 'Ministarstvo za privredu', 'Esma', 'Husi??', '+38762784981', NULL, NULL, NULL),
(21, 'Ministarstvo za privredu', 'Suada', 'Sokolovi??', '+38762621251', NULL, NULL, NULL),
(22, 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Lamija', '??engi??', '+38762731312', NULL, NULL, NULL),
(23, 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Ajla', 'Jahi??', '+38762782122', NULL, NULL, NULL),
(24, 'Ministarstvo za prostorno ure??enje, promet i komunikacije i za??titu okoline', 'Emina', 'Bi??ak??i??', '+38762951371', NULL, NULL, NULL),
(25, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Almedina', 'Salihovi??', '+38762315321', NULL, NULL, NULL),
(26, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Amra', '??engi??', '+38764561231', NULL, NULL, NULL),
(27, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Meliha', 'Ja??arspahi??', '+38764742111', NULL, NULL, NULL),
(28, 'Ministarstvo zdravstva', 'Lejla', 'Kapetanovi??', '+38764734123', NULL, NULL, NULL),
(29, 'Ministarstvo zdravstva', 'Azra', '??ehi??', '+38764326663', NULL, NULL, NULL),
(30, 'Ministarstvo zdravstva', 'Ajna', 'Musli??', '+38764353663', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `automobili`
--
ALTER TABLE `automobili`
  ADD PRIMARY KEY (`VIN`),
  ADD UNIQUE KEY `VIN` (`VIN`);

--
-- Indexes for table `funkcije`
--
ALTER TABLE `funkcije`
  ADD PRIMARY KEY (`Funkcija`),
  ADD KEY `Ministarstvo` (`Ministarstvo`);

--
-- Indexes for table `ministarstva`
--
ALTER TABLE `ministarstva`
  ADD PRIMARY KEY (`Ministarstvo`);

--
-- Indexes for table `uposlenici`
--
ALTER TABLE `uposlenici`
  ADD PRIMARY KEY (`UPOID`),
  ADD UNIQUE KEY `UPOID` (`UPOID`),
  ADD KEY `Ministarstvo` (`Ministarstvo`),
  ADD KEY `Funkcija` (`Funkcija`);

--
-- Indexes for table `vozaci`
--
ALTER TABLE `vozaci`
  ADD PRIMARY KEY (`VOZID`),
  ADD UNIQUE KEY `VOZID` (`VOZID`),
  ADD UNIQUE KEY `telefon` (`telefon`),
  ADD KEY `Ministarstvo` (`Ministarstvo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vozaci`
--
ALTER TABLE `vozaci`
  MODIFY `VOZID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `funkcije`
--
ALTER TABLE `funkcije`
  ADD CONSTRAINT `funkcije_ibfk_1` FOREIGN KEY (`Ministarstvo`) REFERENCES `ministarstva` (`Ministarstvo`);

--
-- Constraints for table `uposlenici`
--
ALTER TABLE `uposlenici`
  ADD CONSTRAINT `uposlenici_ibfk_1` FOREIGN KEY (`Ministarstvo`) REFERENCES `ministarstva` (`Ministarstvo`),
  ADD CONSTRAINT `uposlenici_ibfk_2` FOREIGN KEY (`Funkcija`) REFERENCES `funkcije` (`Funkcija`);

--
-- Constraints for table `vozaci`
--
ALTER TABLE `vozaci`
  ADD CONSTRAINT `vozaci_ibfk_1` FOREIGN KEY (`Ministarstvo`) REFERENCES `ministarstva` (`Ministarstvo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
