-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 04:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

CREATE DATABASE didong;

USE didong;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `didong`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Đồng hồ'),
(4, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `id_product` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `image`, `id_product`) VALUES
(1, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 3),
(2, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 8),
(3, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 1),
(4, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 2),
(5, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 4),
(10, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 5),
(11, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 6),
(12, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 11),
(13, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 16),
(14, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 21),
(15, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 26),
(16, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 31),
(17, 'Tím, Trắng, Xanh dương, Xanh lá, Đen, Đỏ', '#CDC5F9, #FFFFFF, #003156, #DBF1D7, #000000, #D70018', 'iphone-12-mini-violet-select-2020_8.webp, iphone-12-mini-white-select-2020_11.webp, iphone-12-mini-blue-select-2020_2_5.webp, iphone-12-mini-green-select-2020_8.webp, iphone-12-mini-black-select-2020_3.webp, iphone-12-mini-red-select-2020_3.webp', 36),
(18, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 7),
(19, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 12),
(20, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 17),
(22, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 27),
(23, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 32),
(24, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 13),
(25, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 18),
(26, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 23),
(27, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 28),
(28, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 33),
(29, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 9),
(31, 'Bạc, Vàng, Xám, Xanh dương, Xanh lá', '#ECEDE8, #f3f49c, #807B76, #003156, #DBF1D7', 'iphone_13-_pro-3_3.webp, iphone_13-_pro-2_1_7.webp, iphone_13-_pro-4_3.webp, iphone_13-_pro-5_9.webp, iphone-13-pro-family-hero_2_1_1_1.webp', 22),
(35, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 10),
(36, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 15),
(37, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 20),
(38, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 25),
(39, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 30),
(40, 'Hồng, Trắng, Xanh, Đen', '#F0DFD7, #FFFFFF, #4B6361, #000000', 'sm-s901_galaxys22_front_pinkgold_211122_2.webp, sm-s901_galaxys22_front_phantomwhite_211122_2.jpg, sm-s901_galaxys22_front_green_211123_2.jpg, sm-s901_galaxys22_front_phantomblack_211122_2.jpg', 35),
(42, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 14),
(45, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 19),
(46, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 24),
(47, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 29),
(48, 'Bạc', '#e6e6e6', '27_1_32.jpg, 27_1_32.jpg', 34),
(51, 'Đen, Trắng', '#00000, #ffff', 'apple-watch-s3-gps-38mm-den.jpg, apple-watch-s3-gps-38mm-trang.jpg', 40),
(52, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 42),
(53, 'Xám, Bạc', '#eff7fe, #dadbdd', 'apple-macbook-pro-13-inch-m2-2022-6.jpg, apple-macbook-pro-13-inch-m2-2022-6-1.jpg', 43),
(54, 'Đen, Trắng', '#00000, #ffff', 'apple-watch-s3-gps-38mm-den.jpg, apple-watch-s3-gps-38mm-trang.jpg', 44);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`) VALUES
(1, 'Trang chủ'),
(2, 'Sản phẩm'),
(3, 'Giỏ hàng'),
(4, 'Liên hệ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(15) NOT NULL,
  `id_category` int(11) NOT NULL,
  `memory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `sale` int(11) NOT NULL,
  `highlight` bit(1) NOT NULL,
  `new_product` bit(1) NOT NULL,
  `detail` text NOT NULL,
  `craeted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `RAM` int(10) NOT NULL,
  `CPU` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `memory`, `name`, `price`, `sale`, `highlight`, `new_product`, `detail`, `craeted_at`, `updated_at`, `RAM`, `CPU`) VALUES
(1, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'0', b'1', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(2, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'1', b'0', 'Màn hình Super Retina XDR độ sáng cao\nĐiện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.\n\nVề khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.\n\nCụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.\n\nCamera kép 12MP, hỗ trợ ổn định hình ảnh quang học\n\niPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.\n\nCụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15'),
(3, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'0', b'1', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(4, 2, '256GB', 'Laptop Dell Insprion 14 inch  5406-3661SLV', '13290000', 0, b'1', b'0', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(5, 1, '128GB, 256GB, 512GB', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'0', b'1', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(6, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'1', b'0', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(7, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'0', b'1', 'Màn hình Super Retina XDR độ sáng cao\r\nĐiện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.\r\n\r\nVề khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.\r\n\r\nCụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.\r\n\r\nCamera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\n\r\niPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.\r\n\r\nCụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15 Bionic'),
(8, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'1', b'0', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(9, 2, '256', 'Laptop Dell Insprion 14', '13290000', 0, b'0', b'1', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(10, 1, '128GB, 256GB, 512GB', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'1', b'0', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(11, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'0', b'1', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(12, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'1', b'0', 'Màn hình Super Retina XDR độ sáng cao\r\nĐiện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.\r\n\r\nVề khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.\r\n\r\nCụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.\r\n\r\nCamera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\n\r\niPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.\r\n\r\nCụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15 Bionic'),
(13, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'0', b'1', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(14, 2, '256', 'Laptop Dell Insprion 14 inch', '13290000', 0, b'1', b'0', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(15, 1, '128GB, 256GB, 512GB', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'0', b'1', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(16, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'1', b'0', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(17, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'0', b'1', 'Màn hình Super Retina XDR độ sáng cao\r\nĐiện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.\r\n\r\nVề khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.\r\n\r\nCụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.\r\n\r\nCamera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\n\r\niPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.\r\n\r\nCụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15 Bionic'),
(18, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'1', b'0', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(19, 2, '256 SSD', 'Laptop Dell Insprion 14', '13290000', 0, b'1', b'0', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(20, 1, '128, 256, 512', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'1', b'0', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(21, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'0', b'1', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(22, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'0', b'1', 'Màn hình Super Retina XDR độ sáng cao\nĐiện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.\n\nVề khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.\n\nCụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.\n\nCamera kép 12MP, hỗ trợ ổn định hình ảnh quang học\n\niPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.\n\nCụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15 Bionic'),
(23, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'1', b'0', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(24, 2, '256 SSD', 'Laptop Dell Insprion 14 inch', '13290000', 0, b'0', b'1', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(25, 1, '128, 256, 512', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'1', b'0', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(26, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'0', b'1', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(27, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'1', b'0', 'Màn hình Super Retina XDR độ sáng cao\r\nĐiện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.\r\n\r\nVề khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.\r\n\r\nCụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.\r\n\r\nCamera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\n\r\niPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.\r\n\r\nCụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15 Bionic'),
(28, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'1', b'0', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(29, 2, '256GB', 'Laptop Dell Insprion 14', '13290000', 0, b'0', b'1', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(30, 1, '128GB, 256GB, 512GB', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'0', b'1', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(31, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'1', b'0', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(32, 1, '128GB, 256GB, 512GB, 1TB', 'IPhone 13 Pro', '24990000, 26990000, 32500000, 40000000', 0, b'1', b'0', 'Màn hình Super Retina XDR độ sáng cao Điện thoại iPhone 13 sẽ được sử dụng tấm nền OLED chất lượng cao và có kích thước 6.1 inch, lớn hơn iPhone 13 mini (5.4 inch). Với tấm nền này với công nghệ ProMotion giúp iPhone 13 tiết kiệm pin đến tối đa khi sử dụng. Người dùng cũng có thể dễ dàng điều chỉnh tốc độ làm tươi tùy theo ý thích.  Về khả năng hiển thị, mang đến chất lượng hiển thị vượt trội với màn hình OLED độ phân giải cao, độ sáng lớn. Nhờ đó người dùng có thể nhìn rõ trong nhiều điều kiện sáng khác nhau, kể cả ngoài trời.  Cụ thể, màn hình Super Retina XDR với độ sáng cao lên đên 800 nits, và tối đa có thể lên tới 1200 nits cùng dải màu rộng P3, tỉ lệ tương phản lớn. Phía bên ngoài màn hình được phủ lớp oleophobic giúp chống bám vân tay. Nhờ đó hạn chế được các tình trạng bám bụi bẩn và mồ hôi trong quá trình sử dụng.  Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học  iPhone 13 có một sự thay đổi lớn về camera so với trên iPhone 12 Series. Cụ thể, iPhone có thể được trang bị ống kính siêu rộng mới giúp máy hiển thị được nhiều chi tiết hơn ở các bức hình thiếu sáng. Trong khi đó ống kính góc rộng có thể thu được nhiều sáng hơn, lên đến 47% giúp chất lượng bức ảnh, video được cải thiện hơn.  Cụm camera được trang bị tính năng ổn định hình ảnh quang học cùng cảm biến mới, nhờ đó bức hình chụp mang lại khả năng ổn định.', '2022-07-08 04:41:08', '2022-07-08 09:44:01', 6, 'Apple A15 Bionic'),
(33, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'1', b'0', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(34, 2, '256GB', 'Laptop Dell Insprion 14 inch', '13290000', 0, b'0', b'1', 'Về thiết kế bên ngoài, Dell insprion 14 5406-3661SLV được trang bị một thiết kế trang nhã với tone màu bạc sang trọng. \r\n\r\nBàn phím rút gọn với hành trình phím sâu, mang lại trải nghiệm đánh máy thoải mái.\r\n\r\nHiệu năng ổn định với chip Intel i3, bộ nhớ RAM lớn\r\n\r\nVề cấu hình, Dell insprion 14 5406-3661SLV được trang bị con chip Intel thế hệ 11, kết hợp với bộ nhớ RAM lớn cùng ổ cứng SSD tốc độ đọc – ghi cao. Laptop Dell insprion 14 5406-3661SLV cho một trải nghiệm dùng ổn định ở các tác vụ cơ bản.\r\n\r\nVề thời lượng sử dụng, laptop Dell insprion 14 5406-3661SLV được trang bị viên pin mang lại thời gian sử dụng lâu ấn tượng.\r\n\r\nLaptop Dell insprion 14 5406-3661SLV với thiết kế mỏng nhẹ, giá cả phải chăng. ', '2022-07-08 05:33:42', '2022-07-08 11:07:02', 8, 'Intel Core i3 Gen 11'),
(35, 1, '128GB, 256GB, 512GB', 'Samsung Galaxy S22 Ultra', '25090000, 27990000, 30890000', 0, b'1', b'0', 'Điện thoại Samsung S22 Ultra phiên bản RAM 12GB cho cảm giác siêu mượt mà khi mở và đóng ứng dụng, đi kèm bộ nhớ trong 256GB cho bạn thoải mái lưu trữ những khung hình, thước phim chất lượng cao. Vi xử lý Qualcomm Snapdragon 8 Gen 1 hứa hẹn mang đến hiệu năng tuyệt đỉnh, xử lý mượt mà mọi tác vụ.\r\n\r\nVi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\n\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\n\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W\r\n', '2022-07-08 06:11:17', '2022-07-08 11:15:52', 12, 'Snapdragon 8 Gen 1'),
(36, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'0', b'1', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(40, 3, '1202020', 'Apple Watch Serise 3', '4000000, 5000000', 0, b'0', b'0', 'i28828828834', '2022-08-04 12:15:35', '2022-08-04 17:17:19', 1, 'Apple'),
(41, 1, '64GB, 128GB, 256GB', 'Iphone 12 chính hãng', '15990000, 17990000, 19990000', 0, b'0', b'1', 'Iphone 12 đẩy nhanh mọi tác vụ với A14 Bionic, chip nhanh nhất trên điện thoại thông minh. Hệ thống camera kép mới. Với màn hình Super Retina XDR tuyệt đẹp, nay bạn có thể chiêm ngưỡng từng chi tiết hình ảnh vô cùng sống động.', '2022-07-08 04:35:02', '2022-07-08 09:40:22', 6, 'Apple A14 Bionic'),
(42, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'1', b'0', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(43, 2, '256GB, 512GB', 'Apple MacBook Pro 13 M2 2022', '39990000, 44990000', 0, b'0', b'1', 'Với sự giúp sức của chip M2, MacBook Pro 2022 trở nên chuyên nghiệp hơn bao giờ hết. Kết cấu nhỏ nhắn, thời lượng pin 20 giờ và hệ thống làm mát hiệu quả giúp sản phẩm duy trì hiệu suất cao trong thời gian dài. Màn hình Retina, camera FaceTime HD và micro studio cũng là điểm cộng đem đến trải nghiệm xuất sắc.\r\n\r\nMạnh mẽ hơn và chuyên nghiệp hơn\r\nMang trong mình chip xử lý Apple M2 nhanh hơn 1.4 lần so với chip M1, MacBook Pro M2 sẽ giúp bạn giải quyết nhanh gọn mọi công việc nhờ CPU 8 nhân mạnh mẽ và GPU 10 lõi cực nhanh. Khả năng xử lý các tác vụ đồ họa hiệu quả giúp sản phẩm dễ dàng làm việc với nhiều luồng video 4K và 8K định dạng ProRes. Với M2, MacBook Pro 2022 đã đạt đến một bước tiến mới về sức mạnh cũng như độ chuyên nghiệp.\r\n\r\nTản nhiệt hiệu quả, hiệu suất chuyên sâu\r\nMacBook Pro M2 2022 được trang bị cơ chế làm mát hiệu quả, giúp duy trì hiệu suất nhanh nhạy xuyên suốt và tối ưu hóa khả năng vận hành của chip Apple M2 ở mức tốt nhất. Nhờ đó, chủ nhân thiết bị sẽ dễ dàng chạy các tác vụ chuyên sâu về CPU và GPU trong nhiều giờ liên tục.\r\n\r\nKết hợp nhịp nhàng giữa M2 và macOS\r\nNền tảng macOS sẽ khéo léo tận dụng toàn bộ sức mạnh của chip M2 để mang lại tốc độ và khả năng phản hồi nhanh nhạy mọi tác vụ bạn thực hiện trên MacBook Pro 2022 – bao gồm cả phần mềm Microsoft 365 và các ứng dụng iOS mà bạn yêu thích. Đội ngũ Apple đã tối ưu hơn 10.000 ứng dụng để tương thích tốt nhất với chip M2, từ đó đem lại trải nghiệm nhanh nhạy nhất, ấn tượng nhất.\r\n\r\nKhả năng bảo mật vượt trội mọi đối thủ\r\nNổi danh là doanh nghiệp bảo mật dữ liệu người dùng hàng đầu thế giới, Apple đem đến cho MacBook Pro tính năng bảo mật và cung cấp quyền riêng tư vượt trội hoàn toàn so với bất cứ dòng sản phẩm đối thủ nào. Mối liên kết chặt chẽ giữa chip M2 với macOS có thể ngăn chặn các phần mềm độc hại và sự tấn công của virus, bảo vệ an toàn cho quyền riêng tư và dữ liệu cá nhân của bạn.', '2022-07-08 05:19:40', '2022-07-08 10:32:29', 16, 'M2'),
(44, 3, '1202020', 'Apple Watch Serise 3', '4000000, 5000000', 0, b'0', b'0', 'i28828828834', '2022-08-04 12:15:35', '2022-08-04 17:17:19', 1, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`) VALUES
(1, 'slide_1.png'),
(2, 'slide_2.png'),
(3, 'slide_3.png'),
(4, 'slide_4.png'),
(5, 'slide_5.png'),
(6, 'slide_6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(400) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories` (`id_category`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
