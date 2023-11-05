-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 05, 2023 at 06:26 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baza_danych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `cat_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `addres` text NOT NULL,
  `localisation` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `domicile`
--

CREATE TABLE `domicile` (
  `domicile_id` int(11) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `offer`
--

CREATE TABLE `offer` (
  `offer_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `position` text NOT NULL,
  `position_lvl` text NOT NULL,
  `contract` text NOT NULL,
  `employment_dimensions` text NOT NULL,
  `work_type` enum('zdalna','stacjonarna','hybrydowa','') NOT NULL,
  `payment_min` int(11) NOT NULL,
  `payment_max` int(11) NOT NULL,
  `work_days` set('poniedziałek','wtorek','środa','czwartek','piątek','sobota','niedziela') NOT NULL,
  `work_hours` text NOT NULL,
  `expiration_date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `responsibilities` text NOT NULL,
  `requirements` text NOT NULL,
  `benefits` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `surname` tinytext NOT NULL,
  `birth_date` date NOT NULL,
  `mail` tinytext NOT NULL,
  `telephone` tinyint(9) NOT NULL,
  `profile_pic` text NOT NULL,
  `domicile` int(11) NOT NULL,
  `current_position` text NOT NULL,
  `current_position_description` text NOT NULL,
  `experience_summary` int(11) NOT NULL,
  `education` text NOT NULL,
  `language` text NOT NULL,
  `language_lvl` enum('A1','A2','B1','B2','C1','C2') NOT NULL,
  `skills` text NOT NULL,
  `certificates` text NOT NULL,
  `links` int(11) NOT NULL,
  `password_hash` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeksy dla tabeli `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indeksy dla tabeli `domicile`
--
ALTER TABLE `domicile`
  ADD PRIMARY KEY (`domicile_id`);

--
-- Indeksy dla tabeli `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domicile`
--
ALTER TABLE `domicile`
  MODIFY `domicile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
