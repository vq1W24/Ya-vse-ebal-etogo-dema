-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.4
-- Время создания: Июн 14 2025 г., 03:53
-- Версия сервера: 8.4.4
-- Версия PHP: 8.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Dem_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `id_material` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost_of_ed` float DEFAULT NULL,
  `kol_vo_sklad` float NOT NULL,
  `min_kol_vo` float NOT NULL,
  `kol_vo_upakov` float NOT NULL,
  `ed_merge` varchar(255) DEFAULT NULL,
  `id_mat_type` int NOT NULL,
  `id_post` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`id_material`, `name`, `cost_of_ed`, `kol_vo_sklad`, `min_kol_vo`, `kol_vo_upakov`, `ed_merge`, `id_mat_type`, `id_post`) VALUES
(1, 'Цельный массив дерева Дуб 1000х600 мм', 7450, 1500, 500, 7.3, 'м²', 1, 4),
(2, 'Клееный массив дерева Дуб 1000х600 мм', 4520, 300, 500, 7.2, 'м²', 1, 1),
(3, 'Шпон облицовочный Дуб натуральный 2750х480 мм', 2500, 2000, 1500, 19.8, 'м²', 1, 3),
(4, 'Фанера 2200х1000 мм', 2245, 450, 1000, 52.8, 'м²', 2, 4),
(5, 'ДСП 2750х1830 мм', 529.6, 1010, 1200, 181.08, 'м²', 2, 2),
(6, 'МДФ 2070х1400 мм', 417.24, 1550, 1000, 87, 'м²', 2, 1),
(7, 'ДВП 2440х2050 мм', 187, 1310, 1000, 190, 'м²', 2, 4),
(8, 'ХДФ 2800x2070 мм', 370.96, 1400, 1200, 90, 'м²', 2, 3),
(9, 'Экокожа 140 см', 1600, 1200, 1500, 100, 'пог.м', 3, 2),
(10, 'Велюр 140 см', 1300, 1300, 1500, 100, 'пог.м', 3, 1),
(11, 'Шенилл 140 см', 620, 950, 1500, 100, 'пог.м', 3, 3),
(12, 'Рогожка 140 см', 720, 960, 1500, 100, 'пог.м', 3, 4),
(13, 'Закаленное стекло 2600х1800 мм', 1148, 1000, 500, 196.56, 'м²', 4, 2),
(14, 'Металлокаркас для стула', 1100, 300, 250, 5, 'шт', 5, 1),
(15, 'Металлокаркас каркас из профиля с траверсами для стола', 6700, 100, 100, 1, 'шт', 5, 3),
(16, 'Колесо для мебели поворотное', 10.59, 1500, 1000, 500, 'шт', 6, 4),
(17, 'Газ-лифт', 730, 500, 250, 5, 'шт', 5, 2),
(18, 'Металлическая крестовина для офисных кресел', 2700, 500, 250, 5, 'шт', 5, 1),
(19, 'Пластиковый комплект для стула', 900, 300, 250, 100, 'шт', 6, 4),
(20, 'Кромка ПВХ', 35.8, 1500, 1000, 100, 'м', 6, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `material_products`
--

CREATE TABLE `material_products` (
  `id_mat_prod` int NOT NULL,
  `kol_vo_mat` float NOT NULL,
  `id_prod` int NOT NULL,
  `id_material` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_products`
--

