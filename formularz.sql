-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Cze 2022, 11:42
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

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
(10, 'K', 'Czy myślisz że masz dużą siłę przekonywania innych do swoich racji? '),
(25, 'S', 'Czy zdarza Ci się pomóc innym nie oczekując niczego\r\nw zamian?'),
(26, 'S', 'Czy zdarza Ci się mieć lepsze pomysły od Twoich\r\nkolegów/koleżanek na rozwiązanie jakiegoś zadania?'),
(27, 'S', 'Czy zdarzało Ci się pomagać ludziom, którzy są czymś\r\nzmartwieni? '),
(28, 'S', 'Czy chciałbyś podczas wakacji dorabiać sobie pracą\r\nankietera i pytać ludzi o ich opinie w różnych sprawach?'),
(29, 'S', 'Czy mógłbyś przebywać z ludźmi, którzy są chorzy lub mają\r\njakieś problemy życiowe?'),
(30, 'S', 'Czy chciałbyś mieć pracę, która jest związana z poprawą\r\nwarunków życia innych ludzi?'),
(31, 'S', 'Czy chciałbyś mieć pracę związaną ze służbą dla\r\nokreślonego środowiska? '),
(32, 'S', 'Czy chciałbyś mieć stanowisko, które wymaga kontaktu\r\nz ludźmi przez cały dzień?'),
(33, 'S', 'Czy współpraca z ludźmi przychodzi ci łatwo?'),
(34, 'S', 'Czy potrafisz organizować i nadzorować pracę innych ludzi?'),
(35, 'M', 'Czy sprawia Ci satysfakcję doprowadzenie jakiegoś zadania\r\ndo końca?'),
(36, 'M', 'Czy wolałbyś mieć taką pracę, w której zawsze będziesz\r\nwiedział, czego się od ciebie oczekuje?'),
(37, 'M', 'Czy projekty lub inne prace wykonujesz dokładnie, krok po\r\nkroku?'),
(38, 'M', 'Czy chciałbyś opierać się w swojej pracy na wyraźnie\r\nokreślonych zasadach i regułach?'),
(39, 'M', 'Czy potrafisz pracować nad jakimś zadaniem przez dłuższy\r\nczas?'),
(40, 'M', 'Czy lubisz pracować według wskazówek innych ludzi?'),
(41, 'M', 'Czy chciałbyś mieć taką pracę, gdzie twoje czynności są na\r\nogół ściśle kontrolowane?'),
(42, 'M', 'Czy podejmujesz się nowego zadania wtedy, gdy skończysz\r\npoprzednie?'),
(43, 'M', 'Czy chciałbyś mieć stanowisko pracy, które wymaga stałego\r\nposzerzania swoich umiejętności?'),
(44, 'M', 'Czy umiesz przyjmować polecenia od innych?'),
(45, 'I', 'Czy czujesz się dobrze, gdy jesteś odpowiedzialny za wiele\r\nspraw jednocześnie?'),
(46, 'I', 'Czy lubisz kanał naukowy Discovery Chanell, czasopismo\r\nNational Geographic lub inne tego typu?'),
(47, 'I', 'Czy lubisz zagłębiać się w problemy, nad którymi pracujesz?'),
(48, 'I', 'Czy rozwiązując problem, chciałbyś opierać się na\r\nniepodważalnych faktach?'),
(49, 'I', 'Czy podobałaby Ci się praca, w której każdy dzień niósłby\r\nnowe, różnorodne zadania?'),
(50, 'I', 'Czy chciałbyś wykonywać pracę archeologa?'),
(51, 'I', 'Czy jesteś w stanie radzić sobie w sytuacji, gdy nieustannie\r\ndzieje się coś nowego i ciekawego?'),
(52, 'I', 'Czy lubisz realizować zadania, które pozwalają odkrywać\r\nnieznane Ci rzeczy, zagadnienia, fakty?'),
(53, 'I', 'Czy eksperymentowałeś i wykorzystywałeś różne pomysły,\r\naby rozwiązać jakiś problem?'),
(54, 'I', 'Czy lubisz takie działania, których wynik daje się obiektywnie\r\nzmierzyć?'),
(55, 'T', 'Czy lubisz konstruować i naprawiać różne rzeczy?'),
(56, 'T', 'Czy potrafisz projektować, wymyślać lub tworzyć różne\r\nprzedmioty?'),
(57, 'T', 'Czy masz jakieś własne hobby?'),
(58, 'T', 'Czy odwiedzasz w Internecie portale z grami i łamigłówkami\r\nlogicznymi?'),
(59, 'T', 'Czy podoba Ci się praca wymagająca używania narzędzi\r\nlub maszyn?'),
(60, 'T', 'Czy chciałbyś pracować z materiałem takim jak drewno, glina,\r\nmetal, kamień, tkanina?'),
(61, 'T', 'Czy chciałbyś być przez cały dzień operatorem jakiegoś\r\nurządzenia?'),
(62, 'T', 'Czy potrafisz wyjaśnić zasadę działania telefonu\r\nkomórkowego?'),
(63, 'T', 'Czy cieszy Cię, kiedy dzięki książkom lub programom\r\ntelewizyjnym możesz dowiedzieć się, jak działają różne\r\nurządzenia?'),
(64, 'T', 'Czy raczej wolałbyś pracę nie wymagająca kontaktu\r\nz ludźmi?');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania2`
--

CREATE TABLE `pytania2` (
  `id` int(255) NOT NULL,
  `Pytanie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pytania2`
--

INSERT INTO `pytania2` (`id`, `Pytanie`) VALUES
(1, 'Nie zależy mi specjalnie na tym, żeby być dobrym uczniem.'),
(2, 'Bardzo lubię uczestniczyć w różnorodnych zajęciach pozaszkolnych.'),
(3, 'Szkołę da się lubić, bez niej byłoby okropnie nudno.'),
(4, 'Wcześnie w życiu wykonywałem różne drobne prace.'),
(5, 'Nie przejmuję się zbytnio tym, co myślą o mnie inni.'),
(6, 'Zdarza się, że podejmuję ryzyko dla emocji.'),
(7, 'Zadania muszę zaplanować i zorganizować przed ich wykonaniem.'),
(8, 'Często zdarza mi się zrobić coś tylko po to, żeby udowodnić (sobie lub innym), że to potrafię.'),
(9, 'Nie przejmuję się drobiazgami.'),
(10, 'Naprawdę dobra praca wcale nie musi gwarantować bezpieczeństwa finansowego.'),
(11, 'Łatwo się nudzę.'),
(12, 'Często bywam dumny ze swoich osiągnięć.'),
(13, 'Satysfakcja z pracy jest dużo ważniejsza niż pieniądze.'),
(14, 'Zdarzyło mi się przekroczyć swoje uprawnienia, żeby zrealizować cel.'),
(15, 'Gdy coś mi nie wychodzi, najczęściej winię innych.'),
(16, 'Zdarza mi się upierać przy swoim, nawet gdy inni mówią, że to się nie uda.'),
(17, 'Najczęściej budzę się rano w dobrym nastroju.'),
(18, 'Wykształcenie wcale nie ma decydującego znaczenia w tym, by być przedsiębiorcą.'),
(19, 'Korzystam aktywnie z usług bankowości.'),
(20, 'Rzadko choruję.'),
(21, 'Przedsiębiorcy w dzisiejszych czasach wcale nie podejmują kolosalnego ryzyka.'),
(22, 'Lubię podejmować ważne decyzje'),
(23, 'Zawsze wyciągam wnioski ze swoich błędów.'),
(24, 'Rozwiązanie trudnych problemów przychodzi mi łatwiej niż innym.'),
(25, 'Większość trudnych zadań jakie podejmuję, traktuję jako osobiste wyzwanie.'),
(26, 'Własna firma jest dużo większym osiągnięciem niż kierownicze stanowisko w cudzej firmie.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `registration`
--

CREATE TABLE `registration` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Age` int(99) NOT NULL,
  `Place` varchar(50) NOT NULL,
  `Adress` varchar(50) NOT NULL,
  `School` varchar(50) NOT NULL,
  `Grade` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `registration`
--

INSERT INTO `registration` (`ID`, `Name`, `Surname`, `Email`, `Age`, `Place`, `Adress`, `School`, `Grade`) VALUES
(11, '123', '123', '123@gmail.com', 123, '123', '123', '123', 2),
(12, 'szymon', '123', '123@gmail.com', 123, '123', '123', '123', 2),
(13, '', '', '', 0, '', '', '', 0),
(14, '12321', '', '123@gmail.com', 0, '', '', '', 2);

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
-- Indeksy dla tabeli `pytania2`
--
ALTER TABLE `pytania2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT dla tabeli `pytania2`
--
ALTER TABLE `pytania2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `test`
--
ALTER TABLE `test`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
