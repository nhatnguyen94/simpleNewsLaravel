-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 09:29 AM
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
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Văn hóa - Xã hội', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentable_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(5, '2018_03_15_062354_create_comments_table', 1);

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
(2, 1, 1, 'Đừng để “thần đồng” sớm nở tối tà', 'TT - Cờ vua VN có nhiều tài năng nhí nhưng đến khi trưởng thành thì chựng lại do thiếu nguồn lực đầu tư.', '/uploads/1521261281.png', 'Những tài năng sớm nở\r\n\r\nTrong lịch sử cờ vua VN có nhiều VĐV bộc lộ tài năng khi còn nhỏ tuổi như: Nguyễn Ngọc Trường Sơn HCV U-10 thế giới năm 2000, Trần Minh Thắng HCV U-8 thế giới năm 2008, Nguyễn Lê Cẩm Hiền HCV U-8 thế giới năm 2015, Nguyễn Anh Khôi vô địch U-10 và U-12 vào các năm 2012, 2014...\r\n\r\nNhưng cho đến thời điểm này chỉ có Lê Quang Liêm là đang tiến dần đến nhóm kỳ thủ có trình độ hàng đầu thế giới. Quang Liêm cho biết mục tiêu trước mắt của anh là top 20 và lâu dài là đứng trong top 10 thế giới. Để có được một Lê Quang Liêm ngày nay, sự nỗ lực của cá nhân anh, đầu tư của gia đình là yếu tố quan trọng nhất.\r\n\r\nNguyễn Ngọc Trường Sơn giành HCV giải cờ vua thế giới khi mới 10 tuổi và là một trong số ít kỳ thủ đạt danh hiệu đại kiện tướng khi mới 14 tuổi 10 tháng. Dù vậy, sự nghiệp của Trường Sơn cũng như nhiều tài năng khác của cờ vua VN không có cơ hội phát triển như Lê Quang Liêm.\r\n\r\nTrường Sơn tâm sự: “Khó khăn của VĐV cờ VN là không có giáo trình đào tạo bài bản, không có điều kiện đi thi đấu quốc tế, không có HLV đủ trình độ hỗ trợ. Dù là VĐV được đánh giá có tài năng từ rất nhỏ nhưng những điều kiện để một VĐV có năng khiếu đạt trình độ thế giới khi trưởng thành thì tôi không có được.\r\n\r\nCó nhiều thời điểm tôi không có kinh phí đi thi đấu quốc tế, vì thế lúc đầu có thể có thành tích tốt hơn các bạn cùng lứa nhưng do thiếu điều kiện thi đấu, đường dài bị tụt hậu so với các VĐV quốc tế. Ở VN hiện nay chỉ có Quang Liêm là có khả năng cạnh tranh vào top kỳ thủ hàng đầu thế giới”.', 1, 0, '2018-03-16 21:34:41', '2018-03-16 21:36:26'),
(3, 1, 1, 'MobiFone mua AVG, Bộ Thông tin - truyền thông có nhiều vi phạm', 'TTO - Theo kết luận của Thanh tra Chính phủ, quá trình thực hiện dự án đầu tư, MobiFone mua 95% cổ phần AVG, Bộ Thông tin - truyền thông cùng nhiều bộ ngành đã để xảy ra nhiều khuyết điểm, vi phạm.', '/uploads/1521261660.jpg', 'Thanh tra Chính phủ cho rằng mặc dù Bộ Thông tin - truyền thông còn băn khoăn, đã nhiều lần đề nghị được các bộ ngành khác trợ giúp, tuy chưa được làm rõ, nhưng Bộ Thông tin - truyền thông vẫn trình Thủ tướng Chính phủ phê duyệt chủ trương đầu tư dự án.\r\n\r\nĐưa vụ mua bán vào danh mục mật\r\n\r\nBộ Thông tin - truyền thông đã thiếu trách nhiệm trong việc thẩm định dự án; phê duyệt dự án đầu tư không đảm bảo căn cứ pháp lý, vi phạm các quy định của pháp luật, gây thiệt hại nghiêm trọng vốn của Nhà nước.\r\n\r\nĐáng chú ý, việc MobiFone nhận chuyển nhượng 95% cổ phần AVG không thuộc lĩnh vực bí mật nhà nước nhưng Bộ Thông tin - truyền thông đã có văn bản đề nghị Bộ Công an cho ý kiến và đưa giao dịch này thuộc danh mục mật là không đúng quy định. \r\n\r\nBộ Thông tin - truyền thông đề nghị Bộ Công an có ý kiến về nhiều nội dung không thuộc phạm vi quản lý nhà nước của Bộ Công an để xin ý kiến là không đúng quy định của pháp luật. \r\n\r\nVì vậy, Bộ Thông tin - truyền thông không thể căn cứ vào ý kiến của Bộ Công an để cho rằng đã tuân thủ đúng hướng dẫn của các cơ quan nhà nước có thẩm quyền.\r\n\r\nKhi Thanh tra Chính phủ có văn bản đề nghị Bộ Thông tin - truyền thông xem xét, quyết định theo thẩm quyền được pháp luật quy định về việc giải mật hoặc tiếp tục bảo mật, Bộ Thông tin - truyền thông đã không thực hiện, đồng thời đề nghị Thanh tra Chính phủ báo cáo, xin ý kiến của Thủ tướng Chính phủ là không đúng quy định.\r\n\r\nVụ trưởng \"cố ý làm trái\"\r\n\r\nRiêng cá nhân ông Phạm Đình Trọng, vụ trưởng Vụ Quản lý doanh nghiệp Bộ Thông tin - truyền thông, đồng thời là tổ trưởng tổ thẩm định, được xác định không làm hết trách nhiệm, có nhiều vi phạm.\r\n\r\nÔng Trọng và tổ thẩm định đã sử dụng thông tin do AVG báo cáo với Bộ Thông tin - truyền thông về mức giá định bán cho đối tác nước ngoài là 700 triệu USD (dù Bộ Thông tin - truyền thông không có tài liệu chứng minh tính chính xác, trung thực) nhưng vẫn dùng để so sánh, nhận xét về giá mua 95% cổ phần AVG.\r\n\r\nTrong việc tổng hợp, báo cáo kết quả thẩm định dự án, tổ trưởng đã không tổng hợp đầy đủ các ý kiến phản biện của một số thành viên; việc đánh giá MobiFone nghiên cứu đầy đủ, toàn diện về dự án, theo Thanh tra Chính phủ, là thiếu khách quan...', 1, 0, '2018-03-16 21:41:00', '2018-03-16 21:41:00'),
(4, 1, 1, 'Dấu ấn nguyên Thủ tướng Phan Văn Khải với Luật doanh nghiệp', 'TTO - Mọi tổ chức và công dân có quyền tự do kinh doanh theo pháp luật, Nhà nước quản lý từ tiền kiểm sang hậu kiểm. Đấy là tinh thần cốt lỏi của Luật Doanh nghiệp năm 1999.', '/uploads/1521262460.jpg', '<p><a href=\"https://cdn.tuoitre.vn/thumb_w/640/2018/3/17/pvk1-1521252361752817947502.jpg\" target=\"_blank\"><img alt=\"Dấu ấn nguyên Thủ tướng Phan Văn Khải với Luật doanh nghiệp - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/640/2018/3/17/pvk1-1521252361752817947502.jpg\" /></a></p>\r\n\r\n<p>Thủ tướng Phan Văn Khải hội kiến Tổng thống George W. Bush tại Ph&ograve;ng bầu dục của Nh&agrave; Trắng trong chuyến thăm lịch sử đến Hoa Kỳ th&aacute;ng 6-2005 - Ảnh tư liệu Tuổi Trẻ</p>\r\n\r\n<p><em>Tuổi Trẻ Online</em>&nbsp;xin giới thiệu b&agrave;i của chuy&ecirc;n gia Phạm Chi Lan về nguy&ecirc;n Thủ tướng Phan Văn Khải v&agrave; dấu ấn của bộ luật quan trọng đối với sự nghiệp ph&aacute;t triển kinh tế v&agrave; khối doanh nghiệp tư nh&acirc;n của Việt Nam.</p>\r\n\r\n<p><strong>Dấu ấn của&nbsp;<a href=\"https://tuoitre.vn/luat-doanh-nghiep.html\" target=\"_blank\">Luật Doanh nghiệp</a></strong></p>\r\n\r\n<p>Một trong những nội dung lớn được Thủ tướng tập trung chỉ đạo l&agrave; nghi&ecirc;n cứu, sửa đổi Luật Doanh nghiệp tư nh&acirc;n v&agrave; Luật C&ocirc;ng ty (ban h&agrave;nh từ 1990-1991) nhằm thể chế h&oacute;a quan điểm đổi mới của Hội nghị Trung ương 4, đồng thời đ&aacute;p ứng y&ecirc;u cầu ch&iacute;nh đ&aacute;ng của doanh nghiệp.</p>\r\n\r\n<p>Tổ soạn thảo được th&agrave;nh lập, gồm những người c&oacute; tư duy đổi mới mạnh mẽ, đứng đầu l&agrave; &ocirc;ng Trần Xu&acirc;n Gi&aacute;, Ủy vi&ecirc;n Trung ương Đảng, Bộ trưởng Bộ Kế hoạch - Đầu tư, c&ugrave;ng một số c&aacute;n bộ chủ chốt của Viện Nghi&ecirc;n cứu Quản l&yacute; kinh tế Trung ương (CIEM), Tổ Chuy&ecirc;n gia tư vấn của Thủ tướng (PMRC) v&agrave; Ph&ograve;ng Thương mại v&agrave; C&ocirc;ng nghiệp Việt Nam (VCCI).</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; lần đầu ti&ecirc;n đại diện cộng đồng doanh nghiệp được Ch&iacute;nh phủ mời tham gia soạn thảo luật.</p>\r\n\r\n<p>Qua nghi&ecirc;n cứu thực tế trong nước v&agrave; kinh nghiệm của nước ngo&agrave;i, tổ n&agrave;y đề nghị hợp nhất cả hai luật n&oacute;i tr&ecirc;n th&agrave;nh Luật Doanh nghiệp, tạo m&ocirc;i trường kinh doanh b&igrave;nh đẳng cho c&aacute;c loại h&igrave;nh c&ocirc;ng ty doanh nghi&ecirc;p tư nh&acirc;n, c&ograve;n doanh nghiệp nh&agrave; nước v&agrave; doanh nghiệp nghiệp FDI vẫn c&oacute; luật ri&ecirc;ng.</p>\r\n\r\n<p>Việc tiến tới một Luật Doanh nghiệp chung cho mọi th&agrave;nh phần kinh tế tr&ecirc;n đất nước ta cũng được đặt ra nhưng cần th&ecirc;m thời gian chuẩn bị.</p>\r\n\r\n<p>Từ quan điểm đổi mới v&agrave; niềm tin v&agrave;o giới kinh doanh, Thủ tướng Phan Văn Khải đ&atilde; chỉ đạo việc x&acirc;y dựng Luật Doanh nghiệp phải đảm bảo hai nội dung quan trọng nhất:</p>\r\n\r\n<p>Thứ nhất: nguy&ecirc;n tắc mọi tổ chức v&agrave; c&ocirc;ng d&acirc;n c&oacute; quyền tự do kinh doanh theo ph&aacute;p luật</p>\r\n\r\n<p>Thứ hai: Nh&agrave; nước chuyển c&aacute;ch quản l&yacute; từ &quot;tiền kiểm&quot; sang &quot;hậu kiểm&quot;, tổ chức sự quản l&yacute;, gi&aacute;m s&aacute;t theo nguy&ecirc;n tắc c&ocirc;ng khai, minh bạch.</p>\r\n\r\n<p>Qu&aacute; tr&igrave;nh x&acirc;y dựng Luật rất c&ocirc;ng phu. Ngo&agrave;i việc trực tiếp nghi&ecirc;n cứu luật doanh nghiệp của 16 nước, Thủ tướng c&ograve;n cho mời c&aacute;c chuy&ecirc;n gia nước ngo&agrave;i đến g&oacute;p &yacute; kiến v&agrave; đưa dự thảo ra hỏi &yacute; kiến c&aacute;c doanh nghiệp v&agrave; chuy&ecirc;n gia trong nước qua nhiều cuộc hội thảo ở cả ba miền Bắc-Trung-Nam.</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; lần đầu ti&ecirc;n c&aacute;c doanh nghiệp được tham gia &yacute; kiến x&acirc;y dựng một luật cho ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<p>Đến khi Ch&iacute;nh phủ tr&igrave;nh b&agrave;y dự thảo Luật trước Quốc hội, ban đầu mọi việc ho&agrave;n to&agrave;n kh&ocirc;ng dễ d&agrave;ng.</p>\r\n\r\n<p>Nhiều đại biểu đồng thời l&agrave; c&aacute;n bộ l&atilde;nh đạo ở c&aacute;c ng&agrave;nh v&agrave; địa phương rất kh&oacute; tiếp nhận tinh thần đổi mới của Luật, do chưa tho&aacute;t khỏi nếp nghĩ theo c&aacute;ch quản l&yacute; nh&agrave; nước cũ, chưa tin v&agrave;o doanh nh&acirc;n, v&agrave;o khả năng điều tiết của kinh tế thị trường trong m&ocirc;i trường cạnh tranh.</p>\r\n\r\n<p>Ch&iacute;nh phủ đ&atilde; ki&ecirc;n tr&igrave; giải tr&igrave;nh. Sau một tuần thảo luận, Quốc hội đ&atilde; biểu quyết từng điều, từng chương của Luật Doanh nghiệp v&agrave; ng&agrave;y 29-5-1999 đ&atilde; th&ocirc;ng qua to&agrave;n văn với sự t&aacute;n th&agrave;nh của 84,5% số đại biểu c&oacute; mặt.</p>\r\n\r\n<p>Luật Doanh nghiệp được ban h&agrave;nh v&agrave; c&oacute; hiệu lực từ 1-1-2000, đ&aacute;nh dấu một cột mốc quan trọng trong qu&aacute; tr&igrave;nh tạo lập m&ocirc;i trường kinh doanh theo kinh tế thị trường v&agrave; ph&aacute;t huy nội lực của Việt Nam.</p>\r\n\r\n<p><strong>Trảm giấy ph&eacute;p con</strong></p>\r\n\r\n<p>D&ugrave; vậy, việc tổ chức thực hiện Luật vẫn kh&ocirc;ng đơn giản v&igrave; đụng chạm tới lợi &iacute;ch cục bộ của kh&ocirc;ng &iacute;t cơ quan v&agrave; c&aacute;n bộ nh&agrave; nước cũng như c&aacute;ch l&agrave;m l&acirc;u nay của doanh nghiệp.</p>\r\n\r\n<p>Thủ tướng đ&atilde; quyết định th&agrave;nh lập Tổ c&ocirc;ng t&aacute;c thi h&agrave;nh Luật doanh nghiệp vẫn do &ocirc;ng Trần Xu&acirc;n Gi&aacute; l&agrave;m Tổ trưởng với n&ograve;ng cốt l&agrave; những người đ&atilde; tham gia x&acirc;y dựng luật.</p>\r\n\r\n<p>C&ocirc;ng việc kh&oacute; khăn, mất nhiều c&ocirc;ng sức nhất l&agrave; r&agrave; so&aacute;t c&aacute;c &quot;giấy ph&eacute;p con&quot; đ&atilde; ban h&agrave;nh trước đ&acirc;y để kiến nghị b&atilde;i bỏ những giấy ph&eacute;p kh&ocirc;ng ph&ugrave; hợp với Luật Doanh nghiệp.</p>\r\n\r\n<p>Qua hai năm đầu thi h&agrave;nh Luật Doanh nghiệp, Ch&iacute;nh phủ v&agrave; Thủ tướng đ&atilde; b&atilde;i bỏ 145 giấy ph&eacute;p, c&aacute;c bộ b&atilde;i bỏ th&ecirc;m 15 loại giấy ph&eacute;p kh&aacute;c, ngo&agrave;i ra một số giấy ph&eacute;p được chuyển th&agrave;nh điều kiện kinh doanh.</p>\r\n\r\n<p>Trong những năm từ 2001 đến 2005, Thủ tướng cũng đ&atilde; chỉ đạo c&aacute;c cơ quan li&ecirc;n quan r&agrave; so&aacute;t, sửa đổi bổ sung nhiều luật quan trọng kh&aacute;c về kinh tế như Luật Đất đai, Luật về Ng&acirc;n h&agrave;ng v&agrave; C&aacute;c tổ chức t&iacute;n dụng, Luật Thương mại, c&aacute;c luật thuế&hellip;</p>\r\n\r\n<p>Một số luật, ph&aacute;p lệnh mới cũng được soạn thảo v&agrave; ban h&agrave;nh, như Luật Cạnh tranh, Ph&aacute;p lệnh về chống b&aacute;n ph&aacute; gi&aacute;, về quyền tự vệ&hellip;</p>\r\n\r\n<p>Tất cả những văn bản n&agrave;y đều được x&acirc;y dựng tr&ecirc;n tinh thần đổi mới tương th&iacute;ch với Luật Doanh nghiệp 1999, đồng thời dựa tr&ecirc;n những nguy&ecirc;n tắc cơ bản của WTO m&agrave; nước ta đang đ&agrave;m ph&aacute;n để gia nhập.</p>\r\n\r\n<p><a href=\"https://cdn.tuoitre.vn/thumb_w/640/2018/3/17/ongkhai2-15212534380191076921316.jpg\" target=\"_blank\"><img alt=\"Dấu ấn nguyên Thủ tướng Phan Văn Khải với Luật doanh nghiệp - Ảnh 2.\" src=\"https://cdn.tuoitre.vn/thumb_w/640/2018/3/17/ongkhai2-15212534380191076921316.jpg\" /></a></p>\r\n\r\n<p>Nguy&ecirc;n Thủ tướng Phan Văn Khải (thứ hai từ tr&aacute;i sang) tại buổi họp mặt truyền thống c&aacute;ch mạng S&agrave;i G&ograve;n - Gia Định mừng xu&acirc;n, mừng Đảng năm 2012 do Th&agrave;nh ủy, UBND, Ủy ban MTTQ TP.HCM tổ chức ng&agrave;y 27-1-2012 - Ảnh: MINH ĐỨC</p>\r\n\r\n<p>Cuối năm 2005, Ch&iacute;nh phủ tr&igrave;nh Quốc hội th&ocirc;ng qua Luật Doanh nghiệp mới, đưa tất cả c&aacute;c doanh nghiệp thuộc mọi th&agrave;nh phần kinh tế, kể cả doanh nghiệp FDI v&agrave;o một khung ph&aacute;p l&yacute; chung.</p>\r\n\r\n<p>Luật mới n&agrave;y quy định doanh nghiệp nh&agrave; nước c&oacute; thời hạn 4 năm kể từ ng&agrave;y luật n&agrave;y c&oacute; hiệu lực (1-7-2006) để chuyển đổi th&agrave;nh c&ocirc;ng ty tr&aacute;ch nhiệm hữu hạn hoặc c&ocirc;ng ty cổ phần.</p>\r\n\r\n<p>Luật Đầu tư mới cũng được ban h&agrave;nh năm 2005, tạo n&ecirc;n một khu&ocirc;n khổ ph&aacute;p l&yacute; thống nhất cho mọi nh&agrave; đầu tư trong nước v&agrave; nước ngo&agrave;i, x&oacute;a bỏ sự ph&acirc;n biệt đối xử tồn tại nhiều năm trước đ&oacute;.</p>\r\n\r\n<p>Hệ thống ph&aacute;p luật tương đối đồng bộ v&agrave; nhất qu&aacute;n đ&atilde; gi&uacute;p nhiều cho việc thi h&agrave;nh Luật Doanh nghiệp, g&oacute;p phần ph&aacute;t triển kinh tế v&agrave; tạo thuận lợi cho việc nước ta được kết nạp v&agrave;o WTO th&aacute;ng 11-2006.</p>\r\n\r\n<p><strong>Cải c&aacute;ch thể chế v&agrave; kinh tế tư nh&acirc;n</strong></p>\r\n\r\n<p>Những th&agrave;nh tựu về ph&aacute;t triển kinh tế - x&atilde; hội trong thời kỳ Thủ tướng Phan Văn Khải cầm quyền đều c&oacute; sự đ&oacute;ng g&oacute;p quan trọng của c&ocirc;ng cuộc cải c&aacute;ch thể chế kinh tế, đặc biệt về thể chế cho ph&aacute;t triển khu vực tư nh&acirc;n m&agrave; Thủ tướng dốc l&ograve;ng x&acirc;y dựng.</p>\r\n\r\n<p>Với những trải nghiệm thực tế trong những năm c&ocirc;ng t&aacute;c tại TP.HCM, nơi lu&ocirc;n c&oacute; kinh tế tư nh&acirc;n ph&aacute;t triển nhất tr&ecirc;n đất nước ta, nguy&ecirc;n Thủ tướng Phan Văn Khải đ&atilde; rất sớm c&oacute; c&aacute;ch nh&igrave;n về kinh tế tư nh&acirc;n kh&aacute;c so với những nh&agrave; l&atilde;nh đạo cao cấp c&ugrave;ng thời.</p>\r\n\r\n<p>&Ocirc;ng kh&ocirc;ng gi&aacute;o điều, kh&ocirc;ng định kiến &quot;b&oacute;c lột&quot; v&agrave; e ngại, k&igrave;m h&atilde;m đối với khu vực n&agrave;y.</p>\r\n\r\n<p>V&igrave; vậy, ngay từ khi ra trung ương l&agrave;m việc đầu thập ni&ecirc;n 1990, &ocirc;ng đ&atilde; hết sức cố gắng đưa những quan điểm mới v&agrave;o c&aacute;c nghị quyết của Đảng v&agrave; ch&iacute;nh s&aacute;ch của nh&agrave; nước về ph&aacute;t triển kinh tế tư nh&acirc;n ở Việt Nam.</p>\r\n\r\n<p>Trong c&aacute;c cuộc họp được tiến h&agrave;nh ở ba nơi H&agrave; Nội, TP.HCM v&agrave; Đ&agrave; Nẵng, &ocirc;ng Khải khẳng định mối quan hệ mới giữa Ch&iacute;nh phủ v&agrave; doanh nghiệp:</p>\r\n\r\n<p>&quot;Quan hệ giữa cơ quan Nh&agrave; nước v&agrave; doanh nghiệp l&agrave; quan hệ hợp t&aacute;c, cộng đồng tr&aacute;ch nhiệm trước y&ecirc;u cầu chung của sự ph&aacute;t triển đất nước; kh&ocirc;ng c&oacute; h&agrave;ng r&agrave;o ngăn c&aacute;ch giữa cơ quan nh&agrave; nước với doanh nghiệp theo kiểu kẻ tr&ecirc;n người dưới...</p>\r\n\r\n<p>Cả trong x&acirc;y dựng lẫn thi h&agrave;nh thể chế ch&uacute;ng ta phải đấu tranh khắc phục t&igrave;nh trạng c&aacute;c cơ quan Nh&agrave; nước lu&ocirc;n t&igrave;m c&aacute;ch gi&agrave;nh phần thuận lợi cho m&igrave;nh, đẩy kh&oacute; khăn cho người d&acirc;n v&agrave; doanh nghiệp&hellip; Về ph&iacute;a doanh nghiệp v&agrave; doanh nh&acirc;n, phải kết hợp h&agrave;i h&ograve;a lợi &iacute;ch của m&igrave;nh với lợi &iacute;ch của đất nước, của d&acirc;n tộc, kinh doanh c&oacute; phẩm chất đạo đức, kh&ocirc;ng l&agrave;m ăn kiểu chụp giật, xoay xở bất ch&iacute;nh&hellip;&quot;.</p>\r\n\r\n<p>PHẠM CHI LAN</p>', 1, 0, '2018-03-16 21:54:20', '2018-03-16 21:54:20');

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
(1, 'admin', 'admin@gmail.com', '123', NULL, NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
