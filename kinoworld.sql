-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 23 2023 г., 02:22
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

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
  `id_film` int NOT NULL,
  `janr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` tinyint(1) NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `osnova`
--

INSERT INTO `osnova` (`id_film`, `janr`, `img`, `text`, `grade`, `age`, `url`) VALUES
(1, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img1.jpg', 'Самолеты: Огонь и вода', '5.9', 0, 'https://www.kinopoisk.ru/film/769220/'),
(2, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img2.jpg', 'Райя и последний дракон', '7.3', 0, 'https://www.kinopoisk.ru/film/1015471/'),
(3, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img3.jpg', 'Корпорация монстров', '8.1', 0, 'https://www.kinopoisk.ru/film/458/'),
(4, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img4.jpg', 'Университет монстров', '7.2', 0, 'https://www.kinopoisk.ru/film/468904/'),
(5, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img5.jpg', 'Большое путешествие', '5.2', 0, 'https://www.kinopoisk.ru/film/81660/'),
(6, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img6.jpg', 'В гости к Робинсонам', '6.8', 0, 'https://www.kinopoisk.ru/film/70954/'),
(7, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img7.jpg', 'Принцесса и лягушка', '7.1', 0, 'https://www.kinopoisk.ru/film/279728/'),
(8, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img8.jpg', 'Братец медвежонок', '6.8', 0, 'https://www.kinopoisk.ru/film/8057/'),
(9, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img9.jpg', 'Братец медвежонок 2', '6.1', 0, 'https://www.kinopoisk.ru/film/229903/'),
(10, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img10.jpg', 'Хороший динозавр', '6.7', 0, 'https://www.kinopoisk.ru/film/596451/'),
(11, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img11.jpg', 'Планета сокровищ', '7.2', 0, 'https://www.kinopoisk.ru/film/864/'),
(12, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img12.jpg', 'Храбрая сердцем', '7.1', 0, 'https://www.kinopoisk.ru/film/409118/'),
(13, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img13.jpg', 'Холодное сердце', '7.4', 0, 'https://www.kinopoisk.ru/film/493208/'),
(14, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img14.jpg', 'Холодное сердце 2', '6.8', 0, 'https://www.kinopoisk.ru/film/903831/'),
(15, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img15.jpg', 'История игрушек', '8.3', 0, 'https://www.kinopoisk.ru/film/482/'),
(16, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img16.jpg', 'История игрушек 2', '7.9', 0, 'https://www.kinopoisk.ru/film/405/'),
(17, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img17.jpg', 'История игрушек 3', '8.3', 0, 'https://www.kinopoisk.ru/film/258328/'),
(18, 'Disney', 'Podkategorii/Multiki/Disney/Мультики/img18.jpg', 'История игрушек 4', '7.7', 0, 'https://www.kinopoisk.ru/film/846824/');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `name`) VALUES
(1, 'andrey1316nj@mail.ru', '36aab0a0296dabc1038c1cc0875ea88d', 'admin'),
(2, 'Yulia2325@gmail.com', '69fbd6173be3838af88fa072545437af', '12345'),
(3, 'Yulia2325@gmail.com', '69fbd6173be3838af88fa072545437af', '12345'),
(4, 'Yulia2325@gmail.com', '69fbd6173be3838af88fa072545437af', '12345');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `osnova`
--
ALTER TABLE `osnova`
  ADD PRIMARY KEY (`id_film`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `osnova`
--
ALTER TABLE `osnova`
  MODIFY `id_film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
