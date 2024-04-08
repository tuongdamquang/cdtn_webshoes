-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 08, 2024 lúc 05:27 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_shoes`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vans', '2024-02-07 11:50:15', '2024-03-06 15:07:28'),
(2, 'Converse', '2024-02-07 11:50:15', '2024-03-06 15:03:28'),
(3, 'Reebok', '2024-02-07 11:50:15', '2024-03-06 15:57:28'),
(4, 'New Balance', '2024-02-13 10:57:52', '2024-03-06 15:14:29'),
(5, 'Nike', '2024-02-07 11:50:15', '2024-03-06 15:57:28'),
(6, 'Adidas', '2024-02-13 10:57:52', '2024-03-06 15:14:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `collections`
--

INSERT INTO `collections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'One Piece', '2023-12-26 18:08:52', '2023-12-26 18:08:52'),
(2, 'The Spring', '2023-12-26 18:08:52', '2023-12-26 18:08:52'),
(3, 'Liliwyun', '2023-12-26 18:08:52', '2023-12-26 18:08:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message_contact` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `hoten`, `email`, `message_contact`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', 'Tôi cần hỗ trợ', 2, '2024-02-27 22:39:08', '2024-02-27 22:39:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `phone_number`, `email`, `address`, `note`, `order_date`) VALUES
(163, 'Nguyễn Văn A', '0987654321', 'nguyenvana@gmail.com', '123 Đường ABC, Quận XYZ, Thành phố Hồ Chí Minh', 'Xin giao hàng trước 5 giờ chiều', '2024-03-12 10:00:00'),
(164, 'Trần Thị B', '0123456789', 'tranthib@gmail.com', '456 Đường DEF, Quận UVW, Thành phố Hà Nội', NULL, '2024-03-12 10:30:00'),
(165, 'Lê Văn C', '0909090909', 'levanc@gmail.com', '789 Đường GHI, Quận JKL, Thành phố Đà Nẵng', 'Gọi trước khi giao hàng', '2024-03-12 11:00:00'),
(166, 'Phạm Thị D', '0363636363', 'phamthid@gmail.com', '321 Đường MNO, Quận PQR, Thành phố Cần Thơ', NULL, '2024-03-12 11:30:00'),
(172, 'Hoàng Văn E', '0123123123', 'hoangvane@gmail.com', '654 Đường STU, Quận VWX, Thành phố Hải Phòng', NULL, '2024-03-12 12:00:00'),
(173, 'Vũ Thị F', '0987098709', 'vuthif@gmail.com', '987 Đường YZT, Quận OPQ, Thành phố Nha Trang', 'Giao hàng cần gấp', '2024-03-12 12:30:00'),
(174, 'Ngô Văn G', '0908800880', 'ngovang@gmail.com', '852 Đường MNO, Quận DEF, Thành phố Vũng Tàu', NULL, '2024-03-12 13:00:00'),
(175, 'Trịnh Thị H', '0366036603', 'trinhthih@gmail.com', '741 Đường XYZ, Quận JKL, Thành phố Huế', 'Cần gói quà', '2024-03-12 13:30:00'),
(176, 'Lý Văn I', '0990099009', 'lyvani@gmail.com', '963 Đường HIJ, Quận STU, Thành phố Hạ Long', NULL, '2024-03-12 14:00:00'),
(177, 'Bùi Thị K', '0909090909', 'buithik@gmail.com', '159 Đường NOP, Quận UVW, Thành phố Cà Mau', NULL, '2024-03-12 14:30:00'),
(179, 'rrr', '87867687', 'ds@sfdgf', 'hghgfh', '', '2024-04-05 19:22:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `size` int(2) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `id_user`, `size`, `num`, `price`, `status`) VALUES
(172, 163, 1, 1, 40, 1, 2400000, 'Đang chuẩn bị'),
(173, 164, 2, 1, 39, 1, 2500000, 'Đang chuẩn bị'),
(176, 165, 5, 1, 37, 1, 3200000, 'Đang chuẩn bị'),
(177, 166, 4, 1, 38, 1, 1500000, 'Đã nhận hàng'),
(191, 179, 2, 1, NULL, 5, 2500000, 'Đã nhận hàng'),
(192, 179, 4, 1, NULL, 1, 1500000, 'Đã nhận hàng'),
(193, 179, 9, 1, NULL, 1, 2200000, 'Đã nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `size` int(2) DEFAULT NULL,
  `price` float NOT NULL,
  `number` float NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `thumbnail_1` varchar(500) NOT NULL,
  `thumbnail_2` varchar(500) NOT NULL,
  `thumbnail_3` varchar(500) NOT NULL,
  `thumbnail_4` varchar(500) NOT NULL,
  `thumbnail_5` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `size`, `price`, `number`, `thumbnail`, `thumbnail_1`, `thumbnail_2`, `thumbnail_3`, `thumbnail_4`, `thumbnail_5`, `content`, `id_category`, `id_sanpham`, `created_at`, `updated_at`) VALUES
(1, 'Vans Knu Skool', NULL, 2400000, 10, 'v/vks/1.jpg', 'v/vks/2.jpg', 'v/vks/3.jpg', 'v/vks/4.jpg', 'v/vks/5.jpg', 'v/vks/6.jpg', 'Giày Vans Old Skool - một biểu tượng về phong cách và sự thoải mái trong thế giới giày sneaker. Với thiết kế kinh điển từ dải nửa phía trên đế đến dải bảo vệ ngón chân, Giày Vans Old Skool trở thành biểu tượng của phong cách đường phố. Với chất liệu da hoặc vải canvas, các màu sắc đa dạng và logo huyền thoại trên bên hông, mẫu giày này không chỉ thể hiện cá tính mạnh mẽ mà còn mang lại sự thoải mái suốt cả ngày.', 1, 1, '2024-01-30 10:37:18', '2024-02-27 15:24:13'),
(2, 'Vans Sk8-Hi Rearrange', NULL, 2500000, 20, 'v/vshr/1.jpg', 'v/vshr/2.jpg', 'v/vshr/3.jpg', 'v/vshr/4.jpg', 'v/vshr/5.jpg', 'v/vshr/6.jpg', 'Giày Vans Sk8-Hi Rearrange - sự kết hợp độc đáo giữa phong cách cổ điển và sự đột phá hiện đại. Với thiết kế cao cổ mang tính biểu tượng của dòng giày Sk8-Hi, mẫu Rearrange mang đến một cảm giác mới lạ với việc sắp xếp lại các thành phần truyền thống. Tính linh hoạt của mẫu này cho phép bạn tự do biến đổi và tái tạo với các phụ kiện và chi tiết tùy chỉnh, tạo ra một phong cách cá nhân và độc đáo.', 1, 1, '2024-01-30 15:11:49', '2024-01-30 15:11:49'),
(3, 'Vans Authentic COLOR THEORY',NULL, 1400000,20,'v/vact/1.jpg', 'v/vact/2.jpg', 'v/vact/3.jpg', 'v/vact/4.jpg', 'v/vact/5.jpg', 'v/vact/6.jpg','Vans Authentic Color Theory là sự kết hợp táo bạo giữa phong cách cổ điển và sự sáng tạo hiện đại. Với bảng màu đa dạng và độc đáo, mỗi đôi giày là một tuyên bố cá nhân về phong cách của bạn. Chất liệu vải canvas cao cấp cùng với đế ngoài chắc chắn, đảm bảo sự thoải mái và bền bỉ trong mọi hoạt động. Vans Authentic Color Theory không chỉ là một cách để diễn đạt cá nhân mà còn là biểu tượng của sự sáng tạo và phong cách tự do.',1, '2024-04-04 15:14:23', '2024-04-04 15:14:25' ),
(4, 'Vans Authentic Rearrange',NULL,140000,15,'v/var/1.jpg','v/var/2.jpg','v/var/3.jpg','v/var/4.jpg','v/var/3.jpg','v/var/4.jpg','Vans Authentic Rearrange mang đến một cách tiếp cận mới mẻ và sáng tạo đối với phong cách cổ điển. Với thiết kế hiện đại, các yếu tố của giày được sắp xếp lại một cách độc đáo, tạo nên một diện mạo hoàn toàn mới. Đặc biệt, dây buộc và phần thân giày có thể tháo rời và sắp xếp lại theo sở thích cá nhân, cho phép bạn tạo ra hàng ngàn tổ hợp phong cách khác nhau. Với sự linh hoạt này, Vans Authentic Rearrange không chỉ là một đôi giày, mà còn là một tác phẩm nghệ thuật di động, đánh bại mọi giới hạn trong việc thể hiện cá nhân.',1,'2024-04-04 15:14:26','2024-04-04 15:15:25'),
(5, 'Vans Classic Slip-On',NULL,1400000,25,'v/vcso/1.jpg','v/vcso/2.jpg','v/vcso/3.jpg','v/vcso/4.jpg','v/vcso/5.jpg','v/vcso/5.jpg','Vans Classic Slip-On là biểu tượng của phong cách đơn giản và thoải mái. Với thiết kế slip-on tiện lợi, bạn có thể dễ dàng mang và cởi giày mà không cần phải cài đặt dây buộc. Chất liệu vải canvas chắc chắn và đế cao su độ bền cao, mang lại sự thoải mái và an toàn cho bàn chân. Với phần trên đơn giản nhưng đầy phong cách, Vans Classic Slip-On không chỉ là một đôi giày, mà còn là biểu tượng của phong cách thời trang không bao giờ lỗi mốt.',1,'2024-04-04 15:15:25','2024-04-04 15:17:25'),
(6, 'Vans Mn Skate Half Cab',NULL,2800000,30,'','','','','','','',,'',''),






(3, 'Converse Chuck 70 Seasonal Color Canvas', NULL, 1300000, 20, 'c/cc7scc/1.jpg', 'c/cc7scc/2.jpg', 'c/cc7scc/3.jpg', 'c/cc7scc/4.jpg', 'c/cc7scc/5.jpg', 'c/cc7scc/6.jpg', 'Giày Converse Chuck 70 Seasonal Color Canvas - một sự kết hợp hoàn hảo giữa phong cách cổ điển và sự sáng tạo hiện đại. Với chất liệu vải canvas cao cấp và đế giày chắc chắn, mẫu này mang lại cảm giác thoải mái và bền bỉ. Điểm nhấn là gam màu mang tính mùa vụ, tạo điểm nhấn sắc màu tươi mới cho bộ sưu tập giày của bạn. Với kiểu dáng Chuck 70 kinh điển, đây là lựa chọn hoàn hảo cho những ai yêu thích sự phá cách và cá tính.', 2, 1, '2023-10-30 17:31:22', '2024-01-27 12:09:25'),
(4, 'Converse Run Star Hike Festival – Juicy Green Graphic', NULL, 1500000, 20, 'c/crshf/1.jpg', 'c/crshf/2.jpg', 'c/crshf/3.jpg', 'c/crshf/4.jpg', 'c/crshf/5.jpg', 'c/crshf/6.jpg', 'Giày Converse Run Star Hike Festival – Juicy Green Graphic là sự kết hợp độc đáo giữa phong cách retro và sự sáng tạo hiện đại. Với màu sắc tươi mới Juicy Green và các đường graphic tinh tế, đây là một điểm nhấn cho bất kỳ outfit nào. Thiết kế đế nền cao Run Star Hike tạo ra vẻ ngoài đặc biệt và thoải mái cho người mang. Đây là một lựa chọn hoàn hảo cho những ai muốn thể hiện phong cách cá nhân và sự tự tin.', 2, 2, '2023-10-30 21:59:06', '2023-10-30 21:59:06'),
(5, 'Reebok Answer DMX - White', NULL, 3200000, 10, 'rb/rad/1.jpg', 'rb/rad/2.jpg', 'rb/rad/3.jpg', 'rb/rad/4.jpg', 'rb/rad/5.jpg', 'rb/rad/6.jpg', 'Reebok Answer DMX - White là biểu tượng của sự đẳng cấp và phong cách trong thế giới giày sneaker. Với màu trắng tinh khôi, đôi giày này mang đến vẻ đẹp tinh tế và dễ kết hợp với mọi trang phục. Thiết kế dạng cao cổ kết hợp với công nghệ DMX của Reebok giúp cung cấp sự thoải mái và hỗ trợ cho đôi chân, phù hợp cho cả những hoạt động hàng ngày và các buổi tập thể thao. Đây là sự lựa chọn lý tưởng cho những ai đang tìm kiếm sự kết hợp hoàn hảo giữa phong cách và hiệu suất.', 3, 1, '2023-10-30 22:10:40', '2023-10-30 22:10:40'),
(6, 'Reebok Club C 85 - White : Glen Green : Solar Acid Yellow', NULL, 1800000, 10, 'rb/rbsay/1.jpg', 'rb/rbsay/2.jpg', 'rb/rbsay/3.jpg', 'rb/rbsay/4.jpg', 'rb/rbsay/5.jpg', 'rb/rbsay/6.jpg', 'Reebok Club C 85 - White : Glen Green : Solar Acid Yellow là một sự kết hợp táo bạo và phong cách trong thế giới giày sneaker. Với màu trắng tinh khôi làm nền, điểm nhấn là các chi tiết màu Glen Green và Solar Acid Yellow, tạo nên một phong cách cá nhân và độc đáo. Thiết kế dựa trên dòng Club C 85 mang đến sự thoải mái và phong cách cổ điển. Đôi giày này không chỉ là sự lựa chọn tuyệt vời cho các buổi đi chơi hàng ngày mà còn là điểm nhấn hoàn hảo cho bất kỳ bộ trang phục nào.', 3, 3, '2023-10-31 12:37:46', '2023-12-27 08:41:12'),
(7, 'New Balance 1906F - Phantom', NULL, 3100000, 20, 'nb/nb1p/1.jpg', 'nb/nb1p/2.jpg', 'nb/nb1p/3.jpg', 'nb/nb1p/4.jpg', 'nb/nb1p/5.jpg', 'nb/nb1p/6.jpg', 'New Balance 1906F - Phantom: Sự Kết Hợp Tinh Tế Của Phong Cách Và Hiệu Suất', 4, 2, '2023-10-31 12:40:58', '2023-10-31 12:40:58'),
(8, 'New Balance 1906R - Castlerock / Natural Indigo', NULL, 3200000, 20, 'nb/nb1c/1.jpg', 'nb/nb1c/2.jpg', 'nb/nb1c/3.jpg', 'nb/nb1c/4.jpg', 'nb/nb1c/5.jpg', 'nb/nb1c/6.jpg', 'New Balance 1906R - Castlerock / Natural Indigo kết hợp màu sắc Castlerock và Natural Indigo để tạo ra phong cách độc đáo. Thiết kế thoải mái và đa năng này là sự lựa chọn hoàn hảo cho mọi hoạt động hàng ngày.', 4, 2, '2023-10-31 12:43:18', '2023-10-31 12:43:18'),
(9, 'Nike Air Max 90 - Red Stardust', NULL, 2200000, 15, 'n/nam9r/1.jpg', 'n/nam9r/2.jpg', 'n/nam9r/3.jpg', 'n/nam9r/4.jpg', 'n/nam9r/5.jpg', 'n/nam9r/4.jpg', 'Nike Air Max 90 - Red Stardust: Sự Kết Hợp Đầy Cá Tính Của Màu Đỏ Stardust. Thiết Kế Đậm Chất Thể Thao Cùng Công Nghệ Air Max Đỉnh Cao, Đôi Giày Này Sẽ Làm Nổi Bật Bước Chân Của Bạn Trong Mọi Hoàn Cảnh.', 5, 2, '2023-10-31 12:55:56', '2024-04-08 05:54:17'),
(10, 'Air Jordan 1 Low WMNS - Sky J Orange', NULL, 3400000, 20, 'n/aj1lw/1.jpg', 'n/aj1lw/2.jpg', 'n/aj1lw/3.jpg', 'n/aj1lw/4.jpg', 'n/aj1lw/5.jpg', 'n/aj1lw/6.jpg', 'Air Jordan 1 Low WMNS - Sky J Orange: Sự Kết Hợp Độc Đáo Của Màu Sky J Orange. Với Thiết Kế Thấp Cổ, Đôi Giày Này Mang Lại Sự Tự Tin và Phong Cách Cá Nhân. Sẵn Sàng Đồng Hành Cùng Bạn Trên Mọi Nẻo Đường và Hoạt Động Thể Thao.', 5, 2, '2023-10-31 12:59:42', '2023-10-31 12:59:42'),
(11, 'Rivalry Low', NULL, 2200000, 10, 'a/rl/1.jpg', 'a/rl/2.jpg', 'a/rl/3.jpg', 'a/rl/4.jpg', 'a/rl/5.jpg', 'a/rl/6.jpg', 'GIÀY RIVALRY LOW: Sự Kết Hợp Hoàn Hảo Giữa Phong Cách Đường Phố và Sự Thể Thao. Thiết Kế Thấp Cổ Mang Lại Sự Linh Hoạt và Độ Bền. Được Chế Tác Với Chất Liệu Chất Lượng Cùng Logo Đặc Trưng, Đôi Giày Này Sẽ Là Điểm Nhấn Hoàn Hảo Cho Bất Kỳ Bộ Trang Phục Nào.', 6, 1, '2023-10-31 13:06:27', '2023-10-31 13:06:27'),
(12, 'Superstar XLG', NULL, 3000000, 15, 'a/xs/1.jpg', 'a/xs/2.jpg', 'a/xs/3.jpg', 'a/xs/4.jpg', 'a/xs/5.jpg', 'a/xs/6.jpg', 'GIÀY SUPERSTAR XLG: Sự Kết Hợp Độc Đáo Của Phong Cách Retro và Thiết Kế Hiện Đại. Với Đế Đệm Cao Su Và Phần Mũi Giày Shell Toe Kinh Điển, Đôi Giày Này Mang Lại Sự Thoải Mái và Sự Bền Bỉ Cho Mọi Hoạt Động. Sự Xuất Hiện Của Logo Thương Hiệu Trên Thân Giày Tạo Điểm Nhấn Tinh Tế, Phản Ánh Phong Cách Cá Nhân.', 6, 2, '2023-11-05 21:03:16', '2023-11-05 21:03:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `tendangnhap` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `fullname`, `tendangnhap`, `email`, `diachi`, `matkhau`, `dienthoai`, `role`) VALUES
(1, 'quang tuong', 'Admin_Chu', 'admin@gmail.com', 'TP.HCM', '9999', 123456789, 'admin'),
(2, 'User', 'user_luxury', 'userluxury@gmail.com', 'TPHCM', '9999', 123452289, 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ibfk_1` (`id_user`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `collections` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
