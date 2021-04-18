-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quintessa-cinema
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cinemas`
--

DROP TABLE IF EXISTS `cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinemas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cinema_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infomation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinemas`
--

LOCK TABLES `cinemas` WRITE;
/*!40000 ALTER TABLE `cinemas` DISABLE KEYS */;
INSERT INTO `cinemas` VALUES (1,'Cinema Huế','28 Nguyễn Tri Phương','2021-04-14 02:23:46','2021-04-14 02:23:46'),(2,'Cinema Mặt Trăng','Vùng tối của chị Hằng','2021-04-14 02:24:21','2021-04-14 02:24:21');
/*!40000 ALTER TABLE `cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `global_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `producer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durations` int NOT NULL,
  `release_date` date NOT NULL,
  `status` int NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_price` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Đại Úy Marvel','Captain Marvel','Captain_Marvel.jpeg','Marvel Studios','Hành động, Siêu anh hùng','Anna Boden','Brie Larson , Gemma Chan, Samuel L. Jackson, Jude Law, Lee Pace',119,'2019-03-20',1,'abc','Không chỉ từng là một người người lính thuộc quân đội Mỹ, Carol Denvers còn chính là Captain Marvel. Liệu bộ phim đầu tiên về nữ chiến binh đầy quyền uy và sức mạnh của vũ trụ điện ảnh Marvel có đáp ứng được mong đợi của khán giả?\n        Là phim riêng đầu tiên làm về một nữ siêu anh hùng, Captain Marvel gánh trên vai trọng trách khá nặng nề phải vượt qua đối trọng Wonder Woman, cũng như áp lực khi Aquaman của đối thủ DCEU vừa phá mốc tỷ đô . Áp lực đó thuộc về nữ diễn viên chính Brie Larson. Brie đã phải tập luyện suốt nhiều tháng ròng rã để đạt yêu cầu cơ bắp của nhân vật.\n       Carol Danvers là một phi công của lực lượng Không quân Hoa Kỳ. Sau một vụ tai nạn, cô được người ngoài hành tinh Kree đưa về cứu chữa. Tại đây, DNA của Carol đã được kết hợp với DNA của người Kree, từ đó giúp cô trở nên siêu khỏe, siêu nhanh.\n       Từ đây, Captain Marvel - siêu anh hùng mạnh mẽ nhất vũ trụ ra đời. Mặt khác cùng lúc đó, trận chiến khốc liệt giữa tộc Kree và Skrull đã lan rộng và có những tác động tiêu cực ra toàn cầu, trong đấy có Trái Đất. Liệu hành trình trở thành siêu anh hùng của Carol Danvers sẽ diễn ra như thế nào?\n       Lấy bối cảnh thập niên 90, Captain Marvel còn có sự góp mặt của những cái tên quen thuộc với vũ trụ điện ảnh Marvel như Samuel L. Jackson - ngài Nick Fury thuở còn chưa chột mắt, Clark Gregg - đặc vụ Couson ngày trẻ và đặc biệt là kẻ đã bị Đội vệ binh dải ngân hà \"xóa sổ\" - Ronan do Lee Pace thể hiện.\n       Captain Marvel sẽ chính thức phá đảo màn ảnh rộng tại các rạp chiếu phim toàn cầu từ 8.3.2019. Trước đó, khán giả có thể xem suất chiếu sớm từ 19h00- 7.3.2019.',70000,NULL,'2021-04-14 02:08:25','2021-04-14 02:08:25'),(2,'AVENGERS: HỒI KẾT','AVENGERS: ENDGAME','EndGame.jpg','Walt Disney Studios Motion Pictures','Hành Động, Giả Tưởng','Anthony Russo, Joe Russo','Robert Downey Jr., Chris Hemsworth, Chris Evans, Scarlett Johansson, Mark Ruffalo, Jeremy Renner',213,'2019-04-26',0,'abc','Cú búng tay của Thanos đã khiến toàn bộ dân số biến mất một nửa. Các siêu anh hùng đánh mất bạn bè, người thân và đánh mất cả chính mình. Bộ 6 Avengers đầu tiên tứ tán. Họ phải làm gì để cứu vãn mọi chuyện? Câu trả lời sẽ có trong Avengers: Endgame.\n        Là siêu phẩm được trông đợi nhất 2019, Avengers: Endgame đã khiến toàn cầu xôn xao khi tung trailer vào 07.12.2018. Chỉ trong vòng 24 giờ, trailer nhận được gần 300 triệu lượt xem và trở thành trailer có lượt xem cao nhất mọi thời đại.',95000,NULL,'2021-04-14 02:11:31','2021-04-14 02:11:31'),(3,'HAI PHƯỢNG','FURIE','Hai_Phuong.jpg','Studio68   ','Hành động, Võ thuật','Lê Văn Kiệt','Ngô Thanh Vân, Phạm Anh Khoa',98,'2019-03-02',1,'<iframe width=\"653\" height=\"370\" src=\"https://www.youtube.com/embed/AsZj4AFPfcE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Hai Phượng kể về cuộc hành trình đầy gay cấn và gian của khi người mẹ vùng quê tìm cách cứu con mình thoát khỏi đường dây bắt cóc khổng lồ. Không tấc sắc trong tay, người phụ nữ thân cô thế cô làm sao chống lại bọn xã hội đen tàn ác để giành lại nguồn sống của đời mình?\n \n      Hai Phượng do \"đả nữ\" Ngô Thanh Vân thủ vai chính sẽ ra rạp vào 22.02.2019.',60000,NULL,'2021-04-14 19:10:07','2021-04-14 19:10:07'),(4,'CoCo','COCO','coco.jpg','Pixar','Hoạt hình, giả tưởng, phim ca nhạc, phiêu lưu','Adrian Molina, Lee Unkrich',' Anthony Gonzalez, Gael García Bernal, Benjamin Bratt',110,'2017-11-22',1,'không có','Miguel biện luận với bà Elena của mình và bỏ đi để tham gia một chương trình tài năng trong Ngày lễ dành cho người đã khuất. Cậu bước vào lăng mộ của Ernesto và ăn cắp cây guitar của ông để sử dụng trong chương trình tài năng, nhưng bất ngờ cậu trở nên vô hình đối với tất cả mọi người trong làng. Tuy nhiên, cậu lại có thể nhìn thấy và được nhìn thấy bởi con chó Xoloitzcuintli của mình, Dante và những người thân đã qua đời của cậu (chỉ còn trong hình dạng bộ xương người) - họ đến từ Vùng đất của người chết và đang trên đường tới thăm gia đình trong ngày lễ. Gặp cậu ở đó, họ nhận ra rằng Imelda không thể đến thăm gia đình vì Miguel đã tháo bức ảnh của cô ấy ra khỏi khung kính trên bàn thờ. Miguel khám phá ra rằng cậu bé đã bị nguyền rủa vì ăn cắp đồ vật của người đã mất, cậu phải trở về Vùng đất của người còn sống trước khi mặt trời mọc nếu không cậu sẽ trở thành một trong số những người chết. Để làm được như vậy, cậu phải được ban phước lành từ một thành viên trong gia đình của mình bằng cách sử dụng hoa cúc Aztec vì cánh hoa có thể đẩy lùi lời nguyền cho tội ăn cắp chiếc guitar của Ernesto. Imelda ban phước cho Miguel nhưng với điều kiện là cậu phải từ bỏ mọi hoạt động âm nhạc khi cậu trở về Vùng đất của người còn sống; Miguel từ chối và cố gắng tìm kiếm sự trợ giúp của Ernesto.\n\n      Miguel chạm trán với Héctor, bộ xương của một người từng hợp tác với Ernesto và đề nghị giúp Miguel tiếp cận ông ấy. Đổi lại, Héctor yêu cầu Miguel đưa bức ảnh của mình trở về Vùng đất của người còn sống để ông có thể thăm con gái mình trước khi cô lãng quên ông nếu không ông sẽ biến mất hoàn toàn. Phát hiện ra Miguel nói dối rằng cậu không có ai là người thân ngoại trừ Ernesto, Héctor cố gắng trả lại Miguel cho người thân của mình, nhưng Miguel thoát ra và thâm nhập vào tòa biệt thự của Ernesto. Ernesto chào đón Miguel nồng nhiệt khi biết cậu là chắt của ông, nhưng Héctor gặp được họ, van xin Miguel dựng lại bức ảnh của ông. Héctor sớm nhận ra rằng Ernesto chính là người đã giết và lấy trộm các bài hát mà mình đã viết, sử dụng chúng như là của hắn ta để trở nên nổi tiếng. Ernesto đánh cắp bức ảnh của Héctor và đem Héctor cùng Miguel ném vào hố sâu.\n      \n      Miguel nhận ra rằng Héctor mới là ông sơ của cậu và bà cố Coco chính là con gái của ông, người duy nhất còn sống vẫn còn nhớ ông. Với sự giúp đỡ của chú chó Dante - là một thần thú dẫn lối linh hồn khi ở thế giới của người chết - những thành viên quá cố của gia đình Riveras đã tìm và giải cứu cho họ. Miguel tiết lộ rằng Héctor đã từng quyết định trở về nhà với Coco nhưng chưa kịp thực hiện thì đã bị giết, Imelda hiểu ra và hoà giải với Héctor. Họ thâm nhập vào buổi hòa nhạc Mặt trời mọc của Ernesto để lấy bức ảnh của Héctor từ Ernesto và phơi bày những hành động sai trái của hắn ta. Ernesto bị nghiền nát bởi một chiếc chuông nhà thờ rơi xuống - giống như cái cách mà hắn bị chết trong cuộc đời trước, nhưng bức ảnh rơi xuống nước và biến mất.\n      \n      Khi mặt trời mọc, Héctor đang có nguy cơ bị lãng quên và biến mất. Imelda ban phước lành cho Miguel vô điều kiện để cậu có thể trở lại Vùng đất của người còn sống và chơi bản nhạc mà Héctor đã sáng tác cho riêng Coco. Điều này làm cho bà ấy tỉnh táo và nhớ về cha mình, bà đưa cho Miguel mẩu ảnh của Héctor bị rách khỏi bức ảnh, cho thấy khuôn mặt của Héctor. Elena hòa hợp với Miguel, chấp nhận cả cậu và âm nhạc trở lại gia đình.\n      \n      Một năm sau, Miguel tự hào trình bày về truyền thống gia đình - với một bức ảnh của Coco bây giờ đã chết - cho em gái mới sinh của mình. Các lá thư do Coco lưu giữ có bằng chứng cho thấy Ernesto đã đánh cắp âm nhạc của Héctor; kết quả là di sản của Ernesto bị phá hủy và công chúng tôn vinh Héctor ở vị trí xứng đáng. Ở Vùng đất của những người đã khuất, Héctor và Imelda cùng Coco trở về để thăm gia đình Rivera trong khi Miguel đang hát cho người thân, cả người đã chết và đang sống.',75000,NULL,'2021-04-14 19:16:55','2021-04-14 19:16:55');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2021_04_14_070909_create_films_table',1),(4,'2021_04_14_072256_create_newsfeed_table',1),(5,'2021_04_14_072617_create_cinemas_table',1),(6,'2021_04_14_072729_create_rooms_table',1),(7,'2021_04_14_073049_create_seats_table',1),(8,'2021_04_14_073259_create_screenings_table',1),(9,'2021_04_14_073620_create_tickets_table',1),(10,'2021_04_14_095203_add_column_to_screenings_table',2),(11,'2021_04_14_100247_add_column_to_tickets_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeeds`
