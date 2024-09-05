-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 05 2024 г., 17:28
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `delta_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `revenue` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `non_cash` int(11) NOT NULL,
  `credit_cards` int(11) NOT NULL,
  `average_check` int(11) NOT NULL,
  `average_guest` int(11) NOT NULL,
  `post_payment_removal` int(11) NOT NULL,
  `pre_payment_removal` int(11) NOT NULL,
  `checks_count` int(11) NOT NULL,
  `guests_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`id`, `date`, `revenue`, `cash`, `non_cash`, `credit_cards`, `average_check`, `average_guest`, `post_payment_removal`, `pre_payment_removal`, `checks_count`, `guests_count`) VALUES
(1, '2024-09-03', 480512, 300000, 100000, 100521, 900, 800, 500, 500, 34, 32),
(2, '2024-09-04', 480521, 300000, 100000, 100521, 900, 800, 1100, 1300, 36, 36),
(3, '2024-09-05', 500521, 300000, 100000, 100521, 1300, 1200, 1000, 1300, 34, 34);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
