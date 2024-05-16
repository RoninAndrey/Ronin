-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 13 2023 г., 11:57
-- Версия сервера: 10.5.11-MariaDB-log
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kinoworld`
--

-- --------------------------------------------------------

--
-- Структура таблицы `osnova`
--

CREATE TABLE `osnova` (
  `id_film` int(11) NOT NULL,
  `janr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL,
  `age` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `osnova`
--

INSERT INTO `osnova` (`id_film`, `janr`, `img`, `text`, `grade`, `age`) VALUES
(1, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img1.jpg', 'Самолеты: Огонь и вода', 6, 0),
(2, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img2.jpg', 'Райя и последний дракон', 7, 0),
(3, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img3.jpg', 'Корпорация монстров', 8, 0),
(4, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img4.jpg', 'Университет монстров', 7, 0),
(5, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img5.jpg', 'Большое путешествие', 5, 0),
(6, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img6.jpg', 'В гости к Робинсонам', 7, 0),
(7, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img7.jpg', 'Принцесса и лягушка', 7, 0),
(8, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img8.jpg', 'Братец медвежонок', 7, 0),
(9, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img9.jpg', 'Братец медвежонок 2', 6, 0),
(10, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img10.jpg', 'Хороший динозавр', 7, 0),
(11, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img11.jpg', 'Планета сокровищ', 7, 0),
(12, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img12.jpg', 'Храбрая сердцем', 7, 0),
(13, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img13.jpg', 'Холодное сердце', 7, 0),
(14, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img14.jpg', 'Холодное сердце 2', 7, 0),
(15, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img15.jpg', 'История игрушек', 8, 0),
(16, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img16.jpg', 'История игрушек 2', 8, 0),
(17, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img17.jpg', 'История игрушек 3', 8, 0),
(18, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img18.jpg', 'История игрушек 4', 8, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `osnova`
--
ALTER TABLE `osnova`
  ADD PRIMARY KEY (`id_film`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `osnova`
--
ALTER TABLE `osnova`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
