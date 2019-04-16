-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 07 2019 г., 14:08
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `surname` text NOT NULL,
  `sex` text NOT NULL,
  `age` text NOT NULL,
  `boyORgirl` text NOT NULL,
  `birthday` text NOT NULL,
  `familyStatus` text NOT NULL,
  `socialStatus` text NOT NULL,
  `residence` text NOT NULL,
  `sleep` text NOT NULL,
  `walkingWithFriends` text NOT NULL,
  `fishing` text NOT NULL,
  `playingGames` text NOT NULL,
  `htmlBook` text NOT NULL,
  `numberOfBooks` text NOT NULL,
  `comment` text NOT NULL,
  `position` text NOT NULL,
  `email` text NOT NULL,
  `equipment` text NOT NULL,
  `howToCookDinners` text NOT NULL,
  `makeMoney` text NOT NULL,
  `task` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`ID`, `Name`, `surname`, `sex`, `age`, `boyORgirl`, `birthday`, `familyStatus`, `socialStatus`, `residence`, `sleep`, `walkingWithFriends`, `fishing`, `playingGames`, `htmlBook`, `numberOfBooks`, `comment`, `position`, `email`, `equipment`, `howToCookDinners`, `makeMoney`, `task`) VALUES
(81, 'sdf', 'asdf', 'man', 'sdf', 'boy', 'df', 'dxf', 'zdxf', 'sdxf', 'yes', 'yes', 'yes', 'yes', 'bigBook', '11-20', '   df         ', '3', 'sdsd@mail.ru', 'yes', '', '', 'barely managed'),
(82, 'werty', 'sdfg', 'woman', 'sdf', 'boy', 'sdf', 'df', 'sd', 'sdf', 'yes', 'yes', 'yes', 'yes', 'comprehensiveManual', '0-10', '  sdfg          ', '3', 'sdsd@mail.ru', 'yes', 'yes', 'yes', 'barely managed'),
(83, 'werty', 'sdfg', 'woman', 'sdf', 'boy', 'sdf', 'df', 'sd', 'sdf', 'yes', 'yes', 'yes', 'yes', 'comprehensiveManual', '0-10', '  sdfg          ', '3', 'sdsd@mail.ru', 'yes', 'yes', 'yes', 'barely managed'),
(84, 'werty', 'sdfg', 'woman', 'sdf', 'boy', 'sdf', 'df', 'sd', 'sdf', 'yes', 'yes', 'yes', 'yes', 'comprehensiveManual', '0-10', '  sdfg          ', '3', 'sdsd@mail.ru', 'yes', 'yes', 'yes', 'barely managed'),
(85, '23456', '23456', 'woman', '234', 'girl', '2345', '2345', '234', '345', 'yes', 'yes', 'yes', 'yes', 'comprehensiveManual', '0-10', '         23456   ', '1', 'sdsd@mail.ru', 'yes', 'yes', 'yes', 'so-so'),
(86, 'Никита ', 'Власкин', 'woman', '26', 'boy', '06.09.1992', 'не женат', 'отличный', 'п.Земля', 'yes', '', '', '', 'comprehensiveManual', '', '            ', '1', 'sdsd@mail.ru', '', 'yes', '', 'barely managed'),
(87, 'ннн', '111', 'woman', '11', 'girl', '11', '11', '11', '555', 'yes', '', '', '', 'bigBook', '11-20', '        ё111ёё    ', '3', 'sdsd@mail.ru', '', 'yes', '', 'barely managed');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
