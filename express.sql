-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 07:51 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pins` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `name`, `pins`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Xã Hội', 1, 1, '2018-04-06 23:02:24', '2018-04-06 23:02:24'),
(2, 'Thế Giới', 1, 1, '2018-04-12 18:58:23', '2018-04-12 18:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentable_id`, `commentable_type`, `users_id`, `name`, `email`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, '1', 'App\\Models\\News', NULL, '1.3.0', 'nhat.nguyenminh94@gmail.com', 'qweqewew', '1', '2018-04-10 06:32:23', '2018-04-10 06:32:23'),
(4, '1', 'App\\Models\\News', NULL, '1.2.8', 'nhat.nguyenminh94@gmail.com', '11', '1', '2018-04-10 06:35:32', '2018-04-10 06:35:32'),
(5, '1', 'App\\Models\\News', NULL, '1.2.8', 'nhat.nguyenminh94@gmail.com', 'qweqweqwe', '1', '2018-04-10 06:36:03', '2018-04-10 06:36:03'),
(6, '1', 'App\\Models\\News', NULL, '123', 'tranthienha5594@gmail.com', '1', '1', '2018-04-10 06:37:31', '2018-04-10 06:37:31'),
(7, '1', 'App\\Models\\News', NULL, 'jcb', 'tranthienha5594@gmail.com', '12221', '1', '2018-04-10 06:43:10', '2018-04-10 06:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_15_062330_create_news_table', 1),
(4, '2018_03_15_062340_create_category_news_table', 1),
(5, '2018_03_15_062354_create_comments_table', 1),
(6, '2018_04_04_025527_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_news_id` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_news_id`, `users_id`, `title`, `lead`, `image`, `content`, `status`, `view`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Có thể bấm ngược mã PIN ATM để chống cướp?', 'TTO - Thời gian gần đây trên các trang mạng xã hội, nhiều người chia sẻ mẹo chống cướp khi rút tiền bằng cách nhập ngược mã PIN để báo động đến công an. Sự thật, có thể kích hoạt chức năng chống trộm của ATM theo cách nhập ngược mã PIN hay không?', '/uploads/5ac85efccc677_1523080956.png', '<p><a href=\"https://cdn.tuoitre.vn/thumb_w/640/2018/4/6/hinh-atm-15230194427341258726048.jpg\" target=\"_blank\"><img alt=\"Có thể bấm ngược mã PIN ATM để chống cướp? - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/640/2018/4/6/hinh-atm-15230194427341258726048.jpg\" /></a>c</p>\r\n\r\n<p>Ng&acirc;n h&agrave;ng khuy&ecirc;n người gửi tiền kh&ocirc;ng n&ecirc;n tin v&agrave;o những tin đồn v&ocirc; căn cứ lan truyền tr&ecirc;n mạng - Ảnh: QUANG ĐỊNH</p>\r\n\r\n<p>Nội dung mẹo chống trộm được lan truyền ch&oacute;ng mặt trong những ng&agrave;y qua như sau:</p>\r\n\r\n<p><em>Nếu gặp cướp &eacute;p bạn v&agrave;o m&aacute;y ATM bắt bạn r&uacute;t tiền, bạn kh&ocirc;ng n&ecirc;n phản kh&aacute;ng, v&igrave; bạn kh&ocirc;ng biết được hắn c&oacute; thể l&agrave;m g&igrave; với bạn. Việc bạn n&ecirc;n l&agrave;m l&agrave; h&atilde;y nhập m&atilde; số PIN của bạn theo chiều ngược lại.</em></p>\r\n\r\n<p><em>V&iacute; dụ: nếu m&atilde; số PIN của bạn l&agrave; 1234 th&igrave; bạn h&atilde;y ấn 4321. Khi bạn ấn ngược m&atilde; số PIN, số tiền tr&ecirc;n vẫn sẽ chạy ra, nhưng khi ra được 1 nửa th&igrave; sẽ dừng lại, đồng thời sẽ gửi th&ocirc;ng b&aacute;o đến cho c&ocirc;ng an!</em></p>\r\n\r\n<p><em>Mỗi m&aacute;y ATM đều c&oacute; chương tr&igrave;nh n&agrave;y, n&oacute; được tạo ra nhằm ngăn chặn nguy hiểm cho bạn v&agrave; gi&uacute;p bạn th&ocirc;ng b&aacute;o cho c&ocirc;ng an. Nhưng kh&ocirc;ng phải tất cả ch&uacute;ng ta đều biết c&oacute; chương tr&igrave;nh n&agrave;y!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Hy vọng mọi người h&atilde;y chia sẻ th&ocirc;ng tin n&agrave;y đến bạn b&egrave;, ph&ograve;ng khi gặp l&uacute;c cần thiết c&oacute; thể gi&uacute;p được bản th&acirc;n v&agrave; bạn b&egrave;.</em></p>\r\n\r\n<p>Trao đổi với&nbsp;<em>Tuổi Trẻ Online</em>&nbsp;h&ocirc;m nay, &ocirc;ng L&ecirc; Huỳnh H&agrave; - trưởng ph&ograve;ng quản l&yacute; dịch vụ ATM Vietcombank chi nh&aacute;nh TP.HCM - khẳng định đ&acirc;y l&agrave; th&ocirc;ng tin v&ocirc; căn cứ nhằm &quot;c&acirc;u view&quot;, tuy nhi&ecirc;n nhiều người lại tin l&agrave; thật v&agrave; chia sẻ rất nhiều.</p>\r\n\r\n<p>&quot;Nếu b&igrave;nh tĩnh v&agrave; ph&acirc;n t&iacute;ch kỹ th&igrave; c&oacute; thể thấy trong th&ocirc;ng tin tr&ecirc;n c&oacute; rất nhiều điều v&ocirc; l&yacute;. Nguy&ecirc;n tắc để ATM nhả tiền ra l&agrave; chủ thẻ phải nhập đ&uacute;ng&nbsp;<a href=\"https://tuoitre.vn/ma-pin.html\" target=\"_blank\">m&atilde; PIN</a>, đồng thời t&agrave;i khoản của người đ&oacute; c&oacute; đủ tiền. Nhập ngược m&atilde; PIN th&igrave; l&agrave;m sao ATM c&oacute; thể nhả tiền được.</p>\r\n\r\n<p>Do vậy kh&ocirc;ng c&oacute; chuyện nhập ngược m&atilde; PIN khi gặp cướp ở ATM c&oacute; thể gi&uacute;p bạn &#39;b&aacute;o c&ocirc;ng an&#39; hay &#39;tiền chạy ra được 1 nửa th&igrave; sẽ dừng lại&#39; như th&ocirc;ng tin được chia sẻ tr&ecirc;n Facebook. Chưa kể, nếu chủ thẻ đặt m&atilde; PIN l&agrave; những con số tr&ugrave;ng nhau v&iacute; dụ 1111, 2222&hellip; th&igrave; nhập ngược hay xu&ocirc;i đều ra kết quả giống nhau&quot; - &ocirc;ng H&agrave; ph&acirc;n t&iacute;ch.</p>\r\n\r\n<p>Cũng theo &ocirc;ng H&agrave;, tr&ecirc;n thực tế kh&ocirc;ng phải đến b&acirc;y giờ th&ocirc;ng tin n&agrave;y mới xuất hiện. Nhưng những ng&agrave;y gần đ&acirc;y, khi được chia sẻ nhiều tr&ecirc;n mạng x&atilde; hội, nhiều người quen của &ocirc;ng cũng gọi để hỏi th&ocirc;ng tin n&agrave;y c&oacute; thật kh&ocirc;ng.</p>\r\n\r\n<p>&quot;Đ&acirc;y l&agrave; những th&ocirc;ng tin ho&agrave;n to&agrave;n hư cấu. Chủ thẻ kh&ocirc;ng n&ecirc;n chia sẻ, ph&aacute;t t&aacute;n c&aacute;c th&ocirc;ng tin n&agrave;y&quot;, &ocirc;ng H&agrave; khuyến c&aacute;o.</p>\r\n\r\n<p>Gi&aacute;m đốc trung t&acirc;m thẻ của một ng&acirc;n h&agrave;ng cổ phần lớn tại TP.HCM cũng khẳng định th&ocirc;ng tin được chia sẻ tr&ecirc;n ho&agrave;n to&agrave;n l&agrave; bịa đặt. Theo vị gi&aacute;m đốc n&agrave;y, khuyến c&aacute;o m&atilde; PIN ngược l&agrave; một tr&ograve; đ&ugrave;a cứ một thời gian lại rộ l&ecirc;n.</p>\r\n\r\n<p>&quot;C&aacute;ch tốt nhất để chủ thẻ tự bảo vệ m&igrave;nh nhằm tr&aacute;nh gặp rủi ro khi r&uacute;t tiền, đặc biệt l&agrave; r&uacute;t tiền v&agrave;o ban đ&ecirc;m l&agrave; n&ecirc;n giao dịch ở c&acirc;y ATM được đặt ở khu vực s&aacute;ng sủa, c&oacute; đ&ocirc;ng người qua lại. Nếu được th&igrave; n&ecirc;n đi đ&ocirc;ng người. Kh&ocirc;ng n&ecirc;n r&uacute;t ở những trụ ATM khu vực tối, vắng vẻ.</p>\r\n\r\n<p>Hiện nhiều ng&acirc;n h&agrave;ng c&oacute; bố tr&iacute; ATM th&agrave;nh từng cụm, c&oacute; từ 2, 3 m&aacute;y trở l&ecirc;n v&agrave; c&oacute; bố tr&iacute; bảo vệ. Nếu được n&ecirc;n t&igrave;m đến những trụ ATM n&agrave;y, hoặc ATM đặt trước chi nh&aacute;nh ng&acirc;n h&agrave;ng nếu c&oacute; nhu cầu r&uacute;t tiền v&agrave;o ban đ&ecirc;m để an to&agrave;n hơn&quot;, vị gi&aacute;m đốc n&agrave;y đưa ra lời khuy&ecirc;n.</p>', 1, 0, '2018-04-06 23:03:08', '2018-04-06 23:03:08'),
(2, 1, 1, 'Nam sinh Trường Nguyễn Khuyến tự tử có điểm trung bình 8,9', 'TTO - Hiệu trưởng Trường THPT Nguyễn Khuyến cho biết C. là một học sinh rất ngoan và giỏi. Điểm trung bình học kỳ I của C. là 8,9 điểm. Ông cũng thừa nhận nhà trường đã không sát sao từng học sinh.', '/uploads/5ad00dbfa85f3_1523584447.jpg', '<p><a href=\"https://cdn.tuoitre.vn/thumb_w/640/2018/4/12/thay-tin-nguyen-khuyen-15235070427681569896915.jpg\" target=\"_blank\"><img alt=\"Nam sinh Trường Nguyễn Khuyến tự tử có điểm trung bình 8,9 - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/640/2018/4/12/thay-tin-nguyen-khuyen-15235070427681569896915.jpg\" /></a></p>\r\n\r\n<p>&Ocirc;ng L&ecirc; Trọng T&iacute;n, hiệu trưởng Trường THPT Nguyễn Khuyến, trả lời b&aacute;o ch&iacute; s&aacute;ng 12-4 - Ảnh: THẢO THƯƠNG</p>\r\n\r\n<p>Trao đối với b&aacute;o ch&iacute; s&aacute;ng 12-4 về c&acirc;u chuyện nam sinh lớp 10 để lại thư tuyệt mệnh rồi&nbsp;<a href=\"https://tuoitre.vn/nam-sinh-truong-nguyen-khuyen-viet-thu-tuyet-menh-roi-nhay-lau-tu-tu-20180411171737116.htm\" target=\"_blank\">nhảy lầu tự tử</a>, &ocirc;ng&nbsp;L&ecirc; Trọng T&iacute;n, hiệu trưởng Trường THPT Nguyễn Khuyến,&nbsp;thừa nhận: &quot;Mỗi trường c&oacute; mỗi kế hoạch thời gian học. Thời gian học ở trường n&agrave;y so với trường kh&aacute;c th&igrave; quỹ thời gian nhiều hơn.&nbsp;</p>\r\n\r\n<p>Trường Nguyễn Khuyến học 2 buổi đối với nội tr&uacute;, buổi s&aacute;ng học ch&iacute;nh kh&oacute;a, tối th&igrave; c&aacute;c em l&ecirc;n lớp tự học v&agrave; c&oacute; trường c&oacute; bố tr&iacute; để gi&aacute;o vi&ecirc;n hỗ trợ giảng giải nếu c&aacute;c em c&oacute; thắc mắc li&ecirc;n quan đến b&agrave;i học.&quot;&nbsp;</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n dẫn đến chuyện đau l&ograve;ng của em C., theo c&ocirc;ng an điều tra v&agrave; kết luận ban đầu l&agrave; do &aacute;p lực học tập, em cảm thấy chưa đ&aacute;p ứng kỳ vọng của gia đ&igrave;nh.&nbsp;</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i cũng thừa nhận nh&agrave; trường kh&ocirc;ng kịp thời động vi&ecirc;n học sinh, c&aacute;c em đ&atilde; cố gắng nhưng chưa phối hợp kịp thời với phụ huynh, tr&aacute;ch nhiệm thuộc về nh&agrave; trường, d&ugrave; c&oacute; thực hiện chăm s&oacute;c nhưng chưa tới nơi từng em một&quot; - &ocirc;ng T&iacute;n n&oacute;i.</p>\r\n\r\n<p>Trả lời c&acirc;u hỏi Trường Nguyễn Khuyến với một kỷ luật sắt v&agrave; học sinh phải tự học đến 9h tối th&igrave; liệu đ&oacute; c&oacute; phải nguy&ecirc;n nh&acirc;n khiến học sinh tự tử, &ocirc;ng T&iacute;n cho rằng: &Aacute;p lực ở mỗi em l&agrave; kh&aacute;c nhau, l&agrave; &aacute;p lực với em n&agrave;y nhưng kh&ocirc;ng &aacute;p lực với em kh&aacute;c v&agrave; b&igrave;nh thường với em kia.&nbsp;</p>\r\n\r\n<p>Phần lớn c&aacute;c em th&iacute;ch th&uacute; v&agrave; th&iacute;ch nghi được nhưng qua sự việc n&agrave;y trường nhận ra một số điều rằng kh&ocirc;ng &iacute;t em thấy nặng nề trong m&ocirc;i trường học tập. Trường phải kịp thời hỗ trợ v&agrave; chăm s&oacute;c kịp thời nhưng đ&acirc;y l&agrave; thiếu s&oacute;t của trường, chưa kịp thời động vi&ecirc;n.&nbsp;</p>\r\n\r\n<p>Theo &ocirc;ng T&iacute;n, nếu như quan t&acirc;m hơn về mặt t&acirc;m l&yacute;, nhất l&agrave; trường hợp em C., khi nắm được t&igrave;nh h&igrave;nh l&uacute;c em hỏi c&aacute;c bạn vu vơ: &quot;Trường n&agrave;y nơi n&agrave;o cao nhất&quot; th&igrave; sẽ kịp thời ổn định t&acirc;m l&yacute; v&agrave; chắc kh&ocirc;ng c&oacute; chuyện g&igrave; xảy ra.</p>\r\n\r\n<p>&quot;Qua đ&acirc;y, trường sẽ điều chỉnh thay đổi, đặc biệt quan t&acirc;m hơn về mặt t&acirc;m l&yacute; học sinh. C&aacute;c em học lực kh&ocirc;ng yếu, nhưng về mặt t&acirc;m l&yacute; th&igrave; yếu&quot; - &ocirc;ng T&iacute;n cho biết.</p>\r\n\r\n<p>Thầy T&iacute;n cũng cho cho biết C. l&agrave; một học sinh rất ngoan v&agrave; giỏi. Điểm trung b&igrave;nh học kỳ I của C. l&agrave; 8,9 điểm.&nbsp;</p>\r\n\r\n<p>C&aacute;c m&ocirc;n vật l&yacute;, sinh, tin học, GDCD, c&ocirc;ng nghệ đều đạt điểm trung b&igrave;nh tr&ecirc;n 9 điểm, m&ocirc;n tin học đạt 10,00.</p>\r\n\r\n<p>Trước đ&oacute;, nam học sinh H.T.C, lớp 10E để lại thư tuyệt mệnh với nội dung do &aacute;p lực học tập, điểm số v&agrave; &aacute;p lực từ gia đ&igrave;nh muốn con m&igrave;nh được học lớp đứng đầu khối n&ecirc;n đứng tr&ecirc;n m&aacute;i t&ocirc;n lầu 4 (d&atilde;y ph&ograve;ng học của trường) cười v&agrave; kh&oacute;c, sau đ&oacute; lao m&igrave;nh xuống s&acirc;n trường d&ugrave; hai thầy gi&aacute;o v&agrave; bạn b&egrave; khuy&ecirc;n ngăn.</p>', 1, 0, '2018-04-12 18:54:39', '2018-04-12 18:54:39'),
(3, 1, 1, 'Chung cư: \'Đấu trường\' giữa văn minh lịch sự và... làng xã?', 'TTO - Những thế hệ cư dân chung cư đầu tiên \"di cư\" từ nhà phố lên căn hộ chung cư; rồi từ khu nhà trọ, khu giải tỏa, thậm chí từ các làng xã... vô ở chung cư. Cuộc \"đụng chạm\" bắt đầu!', '/uploads/5ad00e5e1c1e6_1523584606.jpg', '<p>Cần l&agrave;m g&igrave; để đẩy l&ugrave;i những th&oacute;i xấu, c&aacute;ch h&agrave;nh xử thiếu chuy&ecirc;n nghiệp trong giải quyết m&acirc;u thuẫn ở chung cư, đồng thời x&acirc;y dựng chuẩn sống văn h&oacute;a để chung cư trở th&agrave;nh nơi đ&aacute;ng sống?</p>\r\n\r\n<p>Tuổi Trẻ mở đầu diễn đ&agrave;n &quot;X&acirc;y dựng văn h&oacute;a chung cư&quot; bằng &yacute; kiến của c&aacute;c chuy&ecirc;n gia về quản l&yacute; t&ograve;a nh&agrave; chung cư.</p>\r\n\r\n<p><strong>&Ocirc;ng Nguyễn Tiến Dũng (tổng gi&aacute;m đốc C&ocirc;ng ty cổ phần S&agrave;i G&ograve;n triển vọng - Savista):</strong></p>\r\n\r\n<p><strong>Minh bạch th&ocirc;ng tin, r&otilde; r&agrave;ng tr&aacute;ch nhiệm</strong></p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/2018/4/12/dung-15235049596741274565634.jpg\" target=\"_blank\"><img alt=\"Chung cư: Đấu trường giữa văn minh lịch sự và... làng xã? - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/640/2018/4/12/dung-15235049596741274565634.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Việc x&acirc;y dựng văn h&oacute;a ứng xử trong chung cư kh&ocirc;ng chỉ từ người d&acirc;n m&agrave; cả ban quản trị, đơn vị quản l&yacute; v&agrave; chủ đầu tư cũng phải đầu tư.</p>\r\n\r\n<p>Với cư d&acirc;n: ứng xử của cư d&acirc;n trong chung cư phải kh&aacute;c văn h&oacute;a ứng xử kiểu l&agrave;ng x&atilde;. Thế hệ người d&acirc;n chung cư đầu ti&ecirc;n &quot;di cư&quot; từ nh&agrave; phố l&ecirc;n căn hộ chung cư n&ecirc;n phải thay đổi nhiều th&oacute;i quen từ c&aacute;ch sống, văn h&oacute;a ứng xử, th&aacute;i độ đối với h&agrave;ng x&oacute;m, trong cộng đồng với nhau. Sống ở chung cư trước hết đ&ograve;i hỏi người d&acirc;n phải c&oacute; th&oacute;i quen tu&acirc;n thủ.&nbsp;</p>\r\n\r\n<p>Chung cư c&oacute; rất nhiều kh&ocirc;ng gian chung như h&agrave;nh lang, s&acirc;n thượng, c&ocirc;ng vi&ecirc;n, bồn hoa... Nếu xem những kh&ocirc;ng gian n&agrave;y như nh&agrave; ri&ecirc;ng, h&agrave;nh xử theo &yacute; th&iacute;ch ri&ecirc;ng th&igrave; ảnh hưởng rất lớn đến mọi người xung quanh.</p>\r\n\r\n<p>Để tập cho người d&acirc;n th&oacute;i quen n&agrave;y, đ&ocirc;i khi ban quản l&yacute; t&ograve;a nh&agrave; phải c&oacute; tr&aacute;ch nhiệm v&agrave; quyết liệt. C&oacute; những th&agrave;nh vi&ecirc;n ban quản l&yacute; sợ va chạm n&ecirc;n thỏa hiệp bằng c&aacute;ch du di, l&acirc;u ng&agrave;y sẽ tạo ra th&oacute;i quen kh&ocirc;ng tu&acirc;n thủ của một bộ phận d&acirc;n cư.&nbsp;</p>\r\n\r\n<p>Khi đ&oacute;, chuyện tất yếu sẽ xảy ra l&agrave; nảy sinh m&acirc;u thuẫn giữa những người muốn sống trong m&ocirc;i trường văn minh lịch sự v&agrave; những người th&iacute;ch sống thoải m&aacute;i l&agrave;m cho chung cư h&igrave;nh th&agrave;nh những cộng đồng c&oacute; quyền lợi m&acirc;u thuẫn nhau. Những m&acirc;u thuẫn của c&aacute;c cộng đồng n&agrave;y g&acirc;y n&ecirc;n những bất ổn như quản l&yacute; như thế n&agrave;o, n&ecirc;n tạo sự &ocirc; tạp. L&uacute;c đ&oacute;, c&aacute;c chủ sở hữu căn hộ sẽ l&agrave; người bị thiệt hại nặng nhất.</p>\r\n\r\n<p>Chủ đầu tư cũng phải c&oacute; văn h&oacute;a ứng xử trong quan hệ với c&aacute;c chủ thể kh&aacute;c trong nh&agrave; chung cư. Chung cư l&agrave; sản phẩm của chủ đầu tư n&ecirc;n họ phải c&oacute; tr&aacute;ch nhiệm đảm bảo dự &aacute;n c&oacute; h&igrave;nh ảnh đẹp, uy t&iacute;n, thương hiệu.&nbsp;</p>\r\n\r\n<p>V&igrave; vậy, nhiều chủ đầu tư cố t&igrave;nh tr&igrave; ho&atilde;n việc giao quyền quản trị căn hộ cho ban quản trị v&igrave; lo dự &aacute;n kh&ocirc;ng c&ograve;n giữ được h&igrave;nh ảnh ban đầu. Đ&oacute; l&agrave; lo lắng ch&iacute;nh đ&aacute;ng nhưng nhiều chủ đầu tư vin v&agrave;o l&yacute; do n&agrave;y đ&atilde; c&oacute; h&agrave;nh xử kh&ocirc;ng đ&uacute;ng như giữ quỹ bảo tr&igrave; chung cư để chi kh&ocirc;ng đ&uacute;ng mục đ&iacute;ch, kh&ocirc;ng c&oacute; tiền trả lại cho d&acirc;n hoặc khi d&acirc;n cần th&igrave; kh&ocirc;ng chi trả...&nbsp;</p>\r\n\r\n<p>Một số chung cư c&oacute; nguồn lực khai th&aacute;c từ dự &aacute;n tốt n&ecirc;n chủ đầu tư giữ lại để tận thu th&ecirc;m. Một số chủ đầu tư c&ograve;n t&agrave;i sản ri&ecirc;ng tại chung cư, sợ khi chuyển giao cho cư d&acirc;n xong th&igrave; sẽ bị cư d&acirc;n cản trở, kh&aacute;ch thu&ecirc; bỏ đi...</p>\r\n\r\n<p>Điều quan trọng, theo t&ocirc;i, l&agrave; c&aacute;c b&ecirc;n phải t&ocirc;n trọng nhau, minh bạch th&ocirc;ng tin ngay từ ban đầu để tr&aacute;nh tranh chấp, m&acirc;u thuẫn với nhau. Diện t&iacute;ch v&agrave; t&agrave;i sản chung - ri&ecirc;ng phải được chủ đầu tư minh bạch ngay từ kh&acirc;u thiết kế chung cư.&nbsp;</p>\r\n\r\n<p>Tầng thương mại, tầng hầm... l&agrave; t&agrave;i sản ri&ecirc;ng của chủ đầu tư phải được thiết kế hệ thống điện, nước ri&ecirc;ng với khu ở để khỏi nhập nhằng (thực tế l&agrave; gi&aacute; điện sinh hoạt cho khu ở v&agrave; gi&aacute; điện kinh doanh cũng kh&aacute;c nhau).&nbsp;</p>\r\n\r\n<p>Tiếp đ&oacute;, trong hợp đồng mua b&aacute;n căn hộ cũng c&ocirc;ng khai r&otilde; diện t&iacute;ch chung - ri&ecirc;ng n&agrave;y, quy định r&otilde; lu&ocirc;n ph&iacute; quản l&yacute; chung cư trong thời gian chưa c&oacute; ban quản trị. Khi b&agrave;n giao chung cư cho ban quản trị phải r&otilde; r&agrave;ng, đầy đủ hồ sơ ph&aacute;p l&yacute;, hạ tầng kỹ thuật. Khi c&oacute; thắc mắc, m&acirc;u thuẫn th&igrave; phải đối thoại, truyền th&ocirc;ng với nhau để c&ugrave;ng giải quyết.</p>\r\n\r\n<p><strong>&Ocirc;ng Nguyễn B&iacute;ch Sơn (tổng gi&aacute;m đốc C&ocirc;ng ty NPC):</strong></p>\r\n\r\n<p><strong>X&acirc;y dựng chuẩn chung về văn h&oacute;a ứng xử</strong></p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/2018/4/12/son-15235050313801890999965.jpg\" target=\"_blank\"><img alt=\"Chung cư: Đấu trường giữa văn minh lịch sự và... làng xã? - Ảnh 3.\" src=\"https://cdn.tuoitre.vn/thumb_w/640/2018/4/12/son-15235050313801890999965.jpg\" /></a></p>\r\n\r\n<p>Ở những quốc gia ph&aacute;t triển mạnh về nh&agrave; chung cư, ngay từ khi x&acirc;y dựng chủ đầu tư đ&atilde; tạo ra phong c&aacute;ch ri&ecirc;ng cho từng dự &aacute;n. Người d&acirc;n khi t&igrave;m hiểu dự &aacute;n, nếu thấy ph&ugrave; hợp với phong c&aacute;ch n&agrave;o th&igrave; lựa chọn mua dự &aacute;n đ&oacute;.&nbsp;</p>\r\n\r\n<p>N&oacute;i đến t&ecirc;n dự &aacute;n l&agrave; biết phong c&aacute;ch, đối tượng cư d&acirc;n sinh sống. Khi v&agrave;o sinh sống, cộng đồng cư d&acirc;n đ&oacute; đ&atilde; tương đối c&oacute; c&ugrave;ng phong c&aacute;ch sống như nhau. Chưa kể t&ugrave;y từng đặc điểm d&acirc;n số, chủ đầu tư c&ograve;n thiết kế c&aacute;c tiện &iacute;ch sinh hoạt cộng đồng đi k&egrave;m với dự &aacute;n.&nbsp;</p>\r\n\r\n<p>V&iacute; dụ ở H&agrave;n Quốc, họ thiết kế ph&ograve;ng sinh hoạt chung cho trẻ em, ph&ograve;ng chăm s&oacute;c sức khỏe cộng đồng... Những kh&ocirc;ng gian n&agrave;y được thiết kế rộng, trang bị đầy đủ nội thất để cư d&acirc;n tổ chức c&aacute;c buổi sinh hoạt, gi&uacute;p mọi người kết nối đo&agrave;n kết trong kh&ocirc;ng gian chung.</p>\r\n\r\n<p>Tuy nhi&ecirc;n ở Việt Nam, người d&acirc;n hầu như chỉ chọn mua nh&agrave; ở dự &aacute;n hợp t&uacute;i tiền chứ chưa quan t&acirc;m đến đời sống về sau. Mọi người khi mua nh&agrave; chỉ nghĩ đơn giản l&agrave; mua một chỗ để ở chứ chưa nghĩ đến việc phải thay đổi như thế n&agrave;o khi dọn v&agrave;o ở chung cư.&nbsp;</p>\r\n\r\n<p>Bởi vậy, trong một chung cư nhưng đa dạng phong c&aacute;ch sống kh&aacute;c nhau. V&agrave; khi cư d&acirc;n trong cộng đồng đ&oacute; kh&ocirc;ng t&ocirc;n trọng c&aacute;i chung, đề cao c&aacute;i t&ocirc;i sẽ xảy ra m&acirc;u thuẫn.</p>\r\n\r\n<p>Trong khi đ&oacute;, chủ đầu tư khi x&acirc;y dựng dự &aacute;n cũng kh&ocirc;ng t&iacute;nh hết c&aacute;c vấn đề về x&acirc;y dựng cộng đồng về sau. Một số dự &aacute;n c&oacute; t&iacute;nh đến việc x&acirc;y dựng tiện &iacute;ch cộng đồng như hồ bơi, ph&ograve;ng tập, ph&ograve;ng sinh hoạt cộng đồng..., nhưng khi cư d&acirc;n v&agrave;o ở lại kh&ocirc;ng x&acirc;y dựng được nội dung sử dụng c&aacute;c kh&ocirc;ng gian đ&oacute; để kết nối cư d&acirc;n.&nbsp;</p>\r\n\r\n<p>Ch&iacute;nh cư d&acirc;n ở chung cư chưa c&oacute; một chuẩn chung về văn h&oacute;a ứng xử trong chung cư n&ecirc;n nhiều lối sinh hoạt, h&agrave;nh xử của cư d&acirc;n c&ograve;n thuận theo tự nhi&ecirc;n. Chung cư trở th&agrave;nh &quot;lớp học&quot; đời sống cộng đồng đầu ti&ecirc;n của nhiều người.</p>\r\n\r\n<p>Bởi vậy, đối với chung cư ở Việt Nam, bộ phận dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng của chủ đầu tư, ban quản l&yacute; t&ograve;a nh&agrave;, ban quản trị trở th&agrave;nh hạt nh&acirc;n điều chỉnh lại &yacute; thức h&agrave;nh xử của cả cộng đồng cư d&acirc;n. Qu&aacute; tr&igrave;nh điều chỉnh đ&oacute; l&agrave; qu&aacute; tr&igrave;nh kh&oacute; khăn, cần một thời gian d&agrave;i. Nếu cư d&acirc;n kh&ocirc;ng muốn thay đổi hoặc kh&ocirc;ng thay đổi được th&igrave; phải tự dời đi.&nbsp;</p>\r\n\r\n<p>C&oacute; những chung cư, cư d&acirc;n c&ugrave;ng nhau t&igrave;m c&aacute;ch để đẩy một c&aacute; nh&acirc;n ra khỏi cộng đồng v&igrave; kh&ocirc;ng c&oacute; &yacute; thức cộng đồng.</p>\r\n\r\n<p>Mặt kh&aacute;c, trong điều chỉnh lối sống chung cư, truyền th&ocirc;ng cộng đồng c&oacute; vai tr&ograve; rất quan trọng. Từng chung cư phải thiết lập được c&aacute;c quy chuẩn để bảo vệ quyền lợi, an to&agrave;n chung cho tất cả cư d&acirc;n. Cư d&acirc;n phải điều chỉnh h&agrave;nh vi của m&igrave;nh theo nội quy đ&atilde; đưa ra. Nếu ai vi phạm sẽ t&ugrave;y từng mức độ xử l&yacute; như nhắc nhở, cảnh c&aacute;o v&agrave; xử phạt.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, những sự xa l&aacute;nh, d&egrave; bỉu của cộng đồng cũng l&agrave; h&igrave;nh phạt rất lớn đối với cư d&acirc;n vi phạm. C&ograve;n khi một c&aacute; nh&acirc;n kh&ocirc;ng coi sự xa l&aacute;nh của cộng đồng l&agrave; một h&igrave;nh phạt th&igrave; c&aacute; nh&acirc;n đ&oacute; kh&ocirc;ng phải l&agrave; người trong cộng đồng, sớm hay muộn cũng phải rời khỏi cuộc sống chung cư.</p>\r\n\r\n<p><strong>Đơn vị quản l&yacute; cũng cần ứng xử h&agrave;i h&ograve;a</strong></p>\r\n\r\n<p>Đơn vị quản l&yacute; nh&agrave; chung cư cũng cần ứng xử c&oacute; văn h&oacute;a với c&aacute;c b&ecirc;n. Ngo&agrave;i nhiệm vụ trong hợp đồng l&agrave; vận h&agrave;nh, quản l&yacute; t&ograve;a nh&agrave;, họ c&ograve;n c&oacute; tr&aacute;ch nhiệm bảo vệ quyền lợi của kh&aacute;ch h&agrave;ng v&agrave; chủ đầu tư.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n c&oacute; th&aacute;i độ: ai thu&ecirc; t&ocirc;i th&igrave; t&ocirc;i chỉ phục vụ người đ&oacute;, a dua với ban quản trị x&acirc;m phạm quyền lợi của chủ đầu tư hoặc đứng về ph&iacute;a chủ đầu tư l&agrave;m thiệt hại đến lợi &iacute;ch của cư d&acirc;n.</p>\r\n\r\n<p>Diễn đ&agrave;n X&acirc;y dựng văn h&oacute;a chung cư do b&aacute;o Tuổi Trẻ tổ chức với sự đồng h&agrave;nh của C&ocirc;ng ty cổ phần đầu tư kinh doanh địa ốc Hưng Thịnh ch&iacute;nh thức mời bạn đọc gửi hiến kế, chia sẻ kinh nghiệm.</p>\r\n\r\n<p>C&aacute;c &yacute; kiến thiết thực sẽ được đăng tải tr&ecirc;n b&aacute;o Tuổi Trẻ ng&agrave;y v&agrave; TTO. Đặc biệt, ban tổ chức sẽ b&igrave;nh chọn v&agrave; d&agrave;nh tặng 5 phần qu&agrave; trị gi&aacute; 5 triệu đồng/phần cho c&aacute; nh&acirc;n, tập thể c&oacute; &yacute; kiến đặc sắc. &Yacute; kiến gửi về email: nguyentran@tuoitre.com.vn&nbsp;(từ nay đến hết ng&agrave;y 22-4).</p>', 1, 0, '2018-04-12 18:57:34', '2018-04-12 18:57:34'),
(4, 2, 1, 'Dân mạng Trung Quốc gào lên đòi ‘đấu với Mỹ tới cùng’', 'TTO - Khả năng bùng nổ chiến tranh thương mại giữa hai cường quốc kinh tế của thế giới hiện chỉ là những giải pháp dự báo tiến hành và những răn đe qua phát ngôn. Nhưng mạng xã hội ở Trung Quốc đang sôi sục kiểu tinh thần dân tộc.', '/uploads/5ad00eed6fbaa_1523584749.jpg', '<p>&quot;Nếu Mỹ muốn chơi, ch&uacute;ng ta c&oacute; 1,4 tỉ người Trung Quốc để chơi tới c&ugrave;ng&quot; - một người d&ugrave;ng t&ecirc;n Koukouliang viết tr&ecirc;n mạng x&atilde; hội Weibo của Trung Quốc.</p>\r\n\r\n<p>&quot;Phải đấu lại! Trung Quốc c&oacute; sức mạnh m&agrave; kh&ocirc;ng dễ nước n&agrave;o c&oacute; thể đ&aacute;nh bại. Trung Quốc phải chiến thắng cuộc chiến thương mại n&agrave;y!&quot;, một người kh&aacute;c viết tr&ecirc;n Weibo - mạng x&atilde; hội ri&ecirc;ng tại Trung Quốc.</p>\r\n\r\n<p>Theo trang ABC News của &Uacute;c, những ng&agrave;y n&agrave;y tr&ecirc;n mạng x&atilde; hội ở Trung Quốc ngập tr&agrave;n những b&igrave;nh luận theo kiểu tinh thần d&acirc;n tộc trong bối cảnh xuất hiện nguy cơ xảy ra&nbsp;<a href=\"https://tuoitre.vn/chien-tranh-thuong-mai.html\" target=\"_blank\">chiến tranh thương mại</a>&nbsp;giữa hai cường quốc kinh tế của thế giới.</p>\r\n\r\n<p>Thậm ch&iacute; c&oacute; người d&ugrave;ng tr&ecirc;n Weibo d&ugrave;ng chữ &quot;kẻ th&ugrave;&quot; để &aacute;m chỉ Mỹ v&agrave; k&ecirc;u gọi &quot;ch&uacute;ng ta chỉ c&oacute; thể chiến đấu tới chết&quot; để chống lại c&aacute;c biện ph&aacute;p &aacute;p thuế mới của Mỹ đối với h&agrave;ng h&oacute;a Trung Quốc nhập khẩu v&agrave;o Mỹ.</p>\r\n\r\n<p>Tinh thần đ&oacute; được hun đ&uacute;c bởi v&agrave;i b&agrave;i b&aacute;o của c&aacute;c cơ quan truyền th&ocirc;ng ch&iacute;nh thống ở Trung Quốc.</p>\r\n\r\n<p>Một b&agrave;i x&atilde; luận tr&ecirc;n tờ To&agrave;n cầu Thời b&aacute;o ra ng&agrave;y 9-4 thậm ch&iacute; cho rằng Trung Quốc sẽ chiến đấu chống Mỹ với tinh thần giống như trong Chiến tranh Triều Ti&ecirc;n hơn 60 năm trước.</p>\r\n\r\n<p>B&agrave;i b&aacute;o c&ograve;n k&ecirc;u gọi người Trung Quốc phải chuẩn bị chiến đấu trong cuộc chiến thương mại n&agrave;y &quot;bằng tất cả c&aacute;c nguồn lực&quot; - cụm từ như trong thời chiến tranh vũ trang nhiều thập kỷ trước.</p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/thumb_w/700/2018/4/11/china-thuong-hai-hang-us-nhap-15234370216231554546083.jpg\" target=\"_blank\"><img alt=\"Dân mạng Trung Quốc gào lên đòi ‘đấu với Mỹ tới cùng’ - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/700/2018/4/11/china-thuong-hai-hang-us-nhap-15234370216231554546083.jpg\" /></a></p>\r\n\r\n<p>Khu h&agrave;ng nhập khẩu từ Mỹ tại si&ecirc;u thị ở TP Thượng Hải (Trung Quốc) ng&agrave;y 3-4 - Ảnh: REUTERS</p>\r\n\r\n<p>&quot;Bắc Kinh c&oacute; thể tạo ra một cuộc chiến đầy đau đớn cho Washington trong cuộc đối đầu trước mọi cuộc chiến tranh thương mại v&agrave; khiến cho Mỹ cũng phải chịu những thiệt hại tương tự như Trung Quốc&quot;, tờ b&aacute;o của Đảng Cộng sản Trung Quốc viết đầy k&iacute;ch động.</p>\r\n\r\n<p>C&aacute;ch thức &quot;quyết chiến&quot; của Trung Quốc cũng được thể hiện qua c&aacute;c ph&aacute;t ng&ocirc;n ch&iacute;nh thức. H&ocirc;m 6-4, Bộ Thương mại Trung Quốc cũng tuy&ecirc;n bố sẵn s&agrave;ng chấp nhận một cuộc chiến thương mại với &quot;bất kỳ gi&aacute; n&agrave;o&quot; v&agrave; &aacute;p dụng mọi biện ph&aacute;p to&agrave;n diện nếu Mỹ tiếp tục c&aacute;c biện ph&aacute;p bảo hộ thương mại đơn phương.</p>\r\n\r\n<p>Tuy&ecirc;n bố của người ph&aacute;t ng&ocirc;n Bộ Thương mại Trung Quốc n&ecirc;u r&otilde; quan điểm của Bắc Kinh trong quan hệ thương mại với Mỹ rất r&otilde; r&agrave;ng: Trung Quốc kh&ocirc;ng muốn chiến tranh thương mại, song cũng kh&ocirc;ng sợ một cuộc chiến như vậy.</p>\r\n\r\n<p>Bộ Thương mại Trung Quốc khẳng định nếu ph&iacute;a Mỹ tiếp tục phớt lờ những phản đối từ Trung Quốc v&agrave; cộng đồng quốc tế để tiếp tục c&aacute;c biện ph&aacute;p đơn phương v&agrave; bảo hộ thương mại th&igrave; Bắc Kinh cũng kh&ocirc;ng e ngại m&agrave; theo đuổi tới c&ugrave;ng bằng bất kỳ gi&aacute; n&agrave;o.</p>\r\n\r\n<p>Trong khi đ&oacute;, tờ Nh&acirc;n D&acirc;n nhật b&aacute;o, cơ quan ng&ocirc;n luận ch&iacute;nh thức của Đảng Cộng sản Trung Quốc, c&oacute; b&agrave;i viết cho rằng Mỹ l&agrave; nước được lợi nhất từ hội nhập kinh tế to&agrave;n cầu v&agrave; việc Mỹ dựa v&agrave;o những biện ph&aacute;p &quot;g&acirc;y hấn&quot; để l&agrave;m giảm th&acirc;m hụt thương mại l&agrave; phản t&aacute;c dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/thumb_w/700/2018/4/11/china-thuong-hai-hang-us-nhap-3-15234372991191935445303.jpg\" target=\"_blank\"><img alt=\"Dân mạng Trung Quốc gào lên đòi ‘đấu với Mỹ tới cùng’ - Ảnh 3.\" src=\"https://cdn.tuoitre.vn/thumb_w/700/2018/4/11/china-thuong-hai-hang-us-nhap-3-15234372991191935445303.jpg\" /></a></p>\r\n\r\n<p>Người ti&ecirc;u d&ugrave;ng Trung Quốc chọn lựa h&agrave;ng h&oacute;a tại khu h&agrave;ng nhập khẩu từ Mỹ tại si&ecirc;u thị ở TP Thượng Hải (Trung Quốc) ng&agrave;y 3-4 - Ảnh: REUTERS</p>\r\n\r\n<p>C&ograve;n theo h&atilde;ng tin Reuters, ngay từ ng&agrave;y 5-4, tr&ecirc;n c&aacute;c mạng x&atilde; hội Trung Quốc bắt đầu c&oacute; những lời k&ecirc;u gọi tẩy chay h&agrave;ng h&oacute;a của Mỹ.</p>\r\n\r\n<p>Chẳng l&agrave; ở thời điểm đ&oacute;, tổng thống Donald Trump tuy&ecirc;n bố sẽ y&ecirc;u cầu Bộ Thương mại nước n&agrave;y xem x&eacute;t tăng gấp đ&ocirc;i mức thuế bổ sung đ&aacute;nh v&agrave;o h&agrave;ng h&oacute;a nhập khẩu từ Trung Quốc so với mức 50 tỉ USD m&agrave; Văn ph&ograve;ng đại diện thương mại Mỹ (USTR) đ&atilde; c&ocirc;ng bố h&ocirc;m 3-4, với c&aacute;o buộc Trung Quốc c&oacute; &quot;c&aacute;c hoạt động thương mại kh&ocirc;ng c&ocirc;ng bằng, &quot;cưỡng &eacute;p c&aacute;c c&ocirc;ng ty Mỹ chuyển giao c&ocirc;ng nghệ v&agrave; quyền sở hữu tr&iacute; tuệ&quot;.</p>\r\n\r\n<p>Nếu chống lại h&agrave;ng Trung Quốc, Mỹ sẽ kh&ocirc;ng t&igrave;m được nguồn thay thế. Nhưng nếu ch&uacute;ng ta tẩy chay h&agrave;ng Mỹ, c&aacute;c sản phẩm nội địa c&oacute; thể dễ d&agrave;ng lấp được khoảng trống&quot;</p>\r\n\r\n<p>Một b&agrave;i x&atilde; luận của Ho&agrave;n cầu Thời b&aacute;o viết như vậy</p>\r\n\r\n<p>Theo Reuters, tr&ecirc;n c&aacute;c mạng x&atilde; hội ở Trung Quốc đ&atilde; rộ l&ecirc;n những lời k&ecirc;u gọi tẩy chay c&aacute;c sản phẩm Mỹ. Biện ph&aacute;p n&agrave;y đ&atilde; từng được tiến h&agrave;nh một c&aacute;ch hiệu quả đối với H&agrave;n Quốc, một khi người ti&ecirc;u d&ugrave;ng bị k&iacute;ch th&iacute;ch bởi chủ nghĩa d&acirc;n tộc.</p>\r\n\r\n<p>Chẳng hạn tr&ecirc;n mạng Weibo khi đ&oacute; c&oacute; người viết lời k&ecirc;u gọi: &quot;C&ocirc;ng d&acirc;n Trung Quốc phải đo&agrave;n kết lại v&agrave; tẩy chay h&agrave;ng Mỹ. Cuộc chiến tranh hiện đại được nh&acirc;n d&acirc;n tiến h&agrave;nh&quot;.</p>\r\n\r\n<p>Một số người kh&aacute;c viết kiểu hưởng ứng sẽ kh&ocirc;ng mua cả h&agrave;ng Mỹ lẫn sản phẩm của H&agrave;n Quốc.</p>\r\n\r\n<p>Năm 2017, tập đo&agrave;n Lotte của H&agrave;n Quốc đ&atilde; trở th&agrave;nh nạn nh&acirc;n của kiểu tẩy chay h&agrave;ng h&oacute;a của người Trung Quốc do chấp nhận đổi cho ch&iacute;nh quyền một khu đất ở ngoại &ocirc; Seoul để bố tr&iacute; hệ thống l&aacute; chắn t&ecirc;n lửa tầm cao giai đoạn cuối (THAAD) của Mỹ.</p>\r\n\r\n<p>Động th&aacute;i đ&oacute; đ&atilde; khiến người Trung Quốc nổi giận bởi cho rằng việc lắp đặt hệ thống THAAD với d&agrave;n radar hiện đại sẽ d&ograve;m ng&oacute; s&acirc;u v&agrave;o l&atilde;nh thổ Trung Quốc.</p>\r\n\r\n<p>Nhiều si&ecirc;u thị của Lotte tại Trung Quốc đ&atilde; bị buộc đ&oacute;ng cửa v&igrave; c&aacute;c sai phạm kh&aacute; nhỏ sau c&aacute;c cuộc thanh tra đột xuất! Thậm ch&iacute; đ&atilde; xuất hiện nhiều cuộc biểu t&igrave;nh bột ph&aacute;t của người Trung Quốc chống lại h&agrave;ng h&oacute;a H&agrave;n Quốc v&agrave; v&ocirc; số lời k&ecirc;u gọi người ti&ecirc;u d&ugrave;ng tẩy chay.</p>\r\n\r\n<p>Ước t&iacute;nh chiến dịch tẩy chay của người Trung Quốc, gồm cả việc k&ecirc;u gọi kh&ocirc;ng du lịch v&agrave; mua sắm ở H&agrave;n Quốc, đ&atilde; khiến tăng trưởng kinh tế của H&agrave;n Quốc bị giảm 0,4% trong năm 2017.</p>', 1, 0, '2018-04-12 18:59:26', '2018-04-12 18:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
