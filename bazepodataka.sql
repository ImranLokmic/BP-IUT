-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 04:53 PM
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
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `automobili`
--

INSERT INTO `automobili` (`VIN`, `Brand`, `Model`, `Year`, `Type`) VALUES
('19XFA1F54AE028487', 'Hyundai', 'Palisade', 2020, 'SUV'),
('1B7GG2AZX1S231691', 'Mercedes', 'GLC63', 2020, 'SUV'),
('1C4BJWDG5DL645652', 'Mazda', 'CX-30', 2021, 'SUV'),
('1FDWF30RX9EA83022', 'Mercedes', 'A-Class', 2021, 'Town Car'),
('1FTSW21P07EA58444', 'BMW', 'X2', 2021, 'SUV'),
('1G1AK55F367777693', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car'),
('1G1ND52J83M647538', 'Mercedes', 'C-Class', 2021, 'Town Car'),
('1G1ZB5E05CF201006', 'Toyota', 'RAV4', 2020, 'SUV'),
('1G2WR1219YF111719', 'Hyundai', 'Kona', 2020, 'SUV'),
('1G4CU541024231523', 'BMW', 'X2', 2021, 'SUV'),
('1G4CW54K054104438', 'Hyundai', 'Accent', 2021, 'Town Car'),
('1GCEC19X38Z103178', 'Mercedes', 'GLC43', 2020, 'SUV'),
('1GNCT18Z2L0187489', 'Hyundai', 'Accent', 2021, 'Town Car'),
('1GTHG35K181195400', 'BMW', 'X2', 2021, 'SUV'),
('1HGCR2F88FA080616', 'Mercedes', 'C-Class', 2021, 'Town Car'),
('1LNHM81W56Y667127', 'Volkswagen', 'Atlas', 2020, 'SUV'),
('1N4AL11D13C282659', 'Hyundai', 'Kona', 2021, 'SUV'),
('1N6AA0EJ3BN323481', 'BMW', 'X1', 2021, 'SUV'),
('1XP5DB9X32N571881', 'Mercedes', 'A-Class', 2021, 'Town Car'),
('1YVHP82H495M58943', 'Volvo', 'XC40', 2020, 'SUV'),
('2C3KA43R18H248566', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car'),
('2G2FS22K7T2273782', 'BMW', '3-Series', 2021, 'Town Car'),
('2G4WB52K3T1409243', 'Kia', 'Rio', 2021, 'Town Car'),
('2GCEC19T421245875', 'Mercedes', 'A-Class', 2021, 'Town Car'),
('2T3BFREV2DW033731', 'Volkswagen', 'Tiguan', 2020, 'SUV'),
('3C6JD6CT5CG111362', 'Volkswagen', 'Tiguan', 2021, 'SUV'),
('3VW5X7AT0EM849999', 'Kia', 'Soul', 2021, 'SUV'),
('4T4BF1FK9FR495680', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car'),
('4V4NC9TH45N304515', 'Volvo', 'XC40', 2021, 'SUV'),
('5N1AR2MM9EC689119', 'Mercedes', 'A-Class', 2020, 'Town Car'),
('5TBET38106S556335', 'Mercedes', 'CLA-Class', 2020, 'Town Car'),
('5TENL42N73Z179543', 'Kia', 'Telluride', 2020, 'SUV'),
('73VWSF31Y17M431481', 'Mercedes', 'CLA-Class', 2020, 'Town Car'),
('8WBAVL1C53EVY94397', 'Mercedes', 'CLA-Class', 2021, 'Town Car'),
('JA3AW86V28U044184', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car'),
('JA4LX41F65U041228', 'Hyundai', 'Kona', 2020, 'SUV'),
('JN1AR5EF8EM248990', 'Mercedes', 'A-Class', 2021, 'Town Car'),
('KM8JT3AF5FU092378', 'BMW', 'X1', 2021, 'SUV'),
('WDCYC3HF5BX170234', 'Mercedes', 'A35', 2021, 'Town Car'),
('WDDHF8HB9AA221796', 'BMW', '3-Series', 2021, 'Town Car'),
('WMWZG3C59BTY84563', 'BMW', 'X1', 2020, 'SUV'),
('WVWRH63B84P159667', 'Mercedes', 'A-Class', 2020, 'Town Car'),
('YV140MEKXF1284754', 'BMW', 'X1', 2020, 'SUV'),
('YV1KS9608V1191936', 'Volkswagen', 'Jetta GLI', 2021, 'Town Car');

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
('Pomoćnik ministra za trezor', 'Ministarstvo Finansija'),
('Šef Odsjeka za planiranje i izvršenje budžeta', 'Ministarstvo finansija'),
('Šef Odsjeka za računovodstvo', 'Ministarstvo Finansija'),
('Sekretar ministarstva finansija', 'Ministarstvo Finansija'),
('Ministar ministarstva unutrašnjih poslova', 'Ministarstvo unutrašnjih poslova'),
('Savjetnik ministra ministarstva unutrašnjih poslova', 'Ministarstvo unutrašnjih poslova'),
('Sekretar ministarstva unutrašnjih poslova', 'Ministarstvo unutrašnjih poslova'),
('Ministar ministarstva za boračka pitanja', 'Ministarstvo za boračka pitanja'),
('Sekretar ministarstva za boračka pitanja', 'Ministarstvo za boračka pitanja'),
('Direktor Pedagoškog zavoda', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Glavni kantonalni inspektor za obrazovanje i nauku', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Ministar ministarstva za obrazovanje, nauku, kulturu i sport', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za kulturu i sport', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za planiranje, analitiku i poslove saobraćajne edukacije', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za predškolsko, osnovno i srednje obrazovanje i odgoj i obrazovanje odraslih', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za visoko obrazovanje i nauku', 'Ministarstvo za obrazovanje, nauku, kulturu i sport'),
('Ministar ministarstva za poljoprivredu, šumarstvo i vodoprivredu', 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu'),
('Sekretar ministarstva za poljoprivredu, šumarstvo i vodoprivredu', 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu'),
('Ministar ministarstva za pravosuđe i upravu', 'Ministarstvo za pravosuđe i upravu'),
('Sekretar ministarstva za pravosuđe i upravu', 'Ministarstvo za pravosuđe i upravu'),
('Ministar ministarstva za privredu', 'Ministarstvo za privredu'),
('Sekretar ministarstva za privredu', 'Ministarstvo za privredu'),
('Ministar ministarstva za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline'),
('Sekretar ministarstva za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline'),
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
('Ministarstvo unutrašnjih poslova', 'mupzdk@mupzdk.gov.ba', '+38732449240'),
('Ministarstvo za boračka pitanja', 'min.boracka@zdk.ba', '+38732460790'),
('Ministarstvo za obrazovanje, nauku, kulturu i sport', 'min.obrazovanje@zdk.ba', '+38732460840'),
('Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu', 'min.poljoprivreda@zdk.ba', '+38732460750'),
('Ministarstvo za pravosuđe i upravu', 'min.pravosudje@zdk.ba', '+38732460740'),
('Ministarstvo za privredu', 'min.privreda@zdk.ba', '+38732460720'),
('Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'min.prostorno@zdk.ba', '+38732460700'),
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
(1, 'Ministarstvo finansija', 'Ministar Ministarstva Finansija', 'Josip', 'Lovrić'),
(2, 'Ministarstvo finansija', 'Sekretar Ministarstva Finansija', 'Adis', 'Ćehić'),
(3, 'Ministarstvo finansija', 'Pomoćnik ministra za trezor', 'Nada', 'Delibašić'),
(4, 'Ministarstvo finansija', 'Šef Odsjeka za računovodstvo', 'Edina', 'Dogan'),
(5, 'Ministarstvo finansija', 'Šef Odsjeka za planiranje i izvršenje budžeta', 'Nermin', 'Piljug'),
(6, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Direktor Pedagoškog zavoda', 'Aida', 'Salkić'),
(7, 'Ministarstvo za privredu', 'Ministar ministarstva za privredu', 'Zlatko', 'Jelić'),
(8, 'Ministarstvo za privredu', 'Sekretar ministarstva za privredu', 'Ljiljana', 'Anđelić'),
(9, 'Ministarstvo za pravosuđe i upravu', 'Ministar ministarstva za pravosuđe i upravu', 'Nebojša', 'Nikolić'),
(10, 'Ministarstvo za pravosuđe i upravu', 'Sekretar ministarstva za pravosuđe i upravu', 'Ružica', 'Jukić-Ezgeta'),
(11, 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu', 'Ministar ministarstva za poljoprivredu, šumarstvo i vodoprivredu', 'Mirsad', 'Hadžić'),
(12, 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu', 'Sekretar ministarstva za poljoprivredu, šumarstvo i vodoprivredu', 'Samra', 'Članjak'),
(13, 'Ministarstvo unutrašnjih poslova', 'Ministar ministarstva unutrašnjih poslova', 'Dario', 'Pekić'),
(14, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Ministar ministarstva za obrazovanje, nauku, kulturu i sport', 'Spahija', 'Kozlić'),
(15, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za kulturu i sport', 'Marinko', 'Tokić'),
(16, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za planiranje, analitiku i poslove saobraćajne edukacije', 'Mehmed', 'Mustabašić'),
(17, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za predškolsko, osnovno i srednje obrazovanje i odgoj i obrazovanje odraslih', 'Bernadeta', 'Galijašević'),
(18, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Pomoćnik ministra ministarstva za obrazovanje, nauku, kulturu i sport za visoko obrazovanje i nauku', 'Željko', 'Bodul'),
(19, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Glavni kantonalni inspektor za obrazovanje i nauku', 'Mujo', 'Kućanović'),
(20, 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Ministar ministarstva za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Arnel', 'Isak'),
(21, 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Sekretar ministarstva za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Nađa', 'Mišić'),
(22, 'Ministarstvo zdravstva', 'Ministar ministarstva zdravstva', 'Adnan', 'Jupić'),
(23, 'Ministarstvo zdravstva', 'Sekretar ministarstva zdravstva', 'Indira', 'Krujeziu'),
(24, 'Ministarstvo za boračka pitanja', 'Ministar ministarstva za boračka pitanja', 'Fahrudin', 'Čolaković'),
(25, 'Ministarstvo za boračka pitanja', 'Sekretar ministarstva za boračka pitanja', 'Aida', 'Topčić'),
(26, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Ministar ministarstva za rad, socijalnu politiku i izbjeglice', 'Azra', 'Šabanović'),
(27, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Sekretar ministarstva za rad, socijalnu politiku i izbjeglice', 'Dijana', 'Dedić');

-- --------------------------------------------------------

--
-- Table structure for table `vozaci`
--

CREATE TABLE `vozaci` (
  `VOZID` int(11) NOT NULL,
  `Ministarstvo` varchar(255) NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vozaci`
--

INSERT INTO `vozaci` (`VOZID`, `Ministarstvo`, `Ime`, `Prezime`, `telefon`) VALUES
(1, 'Ministarstvo Finansija', 'Sead', 'Mujić', '+38762458946'),
(2, 'Ministarstvo Finansija', 'Muhamed', 'Begović', '+38761236742'),
(3, 'Ministarstvo Finansija', 'Omer', 'Tahirović', '+38761255612'),
(4, 'Ministarstvo unutrašnjih poslova', 'Amel', 'Smajić', '+38761648313'),
(5, 'Ministarstvo unutrašnjih poslova', 'Haris', 'Spahić', '+38761568423'),
(6, 'Ministarstvo unutrašnjih poslova', 'Abdulah', 'Agić', '+38761568133'),
(7, 'Ministarstvo za boračka pitanja', 'Ivan', 'Mandić', '+38761567478'),
(8, 'Ministarstvo za boračka pitanja', 'Josip', 'Kovač', '+38761327143'),
(9, 'Ministarstvo za boračka pitanja', 'Benjamin', 'Šabanović', '+38761312251'),
(10, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Ejub', 'Tahirović', '+38761132123'),
(11, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Rasim', 'Beganović', '+38761131233'),
(12, 'Ministarstvo za obrazovanje, nauku, kulturu i sport', 'Petar', 'Mijatović', '+38761975133'),
(13, 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu', 'Ajdin', 'Majstorović', '+38761783133'),
(14, 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu', 'Jusuf', 'Šehović', '+38761682931'),
(15, 'Ministarstvo za poljoprivredu, šumarstvo i vodoprivredu', 'Ismet', 'Lukić', '+38762513211'),
(16, 'Ministarstvo za pravosuđe i upravu', 'Lejla', 'Zahirović', '+38763512131'),
(17, 'Ministarstvo za pravosuđe i upravu', 'Vildana', 'Bijedić', '+38763143571'),
(18, 'Ministarstvo za privredu', 'Enesa', 'Sokolović', '+38762312651'),
(19, 'Ministarstvo za pravosuđe i upravu', 'Amra', 'Vidović', '+38763312571'),
(20, 'Ministarstvo za privredu', 'Esma', 'Husić', '+38762784981'),
(21, 'Ministarstvo za privredu', 'Suada', 'Sokolović', '+38762621251'),
(22, 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Lamija', 'Čengić', '+38762731312'),
(23, 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Ajla', 'Jahić', '+38762782122'),
(24, 'Ministarstvo za prostorno uređenje, promet i komunikacije i zaštitu okoline', 'Emina', 'Bičakčić', '+38762951371'),
(25, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Almedina', 'Salihović', '+38762315321'),
(26, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Amra', 'Čengić', '+38764561231'),
(27, 'Ministarstvo za rad, socijalnu politiku i izbjeglice', 'Meliha', 'Jašarspahić', '+38764742111'),
(28, 'Ministarstvo zdravstva', 'Lejla', 'Kapetanović', '+38764734123'),
(29, 'Ministarstvo zdravstva', 'Azra', 'Šehić', '+38764326663'),
(30, 'Ministarstvo zdravstva', 'Ajna', 'Muslić', '+38764353663');

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