INSERT INTO `material_products` (`id_mat_prod`, `kol_vo_mat`, `id_prod`, `id_material`) VALUES
(1, 0.85, 1, 4),
(2, 1.5, 1, 10),
(3, 1.5, 1, 11),
(4, 1.5, 1, 12),
(5, 1, 1, 14),
(6, 5, 1, 16),
(7, 1, 1, 17),
(8, 1, 1, 18),
(9, 1, 1, 19),
(10, 1.25, 2, 4),
(11, 3.04, 2, 9),
(12, 1.5, 2, 11),
(13, 2.5, 2, 12),
(14, 1, 2, 14),
(15, 5, 2, 16),
(16, 1, 2, 17),
(17, 1, 2, 18),
(18, 1, 2, 19),
(19, 1.85, 3, 4),
(20, 4.22, 3, 9),
(21, 1.5, 3, 10),
(22, 1, 3, 14),
(23, 5, 3, 16),
(24, 1, 3, 17),
(25, 1, 3, 18),
(26, 1, 3, 19),
(27, 3.33, 4, 5),
(28, 6, 4, 20),
(29, 2.9, 5, 2),
(30, 1.7, 5, 3),
(31, 2.7, 5, 6),
(32, 1.8, 5, 8),
(33, 1.7, 6, 2),
(34, 1.6, 6, 3),
(35, 1.8, 6, 8),
(36, 2, 7, 5),
(37, 0.8, 7, 7),
(38, 7, 7, 20),
(39, 5.95, 8, 6),
(40, 1, 8, 15),
(41, 4.3, 9, 5),
(42, 8.6, 9, 20),
(43, 7.65, 10, 6),
(44, 1.05, 10, 8),
(45, 1, 10, 15),
(46, 6.4, 11, 5),
(47, 6.2, 11, 20),
(48, 2.55, 12, 4),
(49, 5.2, 12, 5),
(50, 5.22, 12, 5),
(51, 3.59, 12, 7),
(52, 9.4, 12, 20),
(53, 3.5, 13, 1),
(54, 1.5, 13, 3),
(55, 2.1, 13, 8),
(56, 0.8, 13, 13),
(57, 7.7, 14, 1),
(58, 6.5, 14, 3),
(59, 4.5, 14, 5),
(60, 5.7, 14, 6),
(61, 2.3, 14, 8),
(62, 1.74, 14, 9),
(63, 4.2, 15, 5),
(64, 2.21, 15, 7),
(65, 4, 15, 16),
(66, 6.5, 15, 20),
(67, 0.4, 16, 2),
(68, 4, 16, 16),
(69, 0.7, 17, 3),
(70, 7.65, 17, 5),
(71, 0.8, 17, 7),
(72, 6.3, 17, 20),
(73, 3.2, 18, 3),
(74, 3.5, 18, 4),
(75, 1.6, 18, 7),
(76, 1.6, 18, 13),
(77, 1.3, 19, 3),
(78, 8.2, 19, 5),
(79, 1.3, 19, 8),
(80, 1.8, 20, 1),
(81, 3.5, 20, 3),
(82, 1.65, 20, 8),
(83, 1.6, 20, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `material_type`
--

CREATE TABLE `material_type` (
  `id_mat_type` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `material_type`
--

INSERT INTO `material_type` (`id_mat_type`, `name`, `percent`) VALUES
(1, 'Дерево', 0.55),
(2, 'Древесная плита', 0.3),
(3, 'Текстиль ', 0.15),
(4, 'Стекло', 0.45),
(5, 'Металл', 0.1),
(6, 'Пластик', 0.05);

-- --------------------------------------------------------

--
-- Структура таблицы `postavchik`
--

CREATE TABLE `postavchik` (
  `id_post` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `INN` varchar(255) DEFAULT NULL,
  `rating` int NOT NULL,
  `date_start` date DEFAULT NULL,
  `id_post_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `postavchik`
--

INSERT INTO `postavchik` (`id_post`, `name`, `INN`, `rating`, `date_start`, `id_post_type`) VALUES
(1, 'Снабжение Плюс', '7712345678', 7, '2018-03-15', 2),
(2, 'Гранд Торг', '7734567890', 8, '2017-11-10', 4),
(3, 'Петров Александр', '7723456789', 9, '2020-07-22', 1),
(4, 'Эко Материалы ', '7745678901', 8, '2021-01-30', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `post_type`
--

CREATE TABLE `post_type` (
  `id_post_type` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `post_type`
--

INSERT INTO `post_type` (`id_post_type`, `name`) VALUES
(1, 'ИП'),
(2, 'ООО'),
(3, 'ПАО'),
(4, 'ЗАО');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id_prod` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `articul` int DEFAULT NULL,
  `min_cost` float NOT NULL,
  `id_prod_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id_prod`, `name`, `articul`, `min_cost`, `id_prod_type`) VALUES
(1, 'Кресло детское цвет Белый и Розовый', 3028272, 15325, 1),
(2, 'Кресло офисное цвет Черный', 3018556, 21444, 1),
(3, 'Кресло эргономичное цвет Темно-коричневый  ', 3549922, 24760, 1),
(4, 'Полка настольная', 7028048, 2670.89, 2),
(5, 'Стеллаж для документов цвет Дуб светлый 854х445х2105 мм', 5759324, 24899, 3),
(6, 'Стеллаж цвет Белый с ящиками 854х445х2105 мм', 5259474, 16150, 3),
(7, 'Стеллаж цвет Орех 400х370х2000 мм', 5118827, 2860, 3),
(8, 'Стол для ноутбука на металлокаркасе 800х600х123 мм', 1029784, 14690, 4),
(9, 'Стол компьютерный 700х600х500 мм', 1028248, 4105.89, 4),
(10, 'Стол компьютерный на металлокаркасе 1400х600х750 мм', 1130981, 13899, 4),
(11, 'Стол письменный 1100x750x600 мм', 1188827, 5148, 4),
(12, 'Стол письменный с тумбочкой 4 ящика 1100x750x600 мм', 1029272, 15325, 4),
(13, 'Стол руководителя письменный цвет Венге 1600x800x764 мм', 1016662, 43500.9, 4),
(14, 'Стол руководителя письменный цвет Орех темный 2300x1000x750 мм', 1658953, 132500, 4),
(15, 'Тумба выкатная 3 ящика', 6033136, 3750, 5),
(16, 'Тумба офисная для оргтехники', 6115947, 2450, 5),
(17, 'Узкий пенал стеллаж 5 полок цвет Орех 364х326x2000 мм ', 5559898, 8348, 3),
(18, 'Шкаф для книг 800x420x2000 мм', 4159043, 23391, 6),
(19, 'Шкаф для одежды цвет Венге 602x420x2000 мм', 4758375, 12035, 6),
(20, 'Шкаф-витрина 2 ящика 800x420x2000 мм', 4588376, 31991, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `product_type`
--

CREATE TABLE `product_type` (
  `id_prod_type` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `coeficent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product_type`
--

INSERT INTO `product_type` (`id_prod_type`, `name`, `coeficent`) VALUES
(1, 'Кресла', 1.95),
(2, 'Полки', 2.5),
(3, 'Стеллажи', 4.35),
(4, 'Столы', 5.5),
(5, 'Тумбы', 7.6),
(6, 'Шкафы', 6.72);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id_material`),
  ADD KEY `id_mat_type` (`id_mat_type`),
  ADD KEY `id_post` (`id_post`);

--
-- Индексы таблицы `material_products`
--
ALTER TABLE `material_products`
  ADD PRIMARY KEY (`id_mat_prod`),
  ADD KEY `id_prod` (`id_prod`),
  ADD KEY `id_material` (`id_material`);

--
-- Индексы таблицы `material_type`
--
ALTER TABLE `material_type`
  ADD PRIMARY KEY (`id_mat_type`);

--
-- Индексы таблицы `postavchik`
--
ALTER TABLE `postavchik`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_post_type` (`id_post_type`);

--
-- Индексы таблицы `post_type`
--
ALTER TABLE `post_type`
  ADD PRIMARY KEY (`id_post_type`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `id_prod_type` (`id_prod_type`);

--
-- Индексы таблицы `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id_prod_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `materials`
--
ALTER TABLE `materials`
  MODIFY `id_material` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `material_products`
--
ALTER TABLE `material_products`
  MODIFY `id_mat_prod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `material_type`
--
ALTER TABLE `material_type`
  MODIFY `id_mat_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `postavchik`
--
ALTER TABLE `postavchik`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `post_type`
--
ALTER TABLE `post_type`
  MODIFY `id_post_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id_prod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id_prod_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`id_mat_type`) REFERENCES `material_type` (`id_mat_type`),
  ADD CONSTRAINT `materials_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `postavchik` (`id_post`);

--
-- Ограничения внешнего ключа таблицы `material_products`
--
ALTER TABLE `material_products`
  ADD CONSTRAINT `material_products_ibfk_1` FOREIGN KEY (`id_prod`) REFERENCES `product` (`id_prod`),
  ADD CONSTRAINT `material_products_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `materials` (`id_material`);

--
-- Ограничения внешнего ключа таблицы `postavchik`
--
ALTER TABLE `postavchik`
  ADD CONSTRAINT `postavchik_ibfk_1` FOREIGN KEY (`id_post_type`) REFERENCES `post_type` (`id_post_type`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_prod_type`) REFERENCES `product_type` (`id_prod_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
