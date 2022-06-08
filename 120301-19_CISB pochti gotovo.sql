-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 08 2022 г., 22:27
-- Версия сервера: 5.7.37-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `120301-19_CISB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Avtors`
--

CREATE TABLE `Avtors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Avtors`
--

INSERT INTO `Avtors` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Пушкин', '2022-06-06 00:00:00', '2022-06-06 00:00:00'),
(2, 'Четверик', '2022-06-08 00:00:00', '2022-06-08 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `Books`
--

CREATE TABLE `Books` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `avtorId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Books`
--

INSERT INTO `Books` (`id`, `firstName`, `lastName`, `avtorId`, `createdAt`, `updatedAt`) VALUES
(1, 'Сказка о царе Руслане', 'Да', 1, '2022-06-08 00:00:00', '2022-06-08 00:00:00'),
(2, 'Автобиография Ивана Четверика', 'Нет', 2, '2022-06-08 00:00:00', '2022-06-08 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20220606171138-create-avtor.js'),
('20220606171316-create-book.js');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Avtors`
--
ALTER TABLE `Avtors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `avtorId` (`avtorId`);

--
-- Индексы таблицы `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Avtors`
--
ALTER TABLE `Avtors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `Books`
--
ALTER TABLE `Books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Books`
--
ALTER TABLE `Books`
  ADD CONSTRAINT `Books_ibfk_1` FOREIGN KEY (`avtorId`) REFERENCES `Avtors` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
