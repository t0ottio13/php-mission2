-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 6 月 04 日 03:22
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_l05_06`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `post_table`
--

CREATE TABLE `post_table` (
  `id` int(12) NOT NULL,
  `userName` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `post_table`
--

INSERT INTO `post_table` (`id`, `userName`, `text`, `created_at`, `updated_at`) VALUES
(1, 'hoge', 'hoge', '2021-06-04 02:20:33', '2021-06-04 02:20:33'),
(2, 'はし', '眠い', '2021-06-04 02:24:26', '2021-06-04 02:24:26'),
(3, 'はし', '削除したけど大丈夫？', '2021-06-04 02:25:09', '2021-06-04 02:25:09'),
(4, 'hoge', 'hoge', '2021-06-04 02:26:11', '2021-06-04 02:26:11'),
(5, 'はし', 'なんか良さそう', '2021-06-04 04:01:25', '2021-06-04 04:01:25'),
(6, 'はし', 'あー眠い', '2021-06-04 04:01:48', '2021-06-04 04:01:48'),
(7, 'はし', 'あーテステス', '2021-06-04 04:02:02', '2021-06-04 04:02:02');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, '米を買う', '2020-06-20', '2021-06-01 12:13:34', '2021-06-01 12:13:34'),
(2, 'じゃがいもを育てる', '2020-06-30', '2021-06-01 12:15:31', '2021-06-01 12:15:31'),
(3, 'にんじんを育てる', '2020-06-10', '2021-06-01 12:15:49', '2021-06-01 12:15:49'),
(4, 'たまねぎを育てる', '2020-06-15', '2021-06-01 12:16:14', '2021-06-01 12:16:14'),
(5, 'どうやねん', '2021-06-10', '2021-06-01 16:14:09', '2021-06-01 16:14:09'),
(6, '戻るかな', '2021-06-03', '2021-06-01 16:15:20', '2021-06-01 16:15:20'),
(8, 'カレールー', '2021-06-28', '2021-06-01 16:25:07', '2021-06-01 16:25:07');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `post_table`
--
ALTER TABLE `post_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `post_table`
--
ALTER TABLE `post_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
