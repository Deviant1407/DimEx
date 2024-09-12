-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 12 2024 г., 10:14
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Polus`
--

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`id`, `fio`, `phone`, `login`, `password`, `id_type`) VALUES
(1, 'Носов Иван Михайлович', '89210563128', 'login1', 'a722c63db8ec8625af6cf71cb8c2d939', 1),
(2, 'Ильин Александр Андреевич', '89535078985', 'login2', 'c1572d05424d0ecb2a65ec6a82aeacbf', 2),
(3, 'Никифоров Иван Дмитриевич', '89210673849', 'login3', '3afc79b597f88a72528e864cf81856d2', 2),
(4, 'Елисеев Артём Леонидович', '89990563748', 'login4', 'fc2921d9057ac44e549efaf0048b2512', 3),
(5, 'Титов Сергей Кириллович', '89994563847', 'login5', 'd35f6fa9a79434bcd17f8049714ebfcb', 3),
(6, 'Григорьев Семён Викторович', '89219567849', 'login11', '0102812fbd5f73aa18aa0bae2cd8f79f', 4),
(7, 'Сорокин Дмитрий Ильич', '89219567841', 'login12', '0bd0fe6372c64e09c4ae81e056a9dbda', 4),
(8, 'Белоусов Егор Ярославович', '89219567842', 'login13', 'c868bff94e54b8eddbdbce22159c0299', 4),
(9, 'Суслов Михаил Александрович', '89219567843', 'login14', 'd1f38b569c772ebb8fa464e1a90c5a00', 4),
(10, 'Васильев Вячеслав Александрович', '89219567844', 'login15', 'b279786ec5a7ed00dbe4d3fe1516c121', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `id_type` (`id_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `Type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
