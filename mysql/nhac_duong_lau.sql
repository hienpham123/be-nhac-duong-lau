-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2024 lúc 04:16 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhac_duong_lau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `peoples`
--

CREATE TABLE `peoples` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province_name` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sortAddress` varchar(255) DEFAULT NULL,
  `images_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images_list`)),
  `title` varchar(255) DEFAULT NULL,
  `vote` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `year_of_birth` timestamp NULL DEFAULT NULL,
  `height` int(3) DEFAULT NULL,
  `weight` int(3) DEFAULT NULL,
  `round1` int(3) DEFAULT NULL,
  `round2` int(3) DEFAULT NULL,
  `round3` int(3) DEFAULT NULL,
  `face` varchar(255) DEFAULT NULL,
  `service` longtext DEFAULT NULL,
  `surcharge` int(12) DEFAULT NULL,
  `identification` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `time_work` varchar(255) DEFAULT NULL,
  `refuse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `peoples`
--

INSERT INTO `peoples` (`id`, `province_id`, `province_name`, `image_url`, `code`, `name`, `age`, `price`, `description`, `sortAddress`, `images_list`, `title`, `vote`, `pass`, `year_of_birth`, `height`, `weight`, `round1`, `round2`, `round3`, `face`, `service`, `surcharge`, `identification`, `duration`, `time_work`, `refuse`) VALUES
(2, 1, 'An Giang', 'https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-19.jpg', 'A1', 'Nguyễn Văn AAAAAAA', 21, 'Từ 1tr - 10tr', 'Nhìn cái tró gì', 'Hà Nội', '[\"https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-20.jpg\",\"https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-21.jpg\",\"https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-22.jpg\",\"https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-23.jpg\",\"https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-24.jpg\",\"https://meatworld.com.vn/wp-content/uploads/anh-gai-xinh-che-mat-25.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'An Giang13', 'https://example.com/image3123.jpg', 'A13123123', 'Nguyễn Văn A3123123', 2312315, '1tr5 - 10tr3123123', '31231232131', 'Địa chỉ 1231231231231233', '[\"https://example.com/image1.jp3123g\",\"https://example.com/image31232132.jpg\"]', 'Mr.3123', '4.5', '12343123123', '2024-10-29 22:53:11', 170, 65, 93, 60, 90, 'Đẹp', 'VIP', 100, 'ID123452136', '30', '9AM - 6PM', 'false');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `passWordPay` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `id` int(8) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `number_phone` varchar(10) DEFAULT NULL,
  `balance` bigint(12) NOT NULL DEFAULT 0,
  `membership_level` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `gender`, `passWordPay`, `avatar`, `username`, `id`, `password`, `email`, `number_phone`, `balance`, `membership_level`) VALUES
('Doanh', 'Tran Danh', 'Nam', NULL, NULL, 'nhimcaptain', 5, '$2a$10$goyruridxArez2EgfYnF..8RZJ0dAZ.dTukR5m2.uVdeccQ9WbSZ6', 'ndaka@gmail.com', '', 0, 1),
('test', 'Tran Danh13', NULL, NULL, NULL, 'nhimcaptain13', 6, '$2a$10$flxC8bmqgJsjHEdVnwPGgu.EC39KSQqtH3vXUDx0LoV/iAQWhMb.G', 'ndakaa13@gmail.com', '234', 0, 1),
('aaa', 'tran the', NULL, NULL, NULL, 'nhimcd', 7, '$2a$10$lalrRbCC4BYjEPH2UDxCluue/nNXoMfjYBdJoDAGFAQyqUSRzIrRK', 'ndakaa1222@gmail.com', '23433', 0, 1),
('aaa', 'tran the', NULL, NULL, NULL, 'testuser', 8, '$2a$10$WD.F/XOLItWg4bWpk2kNx.zog4cZI8gHGqXRbBNFUsoV8PqQ/afo2', '', '', 0, 1),
('aaa', 'tran the', NULL, NULL, NULL, 'testuser1', 9, '$2a$10$UHtiO8dl8r9kjbZMtw5Tm.M41uxbyF18xOfLeOdGZJzVs/OUQoeji', '', '', 0, 1),
('', '', NULL, NULL, NULL, 'nhimcaptain1', 10, '$2a$10$B9P7KFBl3KzTDmZxabY8qO4wKB3rWJPFybOsRcrlHqD/uHPX4KBae', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `video_image` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `views` int(11) DEFAULT 0,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0,
  `comments` int(11) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `type_name`, `type_id`, `video_image`, `url`, `views`, `likes`, `dislikes`, `comments`, `createdAt`, `updatedAt`) VALUES
(1, 'XẢ VIBES - DANMY và V# có màn kết hợp cực slay cực cháy | Rap Việt 2024 [Performance]', 'Một màn biểu diễn cực sôi động đến từ Rap Việt 2024.', 'Việt Nam', 1, 'https://i.ytimg.com/vi/dV6kLDpE80Y/hqdefault.jpg', 'https://www.youtube.com/watch?v=h7cOOfpdEfk', 1000, 500, 200, 300, '2024-11-09 15:12:51', '2024-11-09 15:12:51'),
(2, 'XẢ VIBES - DANMY và V# có màn kết hợp cực slay cực cháy | Rap Việt 2024 [Performance]', 'Một màn biểu diễn cực sôi động đến từ Rap Việt 2024.', 'Việt Nam', 1, 'https://i.ytimg.com/vi/dV6kLDpE80Y/hqdefault.jpg', 'https://www.youtube.com/watch?v=h7cOOfpdEfk', 1000, 500, 200, 300, '2024-11-09 15:12:53', '2024-11-09 15:12:53'),
(3, '11111', '312312313', '312312321', 1, '31313123123', 'https://www.youtube.com/watch?v=h7cOOfpdEfk', 10004, 503120, 51200, 300412, '2024-11-09 15:13:24', '2024-11-09 15:14:42');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
