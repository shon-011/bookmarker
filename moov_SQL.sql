-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2020 年 6 月 08 日 10:25
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_book02`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `book_mark`
--

CREATE TABLE `book_mark` (
  `id` int(255) NOT NULL,
  `ISBN` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `unique_user_id` int(10) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `book_mark`
--

INSERT INTO `book_mark` (`id`, `ISBN`, `unique_user_id`, `comment`, `indate`) VALUES
(8, 'K8dnpFg2nZEC', 2, '徳川a', '2020-06-07 08:41:59'),
(10, 'fvyiDwAAQBAJ', 2, 'あああ', '2020-06-08 14:10:03'),
(11, '9A4wBwAAQBAJ', 2, 'うう」', '2020-06-08 14:10:26'),
(12, 'AfCPDwAAQBAJ', 2, 'ほー', '2020-06-08 14:10:45'),
(13, 'HRELGIRGoUwC', 2, '', '2020-06-08 14:11:09'),
(14, 'xrnoDwAAQBAJ', 2, '', '2020-06-08 14:13:17'),
(15, '4GqdwAEACAAJ', 2, '', '2020-06-08 14:13:44'),
(16, 'G52cBAAAQBAJ', 2, '', '2020-06-08 14:14:09'),
(17, 'SXGtDwAAQBAJ', 2, '', '2020-06-08 14:14:49'),
(18, '9LYzDgAAQBAJ', 2, '', '2020-06-08 14:15:09'),
(19, '9qBUzQEACAAJ', 2, '', '2020-06-08 14:15:30'),
(20, 'wdnQDwAAQBAJ', 1, '', '2020-06-08 14:16:27'),
(21, '9LYzDgAAQBAJ', 1, '', '2020-06-08 14:16:39'),
(22, 'AfCPDwAAQBAJ', 1, 'コメン\r\n', '2020-06-08 14:17:41'),
(23, 'SjN3DwAAQBAJ', 1, '', '2020-06-08 14:18:31'),
(24, 'L2oGBwAAQBAJ', 1, 'コメント', '2020-06-08 14:19:04'),
(26, 'wdnQDwAAQBAJ', 4, '', '2020-06-08 14:20:01'),
(27, 'L2oGBwAAQBAJ', 4, '', '2020-06-08 14:21:09'),
(28, 'G52cBAAAQBAJ', 4, '', '2020-06-08 14:21:27'),
(29, 'qjJpDwAAQBAJ', 4, '', '2020-06-08 14:22:11'),
(30, '4GqdwAEACAAJ', 4, '', '2020-06-08 14:22:36'),
(31, '9LYzDgAAQBAJ', 4, '', '2020-06-08 14:25:57'),
(32, '9LYzDgAAQBAJ', 8, '', '2020-06-08 14:39:35'),
(33, '4GqdwAEACAAJ', 8, '', '2020-06-08 14:39:51'),
(34, 'wdnQDwAAQBAJ', 8, '', '2020-06-08 14:40:13'),
(35, 'G52cBAAAQBAJ', 8, '', '2020-06-08 14:40:29'),
(36, 'G52cBAAAQBAJ', 9, '', '2020-06-08 14:41:30'),
(37, 'L2oGBwAAQBAJ', 9, '', '2020-06-08 14:42:13'),
(38, 'qjJpDwAAQBAJ', 9, '', '2020-06-08 14:43:36'),
(39, 'POijDwAAQBAJ', 10, '', '2020-06-08 14:44:44'),
(40, 'G52cBAAAQBAJ', 10, '', '2020-06-08 14:45:26'),
(41, 'wdnQDwAAQBAJ', 10, '', '2020-06-08 16:27:48');

-- --------------------------------------------------------

--
-- テーブルの構造 `book_number`
--

CREATE TABLE `book_number` (
  `ISBN` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bookName` text COLLATE utf8_unicode_ci NOT NULL,
  `imgURL` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `book_number`
--