--

DROP TABLE IF EXISTS `newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsfeeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeeds`
--

LOCK TABLES `newsfeeds` WRITE;
/*!40000 ALTER TABLE `newsfeeds` DISABLE KEYS */;
INSERT INTO `newsfeeds` VALUES (1,'Captain Marvel: Khi Một Phụ Nữ Đủ Sức Đánh Bại Cả Biệt Đội Siêu Anh Hùng','<p>Thế l&agrave; sau h&agrave;ng t&aacute; lời n&oacute;i dối, cuối c&ugrave;ng th&aacute;ng 3 lại l&agrave; lời n&oacute;i thật của Marvel v&igrave; Captain Marvel lại mạnh khủng khiếp đ&uacute;ng như lời chủ tịch Kevin Feige từng đề cập đến!</p>\n \n       <p>Bộ phim mở đầu ở h&agrave;nh tinh người Kree v&agrave; giới thiệu nữ ch&iacute;nh Vers- c&ocirc; n&agrave;ng t&oacute;c v&agrave;ng kh&ocirc;ng&hellip; đẹp nhưng c&aacute; t&iacute;nh. Sở hữu sức mạnh phi thường c&ugrave;ng k&yacute; ức trống rỗng, Vers đang cố gắng luyện tập để được phụng sự cho Tr&iacute; Tuệ Tối Cao. Khi nhận nhiệm vụ giải cứu một điệp vi&ecirc;n khỏi tay lũ người Skull t&agrave; &aacute;c c&ugrave;ng nh&oacute;m của người thầy Yon-Rogg, Vers rời khỏi h&agrave;nh tinh, h&aacute;o hức tham gia nhiệm vụ đầu ti&ecirc;n. N&agrave;o ngờ, chuyến đi n&agrave;y sẽ m&atilde;i m&atilde;i thay đổi bản th&acirc;n c&ocirc;.</p>\n       \n       <p>Mặc cho những lời ch&ecirc; bai so s&aacute;nh nọ kia với c&aacute;c mỹ nữ &ldquo;Black Widow&rdquo; Scarlett Johansson, &ldquo;Scarlet Witch&rdquo; Elizabeth Olsen hay thậm ch&iacute; l&agrave; si&ecirc;u anh h&ugrave;ng nh&agrave; đối thủ DCEU &ldquo;Wonder Woman&rdquo; Gal Gadot, &ldquo;Captain Marvel&rdquo; Brie Larson debut xuất sắc. Đại &uacute;y Marvel ngay thẳng, bướng bỉnh, cứng đầu cả trong phim ra đến ngo&agrave;i đời c&oacute; thể khiến kh&aacute;n giả phật l&ograve;ng. Thế nhưng, kh&oacute; thể phủ nhận mọi nỗ lực của Nữ ch&iacute;nh xuất sắc nhất Oscar 2015 đ&atilde; th&agrave;nh c&ocirc;ng đem đến một Captain Marvel kh&oacute; thể tuyệt vời hơn.</p>\n       \n       <p>Kh&ocirc;ng quyến rũ như G&oacute;a phụ đen, thiếu nữ t&iacute;nh hơn C&ocirc;ng ch&uacute;a Amazon cũng chẳng ma mị bằng Nữ ph&ugrave; thủy, Đại &uacute;y Marvel &ldquo;lấy l&ograve;ng&rdquo; kh&aacute;n giả bằng sự khẳng kh&aacute;i, mạnh mẽ v&agrave; &yacute; ch&iacute; phi thường. Từ c&ocirc; b&eacute; con th&iacute;ch chơi tr&ograve; cảm gi&aacute;c mạnh, lu&ocirc;n đứng dậy mỗi khi bị ng&atilde; đến nữ phi c&ocirc;ng khiến đồng đội t&acirc;m phục khẩu phục ở kh&ocirc;ng qu&acirc;n Hoa Kỳ. Từ chiến binh hoang mang đi t&igrave;m k&yacute; ức đến Captain Marvel c&oacute; sức mạnh đủ để to&agrave;n bộ nh&oacute;m Avengers khiếp sợ.</p>\n       \n       <p>&nbsp;<img alt=\"\" src=\"/ckfinder/userfiles/images/mv5bzjg3mzcynzctzwixyi00ztg5ltllyjitzgy4zwuyy2vjnwq1xkeyxkfqcgdeqxvynjg2njqwmdq--v1-sy1000-sx1500-al-_1552029759829.jpg\" style=\"height:400px; width:600px\" /></p>\n       \n       <p><strong>Captain Marvel&nbsp;</strong>chứng tỏ rằng Carol Danvers ch&iacute;nh l&agrave; nh&acirc;n tố quan trọng nhất trong chương tiếp theo của vũ trụ điện ảnh Marvel.</p>\n       \n       <p>L&agrave; &ldquo;cha đẻ&rdquo; biệt đội si&ecirc;u anh h&ugrave;ng nhưng thời lượng Nick Fury xuất hiện ở c&aacute;c phần&nbsp;<em>phim hay</em>&nbsp;si&ecirc;u anh h&ugrave;ng MCU thường vỏn vẹn v&agrave;i ph&uacute;t. Sau Captain America: Winter Soldier, ch&uacute;ng ta mới lại thấy ổng tỏa s&aacute;ng. H&agrave;i hước, s&acirc;u sắc, th&ocirc;ng minh, Nick Fury thời trẻ&hellip; tr&acirc;u khiến kh&aacute;n giả mắt tr&ograve;n mắt dẹt hết bất ngờ n&agrave;y tới bất ngờ kh&aacute;c.</p>\n       \n       <p>Marvel thắng lớn nhờ cho ph&eacute;p Samuel L. Jackson tự do ph&aacute;t triển Nick Fury theo &yacute; m&igrave;nh. Fury l&agrave; nh&acirc;n tố ch&iacute;nh tạo ra h&agrave;ng t&aacute; tr&agrave;ng cười vui vẻ. &Ocirc;ng thể hiện ho&agrave;n hảo vẻ bất ngờ của một đặc vụ ở lần đầu nh&igrave;n thấy người ngo&agrave;i h&agrave;nh tinh. Tuy nhi&ecirc;n, ng&agrave;i Fury vẫn sở hữu c&aacute;i đầu si&ecirc;u ph&agrave;m m&agrave; d&ugrave; l&agrave; c&aacute;c si&ecirc;u anh h&ugrave;ng chẳng d&aacute;m đ&aacute;nh gi&aacute; thấp. Chỉ với khẩu s&uacute;ng ngắn, &ocirc;ng giết cả người ngo&agrave;i h&agrave;nh tinh v&agrave; l&agrave;m bạn đồng h&agrave;nh chiến đấu c&ugrave;ng nữ si&ecirc;u anh h&ugrave;ng mạnh nhất lịch sử Marvel.</p>\n       \n       <p>L&agrave; diễn vi&ecirc;n t&agrave;i năng nhưng vai tr&ograve; của Jude Law trong&nbsp;<strong>Captain Marvel</strong>&nbsp;c&ograve;n &iacute;t ỏi. Yon-Rog chưa được khai th&aacute;c hết, bỏ ng&otilde; nhiều chi tiết quan trọng. Chịu chung số phận l&agrave; &ldquo;Ronan&rdquo; Lee Pace. Marvel &ldquo;hồi sinh&rdquo; g&atilde; tay sai phe Thanos sau khi bị Vệ binh dải ng&acirc;n h&agrave; kết liễu ở&nbsp;<em>Guardian Of The Galaxy Vol.1</em>. Tuy nhi&ecirc;n, phần tiền truyện vẫn chẳng gi&uacute;p kh&aacute;n giả biết th&ecirc;m được bao nhi&ecirc;u về g&atilde; đao phủ cao kều c&oacute; sở th&iacute;ch giết ch&oacute;c n&agrave;y. Clark Gregg cũng chia sẻ cảnh ngộ Marvel &quot;đem con bỏ chợ&rdquo; v&igrave; đặc vụ Coulson thời trẻ chỉ xuất hiện hơn v&agrave;i ph&uacute;t.</p>\n       \n       <p>Ngược lại, Ben Mendelsohn g&acirc;y bất ngờ bởi vai phản diện đầy h&agrave;i hước v&agrave; duy&ecirc;n d&aacute;ng. Mỗi lần &ocirc;ng xuất hiện lại g&acirc;y cười cho kh&aacute;n giả bằng một t&igrave;nh tiết mới. C&ugrave;ng với Samuel L. Jackson, &ocirc;ng chứng minh rằng tr&igrave;nh h&agrave;i hước của MCU chưa bao giờ l&agrave;m kh&aacute;n giả thất vọng.</p>\n       \n       <p>Tuy nhi&ecirc;n, kẻ chiếm &ldquo;spotlight&rdquo; chẳng phải l&agrave; ng&ocirc;i sao đoạt Oscar 2015 cũng n&agrave;o phải hai nam diễn vi&ecirc;n gạo cội lại ch&iacute;nh l&agrave; kẻ m&agrave; c&aacute;c nh&agrave; sản xuất Marvel o bế ngay khi xuất hiện mờ ảo tr&ecirc;n tấm poster Captain Marvel đầu ti&ecirc;n &ndash; Goose. &ldquo;T&agrave;i năng, tinh tế, biểu tượng&rdquo; &ndash; &ldquo;Kẻ bị chiếm mất spotlight&rdquo; Brie Larson cũng phải d&agrave;nh cho bạn diễn bốn ch&acirc;n những lời c&oacute; c&aacute;nh như thế. Quả thật, từng ph&acirc;n cảnh Goose xuất hiện đều khiến con tim kh&aacute;n giả rung động kh&ocirc;ng th&ocirc;i. Hội cuồng &ldquo;ho&agrave;ng thượng&rdquo; sẽ được thỏa m&atilde;n tột c&ugrave;ng với Captain Marvel trước l&uacute;c về nh&agrave; nh&igrave;n boss nh&agrave; m&igrave;nh rồi sợ h&atilde;i nghĩ &ldquo;Lỡ đ&acirc;u n&oacute; ăn thịt m&igrave;nh?&rdquo; Kỹ xảo thời nay gi&uacute;p Marvel thể hiện ho&agrave;n hảo sinh vật h&agrave;nh tinh Flerken v&agrave; bốn ch&uacute; m&egrave;o diễn vi&ecirc;n đ&atilde; ho&agrave;n th&agrave;nh nhiệm vụ đưa l&ecirc;n m&agrave;n ảnh rộng b&eacute; Ngỗng tinh nghịch khiến to&agrave;n thế giới phải ph&aacute;t cuồng.</p>\n       \n       <p>Vẫn như mọi khi, Marvel tin d&ugrave;ng những nh&acirc;n tố mới, bộ đ&ocirc;i bi&ecirc;n kịch ki&ecirc;m đạo diễn Anna Boden v&agrave; Ryan Fleck c&oacute; tuổi nghề tr&ecirc;n mười năm nhưng gia t&agrave;i phim lại &iacute;t ỏi. Tuy vậy, cặp vợ chồng n&agrave;y đ&atilde; chứng tỏ &ldquo;đồng vợ đồng chồng t&aacute;t biển Đ&ocirc;ng cũng cạn&rdquo;, với sự hỗ trợ từ những c&aacute;i t&ecirc;n quen thuộc như quay phim Ben Davis, dựng phim Debbie Berman &amp; Elliot Graham&hellip; T&aacute;c phẩm họ tạo ra xứng tầm kinh ph&iacute; khổng lồ 150 triệu $.</p>\n       \n       <p>Tr&aacute;i với lo sợ của nhiều người,&nbsp;<strong>Captain Marvel&nbsp;</strong>kh&ocirc;ng phải l&agrave; phim nữ quyền theo hướng cực đoan. Carol Danvers l&agrave; tấm gương vươn l&ecirc;n, chứng tỏ rằng người phụ nữ c&oacute; khả năng tham gia mọi lĩnh vực nếu họ r&egrave;n luyện v&agrave; phấn đấu hết m&igrave;nh. Tuy nhi&ecirc;n, th&agrave;nh c&ocirc;ng đ&oacute; chẳng hề phủ nhận nam giới. Ch&iacute;nh Carol, ngay cả khi sở hữu sức mạnh thượng thừa lu&ocirc;n t&ocirc;n trọng một &ldquo;giống đực nh&acirc;n loại, độ nguy hiểm gần bằng 0&rdquo; như Nick Fury.</p>\n       \n       <p>Với việc Marvel n&oacute;i&hellip; thật, để Carol Danvers thực sự trở th&agrave;nh nữ nh&acirc;n vật mạnh nhất MCU, c&oacute; thể cho Thanos &ldquo;ăn h&agrave;nh&rdquo; cũng như &ldquo;l&agrave;m gỏi&rdquo; biệt đội si&ecirc;u anh h&ugrave;ng từ thần R&igrave;u Thor cho đến Iron Man trong bộ gi&aacute;p Nano, Marvel đ&atilde; tự đưa m&igrave;nh v&agrave;o thế kh&oacute; v&igrave; Captain Marvel trở n&ecirc;n qu&aacute; mạnh trước hai c&aacute;i t&ecirc;n sẽ c&ugrave;ng c&ocirc; g&aacute;nh v&aacute;c tương lai MCU&ndash; Black Panther v&agrave; Doctor Strange. Tuy nhi&ecirc;n, tin rằng với truyền thống phim gắn kết phim tạo th&agrave;nh vũ trụ m&agrave; MCU l&agrave; kẻ đi đầu, mọi chuyện vẫn nằm trong tầm tay c&aacute;c nh&agrave; sản xuất.</p>\n       \n       <p>H&atilde;y c&ugrave;ng chờ xem&nbsp;<strong>Đại &Uacute;y Marvel</strong>&nbsp;sẽ c&agrave;n qu&eacute;t bao nhi&ecirc;u mỹ kim tại c&aacute;c&nbsp;<em>rạp chiếu phim</em>&nbsp;to&agrave;n cầu trước khi tham gia cũng biệt đội si&ecirc;u anh h&ugrave;ng v&agrave; &ldquo;c&acirc;n&rdquo; lu&ocirc;n Thanos!</p>\n       \n       <p>Cuối c&ugrave;ng, c&aacute;c fan trung th&agrave;nh của MCU đừng qu&ecirc;n v&agrave;o sớm để kh&ocirc;ng bỏ lỡ phần credit đầu phim tri &acirc;n ng&agrave;i Stan Lee v&agrave; ở lại tới ph&uacute;t ch&oacute;t xem hết hai credit đầy th&uacute; vị nh&eacute;.</p>','captain','2021-04-14 02:15:30','2021-04-14 02:15:30');
/*!40000 ALTER TABLE `newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cinema_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_cinema_id_foreign` (`cinema_id`),
  CONSTRAINT `rooms_cinema_id_foreign` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Moon 1',2,'2021-04-14 02:28:11','2021-04-14 02:28:11'),(2,'Earth 1',1,'2021-04-14 02:28:26','2021-04-14 02:28:26'),(3,'Earth 2',1,'2021-04-14 02:28:34','2021-04-14 02:28:34');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenings`
--

DROP TABLE IF EXISTS `screenings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `film_id` bigint unsigned NOT NULL,
  `room_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cinema_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `screenings_film_id_foreign` (`film_id`),
  KEY `screenings_room_id_foreign` (`room_id`),
  KEY `screenings_cinema_id_foreign` (`cinema_id`),
  CONSTRAINT `screenings_cinema_id_foreign` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`id`),
  CONSTRAINT `screenings_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`),
  CONSTRAINT `screenings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenings`
--

LOCK TABLES `screenings` WRITE;
/*!40000 ALTER TABLE `screenings` DISABLE KEYS */;
INSERT INTO `screenings` VALUES (1,'2019-05-11','12:00:00',1,1,'2021-04-14 02:54:58','2021-04-14 02:54:58',1),(2,'2019-05-11','15:00:00',1,3,'2021-04-14 02:57:10','2021-04-14 02:57:10',2),(3,'2019-03-02','17:00:00',4,2,'2021-04-14 19:22:51','2021-04-14 19:22:51',1),(4,'2019-03-02','19:00:00',4,2,'2021-04-14 19:23:07','2021-04-14 19:23:07',1),(5,'2019-03-02','21:00:00',4,2,'2021-04-14 19:23:20','2021-04-14 19:23:20',1),(6,'2019-03-02','18:00:00',4,3,'2021-04-14 19:23:36','2021-04-14 19:23:36',1),(7,'2019-03-02','20:00:00',4,3,'2021-04-14 19:23:44','2021-04-14 19:23:44',1),(8,'2017-11-22','21:00:00',3,3,'2021-04-14 19:25:28','2021-04-14 19:25:28',1),(9,'2017-11-22','19:00:00',3,3,'2021-04-14 19:25:36','2021-04-14 19:25:36',1),(10,'2017-11-22','17:00:00',3,3,'2021-04-14 19:25:42','2021-04-14 19:25:42',1),(11,'2017-11-22','15:00:00',3,2,'2021-04-14 19:26:10','2021-04-14 19:26:10',1),(12,'2017-11-22','13:00:00',3,2,'2021-04-14 19:26:17','2021-04-14 19:26:17',1),(13,'2017-11-22','11:00:00',3,2,'2021-04-14 19:26:23','2021-04-14 19:26:23',1);
/*!40000 ALTER TABLE `screenings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `row` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int NOT NULL,
  `room_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seats_room_id_foreign` (`room_id`),
  CONSTRAINT `seats_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (5,'A',1,1,NULL,NULL),(6,'A',2,1,NULL,NULL),(7,'A',3,1,NULL,NULL),(8,'A',4,1,NULL,NULL),(9,'A',5,1,NULL,NULL),(10,'A',6,1,NULL,NULL),(11,'A',7,1,NULL,NULL),(12,'A',8,1,NULL,NULL),(13,'A',9,1,NULL,NULL),(14,'A',10,1,NULL,NULL),(15,'B',1,1,NULL,NULL),(16,'B',2,1,NULL,NULL),(17,'B',3,1,NULL,NULL),(18,'B',4,1,NULL,NULL),(19,'B',5,1,NULL,NULL),(20,'B',6,1,NULL,NULL),(21,'B',7,1,NULL,NULL),(22,'B',8,1,NULL,NULL),(23,'B',9,1,NULL,NULL),(24,'B',10,1,NULL,NULL),(45,'C',1,1,NULL,NULL),(46,'C',2,1,NULL,NULL),(47,'C',3,1,NULL,NULL),(48,'C',4,1,NULL,NULL),(49,'C',5,1,NULL,NULL),(50,'C',6,1,NULL,NULL),(51,'C',7,1,NULL,NULL),(52,'C',8,1,NULL,NULL),(53,'C',9,1,NULL,NULL),(54,'C',10,1,NULL,NULL),(55,'D',1,1,NULL,NULL),(56,'D',2,1,NULL,NULL),(57,'D',3,1,NULL,NULL),(58,'D',4,1,NULL,NULL),(59,'D',5,1,NULL,NULL),(60,'D',6,1,NULL,NULL),(61,'D',7,1,NULL,NULL),(62,'D',8,1,NULL,NULL),(63,'D',9,1,NULL,NULL),(64,'D',10,1,NULL,NULL),(65,'D',1,1,NULL,NULL),(66,'D',2,1,NULL,NULL),(67,'D',3,1,NULL,NULL),(68,'D',4,1,NULL,NULL),(69,'D',5,1,NULL,NULL),(70,'D',6,1,NULL,NULL),(71,'D',7,1,NULL,NULL),(72,'D',8,1,NULL,NULL),(73,'D',9,1,NULL,NULL),(74,'D',10,1,NULL,NULL),(75,'A',1,2,NULL,NULL),(76,'A',2,2,NULL,NULL),(77,'A',3,2,NULL,NULL),(78,'A',4,2,NULL,NULL),(79,'A',5,2,NULL,NULL),(80,'A',6,2,NULL,NULL),(81,'A',7,2,NULL,NULL),(82,'A',8,2,NULL,NULL),(83,'A',9,2,NULL,NULL),(84,'A',10,2,NULL,NULL),(105,'B',1,2,NULL,NULL),(106,'B',2,2,NULL,NULL),(107,'B',3,2,NULL,NULL),(108,'B',4,2,NULL,NULL),(109,'B',5,2,NULL,NULL),(110,'B',6,2,NULL,NULL),(111,'B',7,2,NULL,NULL),(112,'B',8,2,NULL,NULL),(113,'B',9,2,NULL,NULL),(114,'B',10,2,NULL,NULL),(115,'C',1,2,NULL,NULL),(116,'C',2,2,NULL,NULL),(117,'C',3,2,NULL,NULL),(118,'C',4,2,NULL,NULL),(119,'C',5,2,NULL,NULL),(120,'C',6,2,NULL,NULL),(121,'C',7,2,NULL,NULL),(122,'C',8,2,NULL,NULL),(123,'C',9,2,NULL,NULL),(124,'C',10,2,NULL,NULL),(125,'D',1,2,NULL,NULL),(126,'D',2,2,NULL,NULL),(127,'D',3,2,NULL,NULL),(128,'D',4,2,NULL,NULL),(129,'D',5,2,NULL,NULL),(130,'D',6,2,NULL,NULL),(131,'D',7,2,NULL,NULL),(132,'D',8,2,NULL,NULL),(133,'D',9,2,NULL,NULL),(134,'D',10,2,NULL,NULL),(135,'E',1,2,NULL,NULL),(136,'E',2,2,NULL,NULL),(137,'E',3,2,NULL,NULL),(138,'E',4,2,NULL,NULL),(139,'E',5,2,NULL,NULL),(140,'E',6,2,NULL,NULL),(141,'E',7,2,NULL,NULL),(142,'E',8,2,NULL,NULL),(143,'E',9,2,NULL,NULL),(144,'E',10,2,NULL,NULL),(145,'F',1,2,NULL,NULL),(146,'F',2,2,NULL,NULL),(147,'F',3,2,NULL,NULL),(148,'F',4,2,NULL,NULL),(149,'F',5,2,NULL,NULL),(150,'F',6,2,NULL,NULL),(151,'F',7,2,NULL,NULL),(152,'F',8,2,NULL,NULL),(153,'F',9,2,NULL,NULL),(154,'F',10,2,NULL,NULL),(155,'G',1,2,NULL,NULL),(156,'G',2,2,NULL,NULL),(157,'G',3,2,NULL,NULL),(158,'G',4,2,NULL,NULL),(159,'G',5,2,NULL,NULL),(160,'G',6,2,NULL,NULL),(161,'G',7,2,NULL,NULL),(162,'G',8,2,NULL,NULL),(163,'G',9,2,NULL,NULL),(164,'G',10,2,NULL,NULL),(165,'A',1,3,NULL,NULL),(166,'A',2,3,NULL,NULL),(167,'A',3,3,NULL,NULL),(168,'A',4,3,NULL,NULL),(169,'A',5,3,NULL,NULL),(170,'A',6,3,NULL,NULL),(171,'A',7,3,NULL,NULL),(172,'A',8,3,NULL,NULL),(173,'A',9,3,NULL,NULL),(174,'A',10,3,NULL,NULL),(175,'B',1,3,NULL,NULL),(176,'B',2,3,NULL,NULL),(177,'B',3,3,NULL,NULL),(178,'B',4,3,NULL,NULL),(179,'B',5,3,NULL,NULL),(180,'B',6,3,NULL,NULL),(181,'B',7,3,NULL,NULL),(182,'B',8,3,NULL,NULL),(183,'B',9,3,NULL,NULL),(184,'B',10,3,NULL,NULL);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `screening_id` bigint unsigned NOT NULL,
  `seat_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_screening_id_foreign` (`screening_id`),
  KEY `tickets_seat_id_foreign` (`seat_id`),
  KEY `tickets_user_id_foreign` (`user_id`),
  CONSTRAINT `tickets_screening_id_foreign` FOREIGN KEY (`screening_id`) REFERENCES `screenings` (`id`),
  CONSTRAINT `tickets_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (17,1,5,NULL,NULL,1),(18,1,6,NULL,NULL,1),(19,1,7,NULL,NULL,1),(20,1,8,NULL,NULL,1),(21,1,9,NULL,NULL,1),(22,1,10,NULL,NULL,1),(23,1,11,NULL,NULL,1),(24,1,12,NULL,NULL,1),(25,1,13,NULL,NULL,1),(26,1,14,NULL,NULL,1),(27,1,15,NULL,NULL,1),(28,1,16,NULL,NULL,1),(29,1,17,NULL,NULL,1),(30,1,18,NULL,NULL,1),(31,1,19,NULL,NULL,1),(32,1,20,NULL,NULL,1),(33,1,21,NULL,NULL,1),(34,1,22,NULL,NULL,1),(35,1,23,NULL,NULL,1);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyên','nguyen@email.com',NULL,'$2y$10$CMmcMPIR7HBzAUG9C1RKc.J6YEuzA4NBm9Bt/w2369R74DR.frUia',NULL,0,'2021-04-14 01:56:22','2021-04-14 01:56:22'),(2,'Mai Xuân Hiếu','hieu@email.com',NULL,'$2y$10$4BeggXH91Dl7tsjyLP3BU.DCF6o7FeBGvRwmP.alO0iyBd54rq38e',NULL,1,'2021-04-15 02:12:32','2021-04-15 02:12:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19  1:26:48
