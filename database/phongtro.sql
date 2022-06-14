-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 12, 2022 lúc 09:42 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phongtrohn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Phòng trọ cho thuê', 'phong-tro-cho-thue', NULL, NULL),
(2, 'Ở ghép', 'o-ghep', NULL, NULL),
(3, 'Nhà nguyên căn', 'nha-nguyen-can', NULL, NULL),
(4, 'Chung cư', 'chung-cu', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `user_id`, `room_id`, `created_at`) VALUES
(20, 'sạch sẽ, thoáng mát', 16, 21, '2022-05-28 03:04:23'),
(21, 'Nhà đẹp, chủ nhà vui tính', 5, 39, '2022-06-01 00:34:04'),
(22, 'nhà đẹp', 5, 33, '2022-06-01 01:40:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Quận 1', 'quan-1', NULL, NULL),
(2, 'Quận 2', 'quan-2', NULL, NULL),
(3, 'Quận 3', 'quan-3', NULL, NULL),
(4, 'Quận 4', 'quan-4', NULL, NULL),
(5, 'Quận 5', 'quan-5', NULL, NULL),
(6, 'Quận 6', 'quan-6', NULL, NULL),
(7, 'Quận 7', 'quan-7', NULL, NULL),
(8, 'Quận 8', 'quan-8', NULL, NULL),
(9, 'Quận 9', 'quan-9', NULL, NULL),
(10, 'Quận 10', 'quan-10', NULL, NULL),
(11, 'Quận 11', 'quan-11', NULL, NULL),
(12, 'Quận 12', 'quan-12', NULL, NULL),
(13, 'Quận Tân Bình', 'quan-tan-binh', NULL, NULL),
(14, 'Quận Bình Thạnh', 'quan-binh-thanh', NULL, NULL),
(15, 'Quận Gò Vấp', 'quan-go-vap', NULL, NULL),
(16, 'Quận Phú Nhuận', 'quan-phu-nhuan', NULL, NULL),
(17, 'Quận Tân Bình', 'quan-tan-binh', NULL, NULL),
(18, 'Quận Tân Phú', 'quan-tan-phu', NULL, NULL),
(19, 'Quận/Thành phố Thủ Đức', 'quan-thanh-pho-thu-duc', NULL, NULL),
(20, 'Huyện Bình Chánh', 'huyen-binh-chanh', NULL, NULL),
(21, 'Huyện Cần Giờ', 'huyen-can-gio', NULL, NULL),
(22, 'Huyện Củ Chi', 'huyen-cu-chi', NULL, NULL),
(23, 'Huyện Hóc Môn', 'huyen-hoc-mon', NULL, NULL),
(24, 'Huyện Nhà Bè', 'huyen-nha-be', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_083541_create_table_motel_rooms', 1),
(4, '2018_03_11_085624_create_table_districts', 1),
(5, '2018_03_11_085744_create_table_categories', 1),
(6, '2018_04_22_122641_add_column__status_for_user', 1),
(7, '2018_04_22_152143_add_ondelete_cascade_for_motelroom', 1),
(8, '2018_05_06_030849_add_col_phone_for__motelroom_table', 1),
(9, '2018_05_12_063610_add_column_approve_for_motelroom', 1),
(10, '2018_05_13_064120_add_table_report', 1),
(11, '2018_05_19_033745_add_column_slug_table_motelroom', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `motelrooms`
--

CREATE TABLE `motelrooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `count_view` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latlng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `utilities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approve` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `motelrooms`
--

INSERT INTO `motelrooms` (`id`, `title`, `description`, `price`, `area`, `count_view`, `address`, `latlng`, `images`, `user_id`, `category_id`, `district_id`, `utilities`, `created_at`, `updated_at`, `phone`, `approve`, `slug`) VALUES
(21, 'CHO THUÊ PHÒNG TRỌ CAO CẤP 1 TRỆT 1 LẦU ,2 PHÒNG NGỦ', 'Giá 4TR ở được 4 người phù hợp cho gia đình ở lâu dài\r\n\r\nPhòng mới xây nằm ở khu dân cư yên tỉnh, phòng chi tiết như sau:\r\n\r\nPhòng mới xây dạng nhà nguyên căn 1 TRỆT 1 LẦU\r\n\r\ncó 2 phòng ngủ,1 phòng khách,1 tolet,1 bếp,DT phòng: 45 m2\r\n\r\nHành lang và khu vực công cộng rất sạch sẽ, thoáng mát\r\n\r\nMỗi phòng điều trang bị bếp, chậu rửa, tủ bếp, WC tất cả điều sử dụng thiết bị cao cấp.\r\n\r\nCó sân phơi riêng từng phòng, hệ thống Camera 24/24, hệ thống PCCC an toàn,cửa ra vào bằng vân tay.\r\n\r\nInternet, cáp TV cáp quang Viettel, WIFI tốc độ CAO cho bạn luôn LUÔN KẾT NỐI với thế giới bên ngoài qua công nghệ số.\r\n', 4000000, 45, 121, 'Đường Nguyễn Thị Định, P. Thạnh Mỹ Lợi, Quận 2, Tp. Hồ Chí Minh', '{\"0\":\"21.035893\",\"1\":\"105.79607099999998\"}', '{\"0\":\"phongtro-AGShl-1025303-201812190026_nh___kim_m___2.jpg\"}', 16, 1, 2, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2022-05-29 09:16:11', '2022-06-01 22:49:28', '0931457758', 1, 'phong-tro-cao-cap-1-tret-1-lau-2-phong-ngu'),
(23, 'Phòng cho nữ đầy đủ nội thất 30m2 Phú Nhuận', 'CHỈ CHO NỮ thuê phòng ở Thích Quảng Đức\r\n\r\nPhòng 4.500.000/tháng\r\n\r\n- Vị trí: phòng nằm trong hẻm rộng, xe đi vào thoải mái, gần chợ Nguyễn Đình Chiểu (cách 400m), Bách hóa xanh ngay đầu hẻm, gần Siêu thị Coop mart (cách 800m), và đặc biệt là gần ngã 4 Phú Nhuận => dễ dàng đi lại qua Quận 1, Phú Nhuận, Bình Thạnh, Gò Vấp, Tân Bình ...\r\n\r\n- Phòng rộng 30m2 mới mẻ, thoáng mát, sạch sẽ với đầy đủ nội thất: máy lạnh, tủ lạnh, giường lớn (ngủ được 3 người tối đa), tủ quần áo lớn, nhà vệ sinh (có bồn rửa tay, gương); có nước nóng lạnh, tắm và vệ sinh riêng (vách kính ngăn), gương lớn, TV, cửa sổ, rèm cửa sổ sang trọng, kệ để đồ linh tinh.\r\n\r\n- Chỉ để tối đa 2 xe.\r\n\r\n- Ngoài ra còn có sân thượng để máy giặt, phơi đồ (thoáng mát, cực kì mau khô), có thể đặt bếp nấu ăn ở đây nếu muốn (do sân thượng có mái che) cho rộng rãi và tránh mùi bám vào đồ đạc ở phòng.\r\n\r\n- Hàng xóm hòa đồng thân thiện, cô chủ nhà vui tánh dễ gần.\r\n\r\n- Phí dịch vụ: điện 3500/kw, nước 60k/người/tháng, máy giặt 25k/người/tháng, không tính phí wifi + rác + gửi xe.', 4500000, 30, 13, '20/35, Hẻm 18 Thích Quảng Đức, Phường 5, Quận Phú Nhuận, Tp Hồ Chí Minh', '{\"0\":\"21.0294055\",\"1\":\"105.8092848\"}', '{\"0\":\"phongtro-AGShl-1025303-201812190026_nh___kim_m___2.jpg\"}', 7, 1, 16, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\",\"3\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"4\":\"Wifi mi\\u1ec5n ph\\u00ed\"}', '2022-05-28 12:52:44', '2022-06-01 00:06:34', '0986267896', 1, 'cho-nu-thue-nha-phu-nhuan'),
(25, 'Cho Thuê Nhà Trọ Vườn Lài An Phú Đông Q12', '🏠 Góc cho thuê trọ Quận 12:\r\n👉 Địa chỉ: 140/48/6 Vườn Lài, P. An Phú Đông, Quận 12. ( Trung tâm kĩ thuật xe máy) gần Đại Học Nguyễn Tất Thành Q12, ĐH Văn Lang Cs3, ĐH Công Nghiệp. (Hẻm xe hơi, khu vực an ninh yên tỉnh)\r\n👉 Thuận tiện qua Gò Vấp,Thủ Đức, Bình Thạnh.\r\nPhòng trọ mình có:\r\n✅ Diện tích các phòng 35m² ở được 3 người ( bao gồm cả gác lửng)\r\n✅ Sân thượng phơi quần áo\r\n✅ Có không gian nấu ăn\r\n✅ WC riêng.\r\n✅ Khu vực an ninh, camera 24/24 khắp lối\r\n✅ Có chỗ đỗ xe rộng, cửa khóa vân tay\r\n✅ Giờ giấc tự do\r\n💰 Chi phí cố định:\r\n🔸 Tiền phòng 3500k\r\n🔸 Điện 4k/kwh\r\n🔸 Nước 20k/ khối\r\n🔸 Rác 50k/phòng/tháng\r\n🌸 Nhà vừa mới xây xong tròn năm nên mọi thứ còn rất mới.', 3000000, 35, 11, 'Đường Vườn Lài, Phường An Phú Đông, Quận 12, Tp Hồ Chí Minh', '{\"0\":\"21.0648088\",\"1\":\"105.81070599999998\"}', '{\"0\":\"phongtro-gxH5Q-20180315101553-e23b_wm.jpg\"}', 11, 1, 12, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2022-05-29 08:02:14', '2022-06-01 00:07:23', '02462955377', 1, 'cho-thue-nha-tro-vuon-lai-an-phu-dong-quan-12'),
(26, 'Phòng Đẹp ngay Luỹ Bán Bích & Thống Nhất 30m2', '♨️ PHÒNG TRỌ TÂN PHÚ GIÁ RẺ - NGAY : LUỸ BÁN BÍCH - THỐNG NHẤT - ĐỘC LẬP\r\n\r\n🎁 NHẬN GIỮ PHÒNG CUỐI THÁNG\r\n\r\n🏡 GIÁP ÂU CƠ - TRƯỜNG CHINH - CỘNG HOÀ\r\n\r\n🧧 GẦN ĐẠI HỌC CÔNG NGHỆ THỰC PHẨM & ĐẠI HỌC VĂN HIẾN\r\n\r\n👥👥 Phòng rộng ở được 3 người\r\n👉🏻 Có hỗ trợ thêm nội thất theo yêu cầu\r\n👉🏻 Giờ giấc tự do , camera an ninh , máy giặt cao cấp, sân phơi thoáng mát\r\n👉🏻 Thang máy siêu sạch & đẹp\r\n👉🏻 Phòng mới 100% sạch sẽ thoáng mát', 3700000, 30, 14, '\r\nĐường Thống Nhất, Phường Tân Thành, Quận Tân Phú, Tp Hồ Chí Minh', '{\"0\":\"21.0623274\",\"1\":\"105.83047980000003\"}', '{\"0\":\"phongtro-24YCD-20181210143536-f5f8_wm.jpg\"}', 9, 1, 18, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"3\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2022-05-29 08:04:27', '2022-06-01 00:08:27', '0355011606', 1, 'cho-thue-can-ho-dich-vu-cao-cap-3pn-view-ho-tay-tai-72-xuan-dieu-tay-ho-hn'),
(28, 'Phòng Studio Quận 1 25m², An Ninh, Sạch Sẽ', 'Cho Thuê Phòng Studio, Có Cửa Sổ Lớn, Có Ban Công\r\nAnh Ninh, Sạch Sẽ, Tiện Nghi\r\n--------------\r\n√ Địa chỉ: 80/3 Mạc Đĩnh Chi, P.Dakao, Quận 1: có thể đi bộ qua Nhà Thờ Đức Bà, Hồ Con Rùa.\r\n√ Có Sân thượng lầu 3, rộng, thoáng để cà phê và ngắm mây bay\r\n√ Bình an / văn minh / sạch sẽ\r\n√ Camera an ninh, thẻ từ ra vào cổng\r\n√ Không chung chủ, giờ giấc tự do.\r\n√ Căn hộ trang bị nội thất theo tiêu chuẩn: máy lạnh, máy giặt, tủ lạnh, tivi, giường nệm cao cấp\r\n√ Máy nước nóng giúp thư giãn sau 1 ngày làm việc căng thẳng\r\n√ Có ban công, cửa sổ lớn, luôn thoáng mát.\r\n√ Khu bếp bố trí ở ngoài ban công, nhằm tạo cho căn hộ thoáng và rộng hơn.\r\n√ Cáp quang tốc độ cao 100Mbps miễn phí, đầu cáp kéo vào tận căn hộ\r\n√ Truyền hình cáp SCTV miễn phí, có thể lắp đặt truyền hình HD của Viettel nếu bạn có nhu cầu\r\n√ Nhà để xe máy ở tầng trệt, miễn phí\r\n√ Giá thuê: 5,5 triệu\r\n√ Điện: 3,7k/Kwh, nước: 100k/ người,\r\n√ Phí dịch vụ (giữ xe, máy giặt, thẻ từ, wifi, rác,..): 100k/ người', 5500000, 25, 222, '\r\n80/3, Đường Mạc Đĩnh Chi, Phường Đa Kao, Quận 1, Tp Hồ Chí Minh', '{\"0\":\"21.031462\",\"1\":\"105.79983100000004\"}', '{\"0\":\"phongtro-1vVNs-20181210143536-f5f8_wm.jpg\"}', 12, 1, 1, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"C\\u00f3 g\\u00e1c l\\u1eedng\"}', '2022-05-28 21:17:23', '2022-06-02 00:41:19', '0987125166', 1, 'phong-studio-25m2-quan-1-an-ninh-sach-se'),
(29, 'Phòng trọ Trường Chinh Tân Bình gác cao 1m8 25m2', '⛔Chính chủ cho thuê phòng trọ TÂN BÌNH -\r\n=> Nhiều ưu đãi nhân dịp khai trương nhà mới.\r\n=> Hỗ trợ giảm tiền phòng cho đến hết dịch.\r\n=> Nhận giữ phòng qua Tết vào ở.\r\n🏡 83/41 Phạm Văn Bạch, P.15, Tân Bình.\r\n- Vị trí: Cách mặt tiền Trường Chinh 50m, cách Big C Trường Chinh 500m, cách ĐH Công Nghiệp Thực Phẩm 1Km,....\r\nHotline: Mr. Nhân ()\r\n👉 MỚI XÂY 100% - PHÒNG CHƯA QUA SỬ DỤNG - GIỜ GIẤC TỰ DO\r\n⛔ CAM HẾT ẢNH CHỤP PHÒNG THỰC TẾ 1000%\r\n💲Giá thuê phòng trống:\r\n+ 27m2 - có gác cao 1m8, 2 cửa sổ thoáng, kệ bếp: 2tr800/tháng\r\n+ 30m3 - có gác cao 1m8, 2 cửa sổ, kệ bếp, ban công: 3tr400/tháng\r\n👉 Hỗ trợ nội thất theo yêu cầu với giá cực rẻ.\r\n👉 Gác đúc cao 1m8 không đụng đầu, ở 3 - 4 người thoải mái.\r\n👉 Hầm xe rộng rãi có bảo vệ 24/7, thang máy hiện đại.\r\n👉 Bảo vệ an ninh 24/7, camera an ninh, không chung chủ.\r\n👉 Dịch vụ đầy đủ: Wifi, máy giặt, đổ rác, vệ sinh hành lang,...\r\n👉 Nuôi thú cưng, bạn bè tới chơi thoải mái.\r\n😘 Cách chợ 50m, có tạp hóa, quán cơm, quán coffee trong tòa nhà.', 2800000, 25, 7, '\r\nĐường Phạm Văn Bạch, Phường 15, Quận Tân Bình, Tp Hồ Chí Minh', '{\"0\":\"21.066645\",\"1\":\"105.8066599\"}', '{\"0\":\"phongtro-VlWh4-20180315101553-e23b_wm.jpg\"}', 5, 1, 13, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Chung ch\\u1ee7\"}', '2022-05-30 09:06:49', '2022-06-01 13:08:54', '0976080088', 1, 'phong-tro-truong-chinh-gac-cao'),
(30, 'Phòng trọ gần thạch lam phan chu trinh', 'Phòng sạch sẽ thoáng mát và yên tĩnh. Có bếp. Vệ sinh riêng trong phòng. Internet cáp quang. Nhà xe riêng. Không tính phí. Giờ tự do', 1900000, 16, 4, '119/5, Trần Quang Cơ, Phường Phú Thạnh, Quận Tân Phú, Tp Hồ Chí Minh', '{\"0\":\"21.0465\",\"1\":\"105.77579289999994\"}', '{\"0\":\"phongtro-k3Zyr-1025468-cho-thue-nha-moi-sua-tran-phu-dien-bien-phu-25m2-3-5t-4.jpg\"}', 13, 1, 18, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2022-05-29 10:33:50', '2022-06-01 00:10:37', '0987125167', 1, 'phong-tro-gan-thach-lam-phan-chu-trinh'),
(32, 'Cho thuê phòng full nội thất tại Quận 1 giá rẻ', '*** Khu vực an ninh tốt, gần đài truyền hình, Diamond Plaza, nhà thờ Đức Bà, LSQ Anh, Pháp, Đức, Mỹ; đi lại thuận tiện.\r\n*** Gần siêu thị: Citimart, Familymart, GS25, Ministop, CoopFood, ...\r\n*** Gần ngân hàng: Vietcombank, Đông Á, Sacombank, Eximbank, Techcombank, ...\r\n*** Gần trường: Đại học KHXHNV, Y Dược, HUTECH, Hồng Bàng, Kiến Trúc, UEH, UEL, Cao đẳng Sư Phạm, Cao Thắng, ...\r\n*** Gần trung tâm tin học, ngoại ngữ (Anh, Đức, Pháp, Trung, Hàn,...), thể thao, giải trí, ăn uống, ...\r\n*** Nội thất đầy đủ: tivi 40 inch, tủ lạnh, giường gỗ lớn có ngăn, tủ gỗ sồi, két sắt mini, bàn làm việc, nhà vệ sinh có nước nóng lạnh, cửa sổ giếng trời, lối đi riêng, giờ giấc tự do, chỗ để xe máy miễn phí, free wifi, free truyền hình cáp, khu giặt đồ sân thượng, free dịch vụ dọn dẹp vệ sinh, khu vực bếp chung rộng rãi, đầy đủ đồ dùng...\r\nPhòng lớn: 5.5 triệu/tháng, có bếp riêng\r\nPhòng nhỏ: 3.8 triệu/tháng, bếp chung\r\nỞ được 2 người/phòng\r\nĐiện 4000k/kw\r\nNước 100k/ người\r\n17/3 Nguyễn thị minh khai, phường Bến nghé, quận 1', 3800000, 20, 20, '17/3, Đường Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1, Tp Hồ Chí Minh', '{\"0\":\"21.06318875583313\",\"1\":\"105.80258902636717\"}', '{\"0\":\"phongtro-YlGrD-20180315101603-9bd2_wm.jpg\"}', 13, 1, 1, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh chung\"}', '2022-01-09 11:07:09', '2022-06-01 00:10:56', '0987125166', 1, 'cho-thue-phong-full-noi-that-tai-quan-1-gia-re'),
(33, 'CĂN HỘ DỊCH VỤ 1 PHÒNG NGỦ CHO THUÊ THẢO ĐIỀN Q2', 'Vị trí: THẢO ĐIỀN QUẬN 2\r\n\r\n🧸Tòa nhà có thang máy - hầm xe\r\n🧸Full nội thất cao cấp\r\n🧸Được nuôi thú cưng\r\n🧸Ánh sáng tự nhiên', 8000000, 40, 202, '\r\nĐường Số 66, Phường Thảo Điền, Thành phố Thủ Đức, Tp Hồ Chí Minh', '{\"0\":\"21.008473219143216\",\"1\":\"105.80322782066628\"}', '{\"0\":\"phongtro-0phdL-20190104133448-ae13.jpg\"}', 5, 4, 19, '{\"0\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"1\":\"Wifi mi\\u1ec5n ph\\u00ed\"}', '2022-05-10 06:50:12', '2022-06-01 22:49:23', '0165235125', 1, 'can-ho-dich-vu-1-phong-ngu-cho-thue-thao-dien-quan-2'),
(36, 'Căn Hộ Gác Cửa Sổ Đón Gió Ngay D2 -HUTECH', '✔️ Thuận tiện di chuyển qua các quận lân cận như Q.1, Q.Phú Nhuận, Q.Thủ Đức\r\n✔️ Gần ĐH Văn Lang, ĐH Ngoại Thương, ĐH Hồng Bàng, ĐH Kinh Tế- Tài Chính, ĐH HUTECH\r\n✔️ Đầy đủ nội thất, chỉ cần xách vali vào ở\r\n🏬🏬🏬 Địa chỉ: 133 Đường D2, phường 25, quận Bình Thạnh, TP Hồ Chí Minh\r\n➡️ Ngay Đại Học : Ngoại Thương, 5\' Ra Ngã Tư Hàng Xanh\r\n➡️ Xung quanh tập trung nhiều cửa hang tiện lợi, quán ăn\r\n\r\n============\r\n💥 FULL NỘI THẤT:\r\n✅ Điều hòa tiết kiệm điện\r\n✅ Tủ lạnh\r\n✅ Bàn ghế\r\n✅ 1 Bộ Chăn Drap Gối, nệm mới\r\n💥 TIỆN ÍCH:\r\n☑️ Có nhân viên dọn vệ sinh hàng tuần\r\n☑️ Đội ngũ quản lý, chăm sóc khách hàng chu đáo, nhiệt tình\r\n☑️ Để xe trong nhà hoàn toàn miễn phí\r\n☑️ Giờ giấc tự do, không chung chủ\r\n☑️ Camera an ninh\r\n☑️ Kệ bếp nấu ăn trong phòng\r\n\r\n===========\r\n💥Diện tích 25 m2\r\nGiá thuê chỉ 5.000.000 VNĐ 💵💵💵CHỈ 1 CĂN DUY NHẨT', 5000000, 25, 26, '\r\nD2, Phường 25, Quận Bình Thạnh, Tp Hồ Chí Minh', '{\"0\":\"21.01352102770914\",\"1\":\"105.80121573535155\"}', '{\"0\":\"phongtro-HXcr5-20190104133448-9895.jpg\"}', 14, 4, 14, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2022-04-10 07:08:26', '2022-05-31 07:11:47', '0987125166', 1, 'can-ho-gac-cua-so-don-gio-ngay-D2-hutech'),
(37, 'Nhà 1 trệt 1 lầu hẻm xe hơi Trần Bình Trọng Q5', 'Cho thuê nhà nguyên căn hẻm xe hơi Trần Bình Trọng quận 5. Nhà gần chung cư Chợ Quán, Võ Văn Kiệt, Nguyễn Biểu, .... Thuận tiện di chuyển q1,q10, q6,...\r\nNhà như hình 100%, có 1 trệt 1 lầu gồm 2 phòng ngủ, 2 wc, phòng khách và bếp như hình.\r\nThuận tiện ở gia đình, buôn bán online,...\r\nXem nhà gọi đt trước 30 phút.\r\nMiễn tiếp báo, quảng cáo, môi giới ( báo gọi là báo cáo spam hết)', 13000000, 26, 4, '\r\n28/34e, Trần Bình Trọng, Phường 1, Quận 5, Tp Hồ Chí Minh', '{\"0\":\"21.03247649999999\",\"1\":\"105.80915449999998\"}', '{\"0\":\"phongtro-wGmTe-201611102625_20160107_151037.jpg\"}', 16, 3, 5, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"2\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\"}', '2022-05-28 10:49:14', '2022-05-31 10:30:50', '0352 830 279', 1, 'nha-1-tret-1-lau-hem-xe-hoi-tran-binh-trong-Q5'),
(38, 'NHÀ 2PN FULL NỘI THẤT MẶT TIỀN ĐƯỜNG PHƯỚC BÌNH', 'Cho thuê nhà đầy đủ nội thất, sân đậu oto mặt tiền Phường Phước Bình, Quận 9_Cách Đỗ Xuân Hợp 100m\r\n\r\n+ Diện tích: 4x25 gồm 2PN, 1WC, 1 phòng khách lớn, 1 phòng bếp, sân sau, sân trước rộng rãi đậu xe thoải mái.\r\n\r\n+ Nội thất: Được trang bị đầy đủ (máy lạnh, tủ lạnh, máy giặt, giường, tủ, bàn ghế sofa, máy nước nóng....) tất cả đều mới tinh\r\n\r\n+ Vị trí: Nằm trong khu Phước Bình an ninh, yên tĩnh. Oto, xe tải ra vào thoải mái. Cách Đỗ Xuân Hợp 100m, đại lộ 3 50m... thuận tiện di chuyển đến các quận lân cận\r\n\r\n+ Nhà mới, đẹp. Rất phù hợp thuê ở gia đình,kinh doanh online hoặc làm văn phòng...\r\n\r\n+Mn liên hệ em ngay để đuọc hỗ trợ xem nhà nhé', 9500000, 100, 3, 'Đường Đỗ Xuân Hợp, Phường Phước Bình, Thành phố Thủ Đức, Tp Hồ Chí Minh', '{\"0\":\"21.02217401637351\",\"1\":\"105.81391867724608\"}', '{\"0\":\"phongtro-Lytqn-20161205142822-6c9b.jpg\"}', 15, 3, 19, '{\"0\":\"Kh\\u00f4ng chung ch\\u1ee7\",\"1\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\"}', '2022-04-10 07:52:54', '2022-05-31 04:14:37', '097 222 1820', 1, 'nha-2pn-full-noi-that-mat-tien-duong-phuoc-binh'),
(39, 'CHO THUÊ CĂN HỘ CHUNG CƯ SÀI GÒN CO.OP', '👉 Diện tích: 54m2, 2 phòng ngủ, 1 WC, tầng 11, thoáng mát, tầm nhìn rộng, view sông\r\n\r\n👉 Nội thất: 2 máy lạnh, quạt máy, tủ lạnh, ghế sofa, máy nước nóng lạnh, tủ bếp trên dưới...\r\n\r\n👉 Khu dân cư sầm uất, dân trí cao, cửa hàng tiện ích, chợ, trường học...\r\n\r\n👉 Giá thuê: 8 triệu/tháng, cọc 2 tháng.', 8000000, 54, 2, '\r\n688/57/99, LÊ ĐỨC THỌ, Phường 15, Quận Gò Vấp, Tp Hồ Chí Minh', '{\"0\":\"21.011918567304868\",\"1\":\"105.80327567187499\"}', '{\"0\":\"phongtro-J8fC9-20190104133448-ae13.jpg\"}', 11, 4, 15, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Chung ch\\u1ee7\"}', '2022-05-11 09:09:18', '2022-06-01 00:34:04', '0987125166', 1, 'cho-thue-can-ho-chung-cu-sai-gon-co.op'),
(40, 'Phòng trọ Cộng Hòa có máy lạnh gác cao 1m8 mới xây', '⛔Chính chủ cho thuê phòng trọ TÂN BÌNH\r\n=> Nhiều ưu đãi mừng khai trương nhà mới.\r\n=> Hỗ trợ tiền phòng đến khi dịch được kiểm soát.\r\n🏡 622/10 Cộng Hòa, P.13, Tân Bình ngay Etown Cộng Hòa thuận tiện đi lại các quận trung tâm\r\nHotline: Mr. Nhân\r\n👉 MỚI XÂY 100% - PHÒNG CHƯA QUA SỬ DỤNG - GIỜ GIẤC TỰ DO\r\n⛔CAM KẾT HÌNH ẢNH CHỤP THỰC TẾ 1000%.\r\n💲Giá thuê phòng trống:\r\n+ 25m2 - gác cao 1m8, kệ bếp, 2 cửa sổ, nội thất cơ bản: 3tr500/tháng\r\n+ 30m2 - gác cao 1m8, kệ bếp, 2 cửa sổ, ban công, full nội thất: 4tr100/tháng\r\n👉 Gác đúc cao 1 mét 8 không đụng đầu, ở 3 - 4 người người thoải mái.\r\n👉 Kệ bếp nấu ăn thoải mái, toilet riêng.\r\n👉 Hầm xe rộng có bảo vệ 24/7, thang máy hiện đại.\r\n👉 Bảo vệ an ninh 24/7, camera an ninh, không chung chủ.\r\n👉 Dịch vụ đầy đủ: Wifi, MÁY GIẶT, quản lý bảo vệ 24/24, đổ rác, vệ sinh hành lang,...\r\n👉 Nuôi thú cưng, bạn bè tới chơi thoải mái.\r\n😘 Cách chợ 50m, có tạp hóa, quán cơm, quán coffee trong tòa nhà.', 3500000, 25, 3, '\r\nĐường Cộng Hòa, Phường 13, Quận Tân Bình, Tp Hồ Chí Minh', '{\"0\":\"21.04732892658599\",\"1\":\"105.78911360827635\"}', '{\"0\":\"phongtro-WvdLC-cho-thue-phong-tro-so.jpg\"}', 7, 1, 7, '{\"0\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"1\":\"Chung ch\\u1ee7\"}', '2022-01-11 16:12:25', '2022-03-12 00:03:26', '0969313915', 1, 'phong-tro-cong-hoa-co-may-lanh-gac-cao-moi-xay'),
(41, 'Phòng trọ ở ghép Phú Nhuận', 'Xin chào mọi người nay mình xin đăng lên đây vì muốn tìm một ban ở ghép chung phòng mình ở Phú Nhuận giá phòng 2tr cưa đôi thì mỗi người 1tr tính cả tiền điện, nước có ban công, phơi đồ yên tĩnh ngay sát ,Phan Xích Long mình đang tìm gấp bạn nào muốn xem phòng hay chi tiết thì ib cho mình ', 1000000, 0, 3, '127/11 Hẻm Cô Giang, Phường 1, Quận Phú Nhuận, Tp Hồ Chí Minh', '{\"0\":\"21.047857657544668\",\"1\":\"105.78725153158018\"}', '{\"0\":\"phongtro-utUEJ-cho-thue-chung-cu-dep-25-30m2-vskk-tai-phung-khoang-thanh-xuan-gan-cho-phung-khoang-resized-fhxxt.jpg\"}', 15, 2, 16, '{\"0\":\"T\\u1ee7 + gi\\u01b0\\u1eddng\",\"1\":\"C\\u00f3 g\\u00e1c l\\u1eedng\",\"2\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\"}', '2022-03-11 16:17:43', '2022-05-28 07:11:49', '0859990768', 1, 'phong-tro-o-ghep-phu-nhuan'),
(42, 'CẦN CHO THUÊ GẤP STUDIO123PN VINHOMES Q9', 'CÒN 1 CĂN CHỦ GỬI STUDIO FULL NỘI THẤT ĐẸP GIÁ 5,5TR đến 6TR\r\nCHO THUÊ CĂN HỘ STUDIO FULL BẾP RÈM VIEWS HỒ BƠI BAO ĐẸP MÀ GIÁ THÌ QUÁ SINH VIÊN 4,5TR THÔI.!\r\nCam kết hình thật 100% liên hệ với e ngay để được sở hữu căn hộ ntn.\r\n\r\nDanh mục căn hộ tham khảo và mức giá cực tốt mùa dịchhh\r\n⭐1 . Căn Studio diện tích 27-33 m2\r\nGiá thuê : 4tr ( chưa nội thất )\r\n5tr5 - 6.5tr ( full nội thất )\r\n⭐2 . Căn 1 PN + 1 WC diện tích 44 - 53 m2\r\nGiá thuê : 45tr - 5tr ( chưa nội thất )\r\n5tr5 - 6.5tr ( full nội thất)\r\n⭐3 . Căn 2PN , 1WC diện tích 56 - 62 m2\r\nGiá thuê : 5tr5 - 6tr ( chưa nội thất )\r\n8tr - 9tr ( full nội thất )\r\n⭐4 . Căn 2PN + 2WC diện tích 67-77 m2\r\nGiá thuê : 6tr - 8tr ( chưa nội thất )\r\n8tr5 - 9tr5 ( full nội thất )\r\n⭐5 . Căn 3PN , 2WC diện tích 80 - 87 m2\r\nGiá thuê : 7tr5 - 10tr ( chưa nội thất )\r\n11tr - 12tr ( full nội thất )\r\n----\r\n✅ ĐẶC BIỆT : Nội thất có thể order theo ý khách hàng và vẫn được thương lượng về giá\r\n----\r\n✅ CÁC TIỆN ÍCH KHÁCH HÀNG ĐƯỢC HƯỞNG KHI LÀM CƯ DÂN VINHOMES\r\n📍Công viên 36ha lớn Đông Nam Á\r\n📍Hồ bơi ( hồ bơi riêng của từng toà )\r\n📍Hơn 1.000 máy tập Gym ngoài trời\r\n📍BBQ\r\n📍Bãi Biển Nhân Tạo Đầu Tiên ở Miền Nam\r\n📍Đảo sinh dưỡng\r\n📍Khu thể thao ( sân gold sân bóng .... )\r\n📍15 công viên chủ đề\r\n📍 Quảng Trường\r\n📍........... cùng hàng ngàn tiện ích khác\r\nHiện tại mức giá thuê đang được hỗ trợ rất nhiều ạ\r\nliên hệ với e ngay để được tư vấn và xem nhà 24/7', 1900000, 25, 1, 'Đường Nguyễn Xiển, Phường Long Thạnh Mỹ, Thành phố Thủ Đức, Tp Hồ Chí Minh', '{\"0\":\"21.050693274007923\",\"1\":\"105.79263266650389\"}', '{\"0\":\"studio_vinhomes.jpg\"}', 7, 4, 9, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"Gi\\u1edd gi\\u1ea5c t\\u1ef1 do\",\"2\":\"V\\u1ec7 sinh ri\\u00eang\"}', '2022-01-12 16:20:28', '2022-05-28 13:00:44', '0963 943 588', 1, 'can-cho-thue-gap-studio123pn-vinhomes-Q9'),
(43, 'Cho thuê nhà đẹp có nội thất p12 gò vấp', 'Cho thuê nhà nguyên căn\r\n- 4.5x17 \r\n- Trệt 2 lầu 4pn 3wc nhà mới đẹp có nội thất\r\n- Giá thuê 12 triệu cọc 1 tháng tiền(không đóng đầu tháng)\r\n- Thích hợp làm văn phòng', 12000000, 70, 60, '\r\nNguyễn Tư Giản, Phường 12, Quận Gò Vấp, Tp Hồ Chí Minh', '{\"0\":\"21.0556078\",\"1\":\"105.78540399999997\"}', '{\"0\":\"phongtro-4JIrE-demo.jpg\"}', 12, 1, 7, '{\"0\":\"Wifi mi\\u1ec5n ph\\u00ed\",\"1\":\"V\\u1ec7 sinh ri\\u00eang\",\"2\":\"Kh\\u00f4ng chung ch\\u1ee7\"}', '2022-05-28 19:57:20', '2022-06-01 22:51:22', '0987125166', 1, 'cho-thue-nha-dep-co-noi-that-p12-go-vap');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_motelroom` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reports`
--

INSERT INTO `reports` (`id`, `ip_address`, `id_motelroom`, `status`, `created_at`, `updated_at`) VALUES
(1, '::1', 33, 2, '2022-05-28 12:58:24', '2022-05-28 12:58:24'),
(2, '::1', 33, 1, '2022-06-01 13:10:25', '2022-06-01 13:10:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no-avatar.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `right`, `phone`, `avatar`, `remember_token`, `created_at`, `updated_at`, `tinhtrang`) VALUES
(5, 'Lý Hạnh Phát', 'phatly', 'ply050617@gmail.com', '$2y$10$eaw03fp7iNoUsXqQdT9NwOXQcgFY27NHVgvRRtoM6buxulEj3It3y', 1, NULL, 'avatar-phatly-1654072903.jpg', 'ut4cGWKV3Pc8Cs3Pz99CoBvK5VDxZSV4mCHiiyEY6n54rlhCRVGg7jE5WTra', '2022-03-29 01:21:55', '2022-06-01 13:21:32', 1),
(7, 'Lê Tất Đạt', 'Tatdat', 'letatdat@gmail.com', '$2y$10$XkXODZ0W8da5V8cyNXKXGOuZTp6NT8YT8PAQSpIe0SWWnT0DOpBPa', 0, NULL, 'avatar-Tatdat-1547249039.jpg', 'V8MkG2XHGJHTDR9LcdfQnSSU83sNd2zT2fDe5VrfoK3VsYSPuSNeT3I1HRGz', '2018-12-16 07:39:30', '2019-01-11 16:23:59', 1),
(8, 'Trần Minh Phương', 'tranminhphuong', 'minhphuongtran90@gmail.com', '$2y$10$wZO19z.p2pI8h.Wf/11Ppe6lAXcjFbpcogzAFhwO6fcLFFMRBqOmS', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:40:15', '2018-12-16 07:40:15', 1),
(9, 'Dương Ngọc Lâm', 'Lam123', 'Duongngoclam90@yahoo.com.vn', '$2y$10$GsNA3CrBiKm7VJ.9pl.ZMePTVpVk0xzFDWxVe9HcMcYs2VYrWUJRi', 0, NULL, 'no-avatar.jpg', NULL, '2022-02-16 07:40:58', '2022-02-16 07:40:58', 1),
(11, 'Ngọc Trần', 'tranthingoc', 'ngoctran92@gmail.com', '$2y$10$smJLuBgaxrB9QcmQd5nmeuUGuRmapbjo4jzcxrGf9mVhjVWQtI7cq', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:42:17', '2018-12-16 07:42:17', 1),
(12, 'Phạm Ngọc Dương', 'phamngocduong', 'ngocduong1437@gmail.com', '$2y$10$LvMMD1lmV5LRJ8nqfkzVT.3VHsqxFrMKiKMsxNke0108VA0cgeUJ.', 0, NULL, 'no-avatar.jpg', 'lDzgkiorAdymDDnKpg0dDQKzUz8rtGaM4ENh2zsr095LR0ICDfdwdRyA4JhI', '2018-12-16 07:43:42', '2018-12-31 23:10:20', 1),
(13, 'Nguyễn Nhơn Hòa', 'nhonhoa', 'nhonhoa@gmail.com', '$2y$10$jbNNnC8fVTtlA39saZ4ABupcJK4RgDon3ZjwKZjbZUFgR8a.5hVQu', 1, '', 'no-avatar.jpg', NULL, '2022-02-16 07:44:23', '2022-06-12 00:41:08', 1),
(14, 'Trương Quỳnh Anh', 'Truongquynhanh', 'truongquynhanh1162@gmail.com', '$2y$10$s07p1vyeI/CZtw2ZF8V2X.QwU0ImSNEAj6eIIp5JE.wBmLrZzVK8u', 0, NULL, 'no-avatar.jpg', NULL, '2018-12-16 07:45:09', '2018-12-16 07:45:09', 1),
(15, 'Trương Hồng Ngọc', 'Truonghongngoc', 'truonghongngoc@gmail.com', '$2y$10$gdjTRz9WHcV1pId/bfuyJ.R9CdctHEloybCJgWc7GgMAs5RB0bvUG', 0, NULL, 'no-avatar.jpg', 'pdKSGWE1YPfv1EtEuQX6uHzZ0Kxq07sK33wvJjIkighDUIj1oM6U2k39e7Cq', '2019-01-10 07:46:01', '2019-01-10 07:46:01', 1),
(16, 'Nguyễn Lê Hùng Anh', 'sorios0810', 'hunganhnguyen2001@gmail.com', '$2y$10$g3t4Rq75RUtjB0c/hil37e/hsb93XLm64qzIStxD6xjOJ6o5H7Hwq', 1, NULL, 'avatar-sorios0810-1654116887.jpg', '0c9Ho3w2WluyfU9hDe1KUpOmpuelv639xaPjaMahhwofQks1TUJt6tnajoQH', '2022-05-28 02:57:24', '2022-06-01 13:54:47', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motelrooms_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `motelrooms`
--
ALTER TABLE `motelrooms`
  ADD CONSTRAINT `motelrooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
