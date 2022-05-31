-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 31 Maj 2022, 21:51
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `formularz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(255) NOT NULL,
  `id_char` varchar(1) DEFAULT NULL,
  `Pytanie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id`, `id_char`, `Pytanie`) VALUES
(1, 'K', 'Czy chciałbyś mieć taką pracę, w której kierujesz działaniami innych pracowników? '),
(2, 'K', 'Czy lubisz brać na siebie odpowiedzialność za zadania i wywiązywać się z nich? '),
(3, 'K', 'Czy lubisz kierować działaniami innych ludzi? '),
(4, 'K', 'Czy chciałbyś mieć taką pracę, w której byłbyś odpowiedzialny za podejmowanie decyzji? '),
(5, 'K', 'Czy pełniłeś kiedykolwiek rolę lidera w jakimś zespole lub organizacji? '),
(6, 'K', 'Czy jest dla Ciebie ważne, aby mieć osiągnięcia większe niż inni? '),
(7, 'K', 'Czy byłeś kiedyś odpowiedzialny za taki projekt albo zadanie, które wymagało dopilnowania różnych szczegółów, aby mogło zostać wykonane w całości? '),
(8, 'K', 'Czy kiedyś byłeś odpowiedzialny za planowanie działań, które miał wykonać ktoś inny? '),
(9, 'K', 'Czy wolisz raczej kierować pracą grupy niż być jej członkiem?'),
(10, 'K', 'Czy myślisz że masz dużą siłę przekonywania innych do swoich racji? ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test`
--

CREATE TABLE `test` (
  `id` int(255) NOT NULL,
  `id_char` varchar(1) DEFAULT NULL,
  `Pytanie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `test`
--

INSERT INTO `test` (`id`, `id_char`, `Pytanie`) VALUES
(9, 'K', 'Czy chciałbyś mieć taką pracę, w której kierujesz działaniami innych pracowników? '),
(10, 'K', 'Czy lubisz brać na siebie odpowiedzialność za zadania i wywiązywać się z nich? '),
(11, 'S', 'Czy zdarza Ci się pomóc innym nie oczekując niczego w zamian?'),
(12, 'S', 'Czy zdarza Ci się mieć lepsze pomysły od Twoich kolegów/koleżanek na rozwiązanie jakiegoś zadania?'),
(13, 'M', 'Czy sprawia Ci satysfakcję doprowadzenie jakiegoś zadania do końca?'),
(14, 'M', 'Czy wolałbyś mieć taką pracę, w której zawsze będziesz wiedział, czego się od ciebie oczekuje?'),
(15, 'I', 'Czy czujesz się dobrze, gdy jesteś odpowiedzialny za wiele spraw jednocześnie?'),
(16, 'I', 'Czy lubisz kanał naukowy Discovery Chanell, czasopismo National Geographic lub inne tego typu?'),
(17, 'T', 'Czy lubisz konstruować i naprawiać różne rzeczy?'),
(18, 'T', 'Czy potrafisz projektować, wymyślać lub tworzyć różne przedmioty?');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `test`
--
ALTER TABLE `test`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
