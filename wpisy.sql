-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lip 2018, 21:28
-- Wersja serwera: 10.1.33-MariaDB
-- Wersja PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wpisy`
--

CREATE TABLE `wpisy` (
  `id` int(11) NOT NULL,
  `tytul` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `kategoria` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `tresc` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wpisy`
--

INSERT INTO `wpisy` (`id`, `tytul`, `kategoria`, `tresc`, `data`) VALUES
(1, 'Amsterdam - stolica mostów', 'Europa', 'Odwiedziłem niedawno Amsterdam. Chyba jedna z najlepszych wycieczek! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur egestas est non purus sodales pretium. Suspendisse posuere dolor vel augue sagittis interdum. Aenean aliquet tempor molestie. Sed sit amet nibh vitae nunc efficitur accumsan lacinia vel justo. Nunc quis quam et nunc accumsan vestibulum eu eget quam. Vestibulum luctus urna nisi, pellentesque pretium ante semper nec. Nulla erat massa, commodo sed erat ut, dignissim facilisis nisl. Phasellus imperdiet eleifend odio ac ullamcorper. Vestibulum a est non lacus hendrerit convallis vulputate id ex. Donec eget arcu et sapien pellentesque scelerisque. Sed neque sapien, varius quis accumsan eu, hendrerit sed neque. Ut elementum ultricies euismod. Nam varius molestie orci, at imperdiet lacus consequat id. Cras vitae nulla est.', '2018-07-17'),
(2, 'Lipiec w Berlinie', 'Europa', 'Wyjechałem na 5 dni zwiedzić Berlin. Zwiedziłem wyspę muzeów oraz Alexander Platz. Było niesamowicie. In varius tincidunt ante vel feugiat. Curabitur dignissim accumsan diam fringilla consequat. Morbi aliquet odio ac lorem vehicula elementum. Fusce tempus ornare nunc, at ullamcorper orci molestie quis. Fusce porta bibendum dui. Suspendisse ultrices, lectus sed fermentum placerat, purus sem congue erat, eget euismod enim nisi sit amet ex. Nulla pellentesque est vel euismod sollicitudin. Nunc id ullamcorper lacus, nec feugiat sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam scelerisque efficitur eros eget tempus. Sed pretium, nisi sed malesuada malesuada, risus dui placerat lacus, non facilisis diam mauris et turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vehicula mi ac nibh pulvinar venenatis. Donec venenatis feugiat mi in condimentum.', '2018-07-23'),
(3, 'Jazda w Chinach', 'Azja', 'Byłem w Chinach i wpierdalałem ryż. Smaczny był. Curabitur nec condimentum risus. Praesent aliquam lacinia sapien, eu rutrum lorem mattis et. Fusce sit amet blandit ligula, eget tincidunt purus. Sed non blandit nisi. Suspendisse nec aliquet risus. Nam nulla quam, condimentum auctor libero eget, cursus iaculis lacus. Nam nulla odio, porttitor eget lectus non, fermentum finibus lacus. Ut mattis eleifend mauris vel ullamcorper. Donec sit amet ante libero. Mauris augue lorem, ultrices a sem quis, dictum laoreet ipsum. Proin eget lacus mauris.', '2018-07-02'),
(4, 'Mazury', 'Polska', 'Byłem też na Mazurach i się tam spizgałem. Sed non scelerisque mauris. Maecenas at ligula imperdiet mi placerat efficitur in sed urna. Maecenas vel lobortis dui, eu tincidunt purus. Morbi vestibulum, urna ut lobortis elementum, massa eros dignissim enim, in rutrum diam tellus vel enim. Mauris enim risus, porttitor id quam quis, cursus sodales orci. Donec quis elementum magna. Morbi commodo vehicula justo, eget elementum metus egestas ut.', '2018-07-11'),
(5, 'Amsterdam po raz drugi', 'Europa', 'I znowu Amsterdam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur egestas est non purus sodales pretium. Suspendisse posuere dolor vel augue sagittis interdum. Aenean aliquet tempor molestie. Sed sit amet nibh vitae nunc efficitur accumsan lacinia vel justo. Nunc quis quam et nunc accumsan vestibulum eu eget quam. Vestibulum luctus urna nisi, pellentesque pretium ante semper nec. Nulla erat massa, commodo sed erat ut, dignissim facilisis nisl. Phasellus imperdiet eleifend odio ac ullamcorper. Vestibulum a est non lacus hendrerit convallis vulputate id ex. Donec eget arcu et sapien pellentesque scelerisque. Sed neque sapien, varius quis accumsan eu, hendrerit sed neque. Ut elementum ultricies euismod. Nam varius molestie orci, at imperdiet lacus consequat id. Cras vitae nulla est.', '2018-07-18'),
(6, 'Tym razem Tatry', 'Polska', 'Postanowiłem wyjechać w góry. Kierunek południe! Phasellus gravida finibus mi. Nam semper malesuada sem, nec rutrum neque dapibus at. Vestibulum at augue id erat fermentum porta. Proin auctor tristique tortor sed ullamcorper. Sed varius nulla iaculis bibendum pulvinar. Vestibulum blandit purus et eleifend euismod. Pellentesque fermentum, quam vel ullamcorper porta, dolor leo volutpat tellus, pharetra egestas erat nisl vel augue. Aliquam ipsum risus, vehicula ut velit in, accumsan mollis nibh. Donec id massa vitae odio ultricies blandit. Phasellus eleifend rhoncus diam, ac sollicitudin neque feugiat in. Vivamus sagittis sapien nec finibus finibus. Integer sed est quis neque pharetra sagittis. Sed eros urna, aliquam vel commodo at, ultrices eget est. Donec metus tortor, porttitor ac sollicitudin non, bibendum in ligula. Nulla et turpis at libero gravida tempus.', '2018-06-12');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wpisy`
--
ALTER TABLE `wpisy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `wpisy`
--
ALTER TABLE `wpisy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
