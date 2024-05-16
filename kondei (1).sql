-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 29 2023 г., 03:09
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
-- База данных: `kondei`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `order_name` varchar(64) DEFAULT NULL,
  `order_email` varchar(64) DEFAULT NULL,
  `id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `order_name`, `order_email`, `id`) VALUES
(1, NULL, 'денис', 'den@d.com', 6),
(2, NULL, 'Савельев Андрей Евгеньевич', 'andrey1316nj@mail.ru', 8),
(7, NULL, 'Савельев Андрей Евгеньевич', 'andrey1316nj@mail.ru', 6),
(10, NULL, 'Савельев Андрей Евгеньевич', 'andrey1316nj@mail.ru', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_items`
--

CREATE TABLE `orders_items` (
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders_items`
--

INSERT INTO `orders_items` (`order_id`, `product_id`, `quantity`) VALUES
(1, 2, 1),
(2, 3, 1),
(2, 2, 1),
(3, 2, 1),
(4, 2, 1),
(5, 2, 1),
(6, 3, 1),
(7, 3, 1),
(10, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(32) DEFAULT NULL,
  `product_image` varchar(64) DEFAULT NULL,
  `product_desc` varchar(128) DEFAULT NULL,
  `product_price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_desc`, `product_price`) VALUES
(1, 'Ballu BSAG-07HN8', 'img1.jpg', 'Установка + 9990 руб.', 18100),
(2, 'Royal Clima RC-VX22HN', 'img2.jpg', 'Установка в подарок', 25090),
(3, 'БИРЮСА B-09FPR / B-09FPQ', 'img3.jpg', 'Установка + 9990 руб.', 16599),
(4, 'Ballu BSAG-09HN8', 'img4.jpg', 'Установка + 9990 руб.', 20300),
(5, 'Berlingtoun BR-07MBST1', 'img5.jpg', 'Установка в подарок', 22888),
(6, 'Ballu BSYI-09HN8/ES_23Y', 'img6.jpg', 'Установка + 9990 руб.', 26600);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `full_name` varchar(355) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `tel` text NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `login`, `email`, `password`, `tel`, `status`) VALUES
(6, 'Васльев денис  Д', 'denis', 'denpulplay.com@ff.com', '827ccb0eea8a706c4c34a16891f84e7b', '+ 7 (977)-440-55 15', 'user'),
(7, 'Васльев денис  Д', 'denis', 'denpulplay.com@ff.com', '827ccb0eea8a706c4c34a16891f84e7b', '+ 7 (977)-440-55 15', 'user'),
(8, 'Артём', 'admin', 'allaxkax@mail.ru', '827ccb0eea8a706c4c34a16891f84e7b', '+ 7 (977)-440-55 15', 'admin'),
(9, 'hdgd', 'ooo', 'allaxkax@mail.ru', '827ccb0eea8a706c4c34a16891f84e7b', '53453545345', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `name` (`product_name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