INSERT INTO `book_number` (`ISBN`, `bookName`, `imgURL`) VALUES
('K8dnpFg2nZEC', '徳川家光', 'http://books.google.com/books/content?id=K8dnpFg2nZEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('fvyiDwAAQBAJ', 'ルールズ・オブ・プレイ　――ゲームデザインの基礎　《ユニット３／４　遊び》', 'http://books.google.com/books/content?id=fvyiDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('9A4wBwAAQBAJ', '幸せおとりよせノートの作り方', 'http://books.google.com/books/content?id=9A4wBwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('AfCPDwAAQBAJ', '一肉一菜おかず', 'http://books.google.com/books/content?id=AfCPDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('HRELGIRGoUwC', '電気・電子・情報系の基礎数学 I', 'http://books.google.com/books/content?id=HRELGIRGoUwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('xrnoDwAAQBAJ', 'あつまれ どうぶつの森 ゲーム攻略必須アイテム＋スゴ技完全ガイド', 'http://books.google.com/books/content?id=xrnoDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('4GqdwAEACAAJ', 'FACTFULNESS(ファクトフルネス)', 'http://books.google.com/books/content?id=4GqdwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'),
('G52cBAAAQBAJ', '今こそ！「嫌われる勇気」', 'http://books.google.com/books/content?id=G52cBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('SXGtDwAAQBAJ', '一度読んだら絶対に忘れない日本史の教科書', 'http://books.google.com/books/content?id=SXGtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('9LYzDgAAQBAJ', 'イシューからはじめよ ― 知的生産の「シンプルな本質」', 'http://books.google.com/books/content?id=9LYzDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('9qBUzQEACAAJ', 'シン・ニホン', 'http://books.google.com/books/content?id=9qBUzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'),
('wdnQDwAAQBAJ', 'シン・ニホン AI×データ時代における日本の再生と人材育成', 'http://books.google.com/books/content?id=wdnQDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('9LYzDgAAQBAJ', 'イシューからはじめよ ― 知的生産の「シンプルな本質」', 'http://books.google.com/books/content?id=9LYzDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('AfCPDwAAQBAJ', '一肉一菜おかず', 'http://books.google.com/books/content?id=AfCPDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('SjN3DwAAQBAJ', 'Hanako TRIP　台湾　好きなもの、全部。', 'http://books.google.com/books/content?id=SjN3DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('L2oGBwAAQBAJ', '深夜特急（1～6）　合本版', 'http://books.google.com/books/content?id=L2oGBwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('9LYzDgAAQBAJ', 'イシューからはじめよ ― 知的生産の「シンプルな本質」', 'http://books.google.com/books/content?id=9LYzDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('wdnQDwAAQBAJ', 'シン・ニホン AI×データ時代における日本の再生と人材育成', 'http://books.google.com/books/content?id=wdnQDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('L2oGBwAAQBAJ', '深夜特急（1～6）　合本版', 'http://books.google.com/books/content?id=L2oGBwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('G52cBAAAQBAJ', '今こそ！「嫌われる勇気」', 'http://books.google.com/books/content?id=G52cBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('qjJpDwAAQBAJ', '一度読んだら絶対に忘れない世界史の教科書', 'http://books.google.com/books/content?id=qjJpDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('4GqdwAEACAAJ', 'FACTFULNESS(ファクトフルネス)', 'http://books.google.com/books/content?id=4GqdwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'),
('9LYzDgAAQBAJ', 'イシューからはじめよ ― 知的生産の「シンプルな本質」', 'http://books.google.com/books/content?id=9LYzDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('9LYzDgAAQBAJ', 'イシューからはじめよ ― 知的生産の「シンプルな本質」', 'http://books.google.com/books/content?id=9LYzDgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('4GqdwAEACAAJ', 'FACTFULNESS(ファクトフルネス)', 'http://books.google.com/books/content?id=4GqdwAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api'),
('wdnQDwAAQBAJ', 'シン・ニホン AI×データ時代における日本の再生と人材育成', 'http://books.google.com/books/content?id=wdnQDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('G52cBAAAQBAJ', '今こそ！「嫌われる勇気」', 'http://books.google.com/books/content?id=G52cBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('G52cBAAAQBAJ', '今こそ！「嫌われる勇気」', 'http://books.google.com/books/content?id=G52cBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('L2oGBwAAQBAJ', '深夜特急（1～6）　合本版', 'http://books.google.com/books/content?id=L2oGBwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('qjJpDwAAQBAJ', '一度読んだら絶対に忘れない世界史の教科書', 'http://books.google.com/books/content?id=qjJpDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('POijDwAAQBAJ', 'FACTFULNESS（ファクトフルネス）10の思い込みを乗り越え、データを基に世界を正しく見る習慣', 'http://books.google.com/books/content?id=POijDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('G52cBAAAQBAJ', '今こそ！「嫌われる勇気」', 'http://books.google.com/books/content?id=G52cBAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('wdnQDwAAQBAJ', 'シン・ニホン AI×データ時代における日本の再生と人材育成', 'http://books.google.com/books/content?id=wdnQDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api'),
('npo-twiKcUkC', 'ビジネスタイ語会話', 'http://books.google.com/books/content?id=npo-twiKcUkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api');

-- --------------------------------------------------------

--
-- テーブルの構造 `book_users`
--

CREATE TABLE `book_users` (
  `unique_user_id` int(10) NOT NULL,
  `userName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `act` tinyint(1) NOT NULL DEFAULT '1' COMMENT '有効/無効'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `book_users`
--

INSERT INTO `book_users` (`unique_user_id`, `userName`, `userID`, `password`, `act`) VALUES
(1, 'shona', 'shona1', '1244', 1),
(2, 'akira', 'akira55', '1244', 1),
(4, 'まさと', 'masa', '1244', 1),
(8, 'nami', 'nami', '1244', 1),
(9, 'よし', 'yosi', '1244', 1),
(10, 'sora', 'sora', '1244', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `book_mark`
--
ALTER TABLE `book_mark`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `book_users`
--
ALTER TABLE `book_users`
  ADD PRIMARY KEY (`unique_user_id`),
  ADD UNIQUE KEY `login` (`userID`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `book_mark`
--
ALTER TABLE `book_mark`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- テーブルのAUTO_INCREMENT `book_users`
--
ALTER TABLE `book_users`
  MODIFY `unique_user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
