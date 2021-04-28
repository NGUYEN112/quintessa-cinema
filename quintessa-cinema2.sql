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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `durations` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `status` int NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_price` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Đại Úy Marvel','Captain Marvel','images/Captain_Marvel.jpeg','Marvel Studios','Hành động, Siêu anh hùng','Anna Boden','Brie Larson , Gemma Chan, Samuel L. Jackson, Jude Law, Lee Pace',119,'2019-03-20',1,'<iframe width=\"773\" height=\"435\" src=\"https://www.youtube.com/embed/0LHxvxdRnYc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Không chỉ từng là một người người lính thuộc quân đội Mỹ, Carol Denvers còn chính là Captain Marvel. Liệu bộ phim đầu tiên về nữ chiến binh đầy quyền uy và sức mạnh của vũ trụ điện ảnh Marvel có đáp ứng được mong đợi của khán giả?\n        Là phim riêng đầu tiên làm về một nữ siêu anh hùng, Captain Marvel gánh trên vai trọng trách khá nặng nề phải vượt qua đối trọng Wonder Woman, cũng như áp lực khi Aquaman của đối thủ DCEU vừa phá mốc tỷ đô . Áp lực đó thuộc về nữ diễn viên chính Brie Larson. Brie đã phải tập luyện suốt nhiều tháng ròng rã để đạt yêu cầu cơ bắp của nhân vật.\n       Carol Danvers là một phi công của lực lượng Không quân Hoa Kỳ. Sau một vụ tai nạn, cô được người ngoài hành tinh Kree đưa về cứu chữa. Tại đây, DNA của Carol đã được kết hợp với DNA của người Kree, từ đó giúp cô trở nên siêu khỏe, siêu nhanh.\n       Từ đây, Captain Marvel - siêu anh hùng mạnh mẽ nhất vũ trụ ra đời. Mặt khác cùng lúc đó, trận chiến khốc liệt giữa tộc Kree và Skrull đã lan rộng và có những tác động tiêu cực ra toàn cầu, trong đấy có Trái Đất. Liệu hành trình trở thành siêu anh hùng của Carol Danvers sẽ diễn ra như thế nào?\n       Lấy bối cảnh thập niên 90, Captain Marvel còn có sự góp mặt của những cái tên quen thuộc với vũ trụ điện ảnh Marvel như Samuel L. Jackson - ngài Nick Fury thuở còn chưa chột mắt, Clark Gregg - đặc vụ Couson ngày trẻ và đặc biệt là kẻ đã bị Đội vệ binh dải ngân hà \"xóa sổ\" - Ronan do Lee Pace thể hiện.\n       Captain Marvel sẽ chính thức phá đảo màn ảnh rộng tại các rạp chiếu phim toàn cầu từ 8.3.2019. Trước đó, khán giả có thể xem suất chiếu sớm từ 19h00- 7.3.2019.',70000,NULL,'2021-04-14 02:08:25','2021-04-14 02:08:25'),(2,'AVENGERS: HỒI KẾT','AVENGERS: ENDGAME','images/EndGame.jpg','Walt Disney Studios Motion Pictures','Hành Động, Giả Tưởng','Anthony Russo, Joe Russo','Robert Downey Jr., Chris Hemsworth, Chris Evans, Scarlett Johansson, Mark Ruffalo, Jeremy Renner',213,'2019-04-26',0,'<iframe width=\"773\" height=\"435\" src=\"https://www.youtube.com/embed/TcMBFSGVi1c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Cú búng tay của Thanos đã khiến toàn bộ dân số biến mất một nửa. Các siêu anh hùng đánh mất bạn bè, người thân và đánh mất cả chính mình. Bộ 6 Avengers đầu tiên tứ tán. Họ phải làm gì để cứu vãn mọi chuyện? Câu trả lời sẽ có trong Avengers: Endgame.\n        Là siêu phẩm được trông đợi nhất 2019, Avengers: Endgame đã khiến toàn cầu xôn xao khi tung trailer vào 07.12.2018. Chỉ trong vòng 24 giờ, trailer nhận được gần 300 triệu lượt xem và trở thành trailer có lượt xem cao nhất mọi thời đại.',95000,NULL,'2021-04-14 02:11:31','2021-04-14 02:11:31'),(3,'HAI PHƯỢNG','FURIE','images/Hai_Phuong.jpg','Studio68   ','Hành động, Võ thuật','Lê Văn Kiệt','Ngô Thanh Vân, Phạm Anh Khoa',98,'2019-03-02',1,'<iframe width=\"653\" height=\"370\" src=\"https://www.youtube.com/embed/AsZj4AFPfcE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Hai Phượng kể về cuộc hành trình đầy gay cấn và gian của khi người mẹ vùng quê tìm cách cứu con mình thoát khỏi đường dây bắt cóc khổng lồ. Không tấc sắc trong tay, người phụ nữ thân cô thế cô làm sao chống lại bọn xã hội đen tàn ác để giành lại nguồn sống của đời mình?\n \n      Hai Phượng do \"đả nữ\" Ngô Thanh Vân thủ vai chính sẽ ra rạp vào 22.02.2019.',60000,NULL,'2021-04-14 19:10:07','2021-04-14 19:10:07'),(4,'CoCo','COCO','images/coco.jpg','Pixar','Hoạt hình, giả tưởng, phim ca nhạc, phiêu lưu','Adrian Molina, Lee Unkrich',' Anthony Gonzalez, Gael García Bernal, Benjamin Bratt',110,'2017-11-22',1,'<iframe width=\"832\" height=\"348\" src=\"https://www.youtube.com/embed/Ga6RYejo6Hk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Miguel biện luận với bà Elena của mình và bỏ đi để tham gia một chương trình tài năng trong Ngày lễ dành cho người đã khuất. Cậu bước vào lăng mộ của Ernesto và ăn cắp cây guitar của ông để sử dụng trong chương trình tài năng, nhưng bất ngờ cậu trở nên vô hình đối với tất cả mọi người trong làng. Tuy nhiên, cậu lại có thể nhìn thấy và được nhìn thấy bởi con chó Xoloitzcuintli của mình, Dante và những người thân đã qua đời của cậu (chỉ còn trong hình dạng bộ xương người) - họ đến từ Vùng đất của người chết và đang trên đường tới thăm gia đình trong ngày lễ. Gặp cậu ở đó, họ nhận ra rằng Imelda không thể đến thăm gia đình vì Miguel đã tháo bức ảnh của cô ấy ra khỏi khung kính trên bàn thờ. Miguel khám phá ra rằng cậu bé đã bị nguyền rủa vì ăn cắp đồ vật của người đã mất, cậu phải trở về Vùng đất của người còn sống trước khi mặt trời mọc nếu không cậu sẽ trở thành một trong số những người chết. Để làm được như vậy, cậu phải được ban phước lành từ một thành viên trong gia đình của mình bằng cách sử dụng hoa cúc Aztec vì cánh hoa có thể đẩy lùi lời nguyền cho tội ăn cắp chiếc guitar của Ernesto. Imelda ban phước cho Miguel nhưng với điều kiện là cậu phải từ bỏ mọi hoạt động âm nhạc khi cậu trở về Vùng đất của người còn sống; Miguel từ chối và cố gắng tìm kiếm sự trợ giúp của Ernesto.\n\n      Miguel chạm trán với Héctor, bộ xương của một người từng hợp tác với Ernesto và đề nghị giúp Miguel tiếp cận ông ấy. Đổi lại, Héctor yêu cầu Miguel đưa bức ảnh của mình trở về Vùng đất của người còn sống để ông có thể thăm con gái mình trước khi cô lãng quên ông nếu không ông sẽ biến mất hoàn toàn. Phát hiện ra Miguel nói dối rằng cậu không có ai là người thân ngoại trừ Ernesto, Héctor cố gắng trả lại Miguel cho người thân của mình, nhưng Miguel thoát ra và thâm nhập vào tòa biệt thự của Ernesto. Ernesto chào đón Miguel nồng nhiệt khi biết cậu là chắt của ông, nhưng Héctor gặp được họ, van xin Miguel dựng lại bức ảnh của ông. Héctor sớm nhận ra rằng Ernesto chính là người đã giết và lấy trộm các bài hát mà mình đã viết, sử dụng chúng như là của hắn ta để trở nên nổi tiếng. Ernesto đánh cắp bức ảnh của Héctor và đem Héctor cùng Miguel ném vào hố sâu.\n      \n      Miguel nhận ra rằng Héctor mới là ông sơ của cậu và bà cố Coco chính là con gái của ông, người duy nhất còn sống vẫn còn nhớ ông. Với sự giúp đỡ của chú chó Dante - là một thần thú dẫn lối linh hồn khi ở thế giới của người chết - những thành viên quá cố của gia đình Riveras đã tìm và giải cứu cho họ. Miguel tiết lộ rằng Héctor đã từng quyết định trở về nhà với Coco nhưng chưa kịp thực hiện thì đã bị giết, Imelda hiểu ra và hoà giải với Héctor. Họ thâm nhập vào buổi hòa nhạc Mặt trời mọc của Ernesto để lấy bức ảnh của Héctor từ Ernesto và phơi bày những hành động sai trái của hắn ta. Ernesto bị nghiền nát bởi một chiếc chuông nhà thờ rơi xuống - giống như cái cách mà hắn bị chết trong cuộc đời trước, nhưng bức ảnh rơi xuống nước và biến mất.\n      \n      Khi mặt trời mọc, Héctor đang có nguy cơ bị lãng quên và biến mất. Imelda ban phước lành cho Miguel vô điều kiện để cậu có thể trở lại Vùng đất của người còn sống và chơi bản nhạc mà Héctor đã sáng tác cho riêng Coco. Điều này làm cho bà ấy tỉnh táo và nhớ về cha mình, bà đưa cho Miguel mẩu ảnh của Héctor bị rách khỏi bức ảnh, cho thấy khuôn mặt của Héctor. Elena hòa hợp với Miguel, chấp nhận cả cậu và âm nhạc trở lại gia đình.\n      \n      Một năm sau, Miguel tự hào trình bày về truyền thống gia đình - với một bức ảnh của Coco bây giờ đã chết - cho em gái mới sinh của mình. Các lá thư do Coco lưu giữ có bằng chứng cho thấy Ernesto đã đánh cắp âm nhạc của Héctor; kết quả là di sản của Ernesto bị phá hủy và công chúng tôn vinh Héctor ở vị trí xứng đáng. Ở Vùng đất của những người đã khuất, Héctor và Imelda cùng Coco trở về để thăm gia đình Rivera trong khi Miguel đang hát cho người thân, cả người đã chết và đang sống.',75000,NULL,'2021-04-14 19:16:55','2021-04-14 19:16:55'),(9,'Bố già','The God Father','images/thNAjAuPpTHV1y6mz6cKpq0ypUAJ8VQXaaHw5NFV.png','Trấn Thành Town, HKFilm và Galaxy Studio','Drama','Trấn Thành','Trấn thành',125,'2021-03-12',1,'<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/v9xKoGs6TnM\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Bố già là câu chuyện thường nhật về một gia đình ở một xóm lao động nghèo tại thành phố Hồ Chí Minh, ở đó có bộ tứ anh em Giàu, Sang, Phú, Quý. Ba Sang (Trấn Thành) là cha đơn thân, một mình nuôi hai con Quắn và Bù Tọt, trong đó đứa con trai đầu hơn 20 tuổi tên Quắn (Tuấn Trần) là một YouTuber kiếm tiền từ những lượt xem trên YouTube. Tính ông cần kiệm còn Quắn có phần bốc đồng, nông nổi, có thể mua chiếc quần hay đôi giày giá hơn 10 triệu đồng. Ông hay bao đồng, thường can thiệp vào chuyện láng giềng và cố gắng giúp đỡ tất cả mọi người xung quanh, còn Quắn thì cho rằng mỗi người có một cuộc sống riêng. Dù yêu thương nhau nhưng khoảng cách giữa các thế hệ đã dẫn đến những mâu thuẫn cha con nảy sinh.',45000,NULL,'2021-04-23 01:13:55','2021-04-23 01:13:55'),(10,'Fast & Furious 9: Huyền Thoại Tốc Độ','FAST & FURIOUS 9','images/bF6ez3Kl6lll2MZ09w8cA5aJbF9Sw4to9BO3Ky1k.jpg','Original Film, One Race Films, Roth/Kirschenbaum Films','Hành động','Justin Lin','Vin Diesel, John Cena, Michelle Rodriguez, Tyrese Gibson, Chris \"Ludacris\" Bridges, Jordana Brewster, Nathalie Emmanuel, Sung Kang, Helen Mirren, Charlize Theron',145,'2021-05-28',0,'<iframe width=\"660\" height=\"371\" src=\"https://www.youtube.com/embed/SwwlFvOwkhA\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','Sau sự kiện The Fate of the Furious (2017), Dominic Toretto và gia đình anh phải đối mặt với em trai của Dominic là Jakob, một sát thủ chết người, đang làm việc với kẻ thù cũ của họ, Cipher và là kẻ có tư thù với Dominic.',55000,NULL,'2021-04-23 01:31:58','2021-04-23 01:31:58');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2021_04_14_070909_create_films_table',1),(4,'2021_04_14_072256_create_newsfeed_table',1),(5,'2021_04_14_072617_create_cinemas_table',1),(6,'2021_04_14_072729_create_rooms_table',1),(7,'2021_04_14_073049_create_seats_table',1),(8,'2021_04_14_073259_create_screenings_table',1),(9,'2021_04_14_073620_create_tickets_table',1),(10,'2021_04_14_095203_add_column_to_screenings_table',2),(11,'2021_04_14_100247_add_column_to_tickets_table',3),(12,'2021_04_22_101848_create_orderdetail_table',4),(13,'2021_04_22_133444_add_column_to_tickets_table',5),(14,'2021_04_26_083357_add_column_to_tickets_table',6),(15,'2021_04_27_015139_add_column_to_users_table',7);
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
  `name_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeeds`
--

LOCK TABLES `newsfeeds` WRITE;
/*!40000 ALTER TABLE `newsfeeds` DISABLE KEYS */;
INSERT INTO `newsfeeds` VALUES (5,'quy-1','2021-04-24','https://www.bhdstar.vn/wp-content/uploads/2021/03/BHD-Website-Banner-1920x1080-01.png',NULL,NULL),(6,'quy-1','2021-04-24','https://media.lottecinemavn.com/Media/MovieFile//MovieImg/202104/10726_105_100003.jpg',NULL,NULL),(7,'quy-1','2021-04-24','https://media.lottecinemavn.com/Media/MovieFile//MovieImg/202104/10721_105_100001.jpg',NULL,NULL),(8,'quy-1','2021-04-24','https://media.lottecinemavn.com/Media/MovieFile//MovieImg/202104/10453_105_100010.jpg',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenings`
--

LOCK TABLES `screenings` WRITE;
/*!40000 ALTER TABLE `screenings` DISABLE KEYS */;
INSERT INTO `screenings` VALUES (1,'2019-05-11','12:00:00',1,1,'2021-04-14 02:54:58','2021-04-14 02:54:58',1),(3,'2019-03-02','17:00:00',4,2,'2021-04-14 19:22:51','2021-04-14 19:22:51',1),(4,'2019-03-02','19:00:00',4,2,'2021-04-14 19:23:07','2021-04-14 19:23:07',1),(9,'2017-11-22','19:00:00',3,3,'2021-04-14 19:25:36','2021-04-14 19:25:36',1),(14,'2019-03-02','21:00:00',4,1,'2021-04-19 18:34:31','2021-04-24 00:48:45',2);
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
INSERT INTO `seats` VALUES (5,'A',1,1,NULL,NULL),(6,'A',2,1,NULL,NULL),(7,'A',3,1,NULL,NULL),(8,'A',4,1,NULL,NULL),(9,'A',5,1,NULL,NULL),(10,'A',6,1,NULL,NULL),(11,'A',7,1,NULL,NULL),(12,'A',8,1,NULL,NULL),(13,'A',9,1,NULL,NULL),(14,'A',10,1,NULL,NULL),(15,'B',1,1,NULL,NULL),(16,'B',2,1,NULL,NULL),(17,'B',3,1,NULL,NULL),(18,'B',4,1,NULL,NULL),(19,'B',5,1,NULL,NULL),(20,'B',6,1,NULL,NULL),(21,'B',7,1,NULL,NULL),(22,'B',8,1,NULL,NULL),(23,'B',9,1,NULL,NULL),(24,'B',10,1,NULL,NULL),(45,'C',1,1,NULL,NULL),(46,'C',2,1,NULL,NULL),(47,'C',3,1,NULL,NULL),(48,'C',4,1,NULL,NULL),(49,'C',5,1,NULL,NULL),(50,'C',6,1,NULL,NULL),(51,'C',7,1,NULL,NULL),(52,'C',8,1,NULL,NULL),(53,'C',9,1,NULL,NULL),(54,'C',10,1,NULL,NULL),(55,'D',1,1,NULL,NULL),(56,'D',2,1,NULL,NULL),(57,'D',3,1,NULL,NULL),(58,'D',4,1,NULL,NULL),(59,'D',5,1,NULL,NULL),(60,'D',6,1,NULL,NULL),(61,'D',7,1,NULL,NULL),(62,'D',8,1,NULL,NULL),(63,'D',9,1,NULL,NULL),(64,'D',10,1,NULL,NULL),(75,'A',1,2,NULL,NULL),(76,'A',2,2,NULL,NULL),(77,'A',3,2,NULL,NULL),(78,'A',4,2,NULL,NULL),(79,'A',5,2,NULL,NULL),(80,'A',6,2,NULL,NULL),(81,'A',7,2,NULL,NULL),(82,'A',8,2,NULL,NULL),(83,'A',9,2,NULL,NULL),(84,'A',10,2,NULL,NULL),(105,'B',1,2,NULL,NULL),(106,'B',2,2,NULL,NULL),(107,'B',3,2,NULL,NULL),(108,'B',4,2,NULL,NULL),(109,'B',5,2,NULL,NULL),(110,'B',6,2,NULL,NULL),(111,'B',7,2,NULL,NULL),(112,'B',8,2,NULL,NULL),(113,'B',9,2,NULL,NULL),(114,'B',10,2,NULL,NULL),(115,'C',1,2,NULL,NULL),(116,'C',2,2,NULL,NULL),(117,'C',3,2,NULL,NULL),(118,'C',4,2,NULL,NULL),(119,'C',5,2,NULL,NULL),(120,'C',6,2,NULL,NULL),(121,'C',7,2,NULL,NULL),(122,'C',8,2,NULL,NULL),(123,'C',9,2,NULL,NULL),(124,'C',10,2,NULL,NULL),(125,'D',1,2,NULL,NULL),(126,'D',2,2,NULL,NULL),(127,'D',3,2,NULL,NULL),(128,'D',4,2,NULL,NULL),(129,'D',5,2,NULL,NULL),(130,'D',6,2,NULL,NULL),(131,'D',7,2,NULL,NULL),(132,'D',8,2,NULL,NULL),(133,'D',9,2,NULL,NULL),(134,'D',10,2,NULL,NULL),(135,'E',1,2,NULL,NULL),(136,'E',2,2,NULL,NULL),(137,'E',3,2,NULL,NULL),(138,'E',4,2,NULL,NULL),(139,'E',5,2,NULL,NULL),(140,'E',6,2,NULL,NULL),(141,'E',7,2,NULL,NULL),(142,'E',8,2,NULL,NULL),(143,'E',9,2,NULL,NULL),(144,'E',10,2,NULL,NULL),(145,'F',1,2,NULL,NULL),(146,'F',2,2,NULL,NULL),(147,'F',3,2,NULL,NULL),(148,'F',4,2,NULL,NULL),(149,'F',5,2,NULL,NULL),(150,'F',6,2,NULL,NULL),(151,'F',7,2,NULL,NULL),(152,'F',8,2,NULL,NULL),(153,'F',9,2,NULL,NULL),(154,'F',10,2,NULL,NULL),(155,'G',1,2,NULL,NULL),(156,'G',2,2,NULL,NULL),(157,'G',3,2,NULL,NULL),(158,'G',4,2,NULL,NULL),(159,'G',5,2,NULL,NULL),(160,'G',6,2,NULL,NULL),(161,'G',7,2,NULL,NULL),(162,'G',8,2,NULL,NULL),(163,'G',9,2,NULL,NULL),(164,'G',10,2,NULL,NULL),(165,'A',1,3,NULL,NULL),(166,'A',2,3,NULL,NULL),(167,'A',3,3,NULL,NULL),(168,'A',4,3,NULL,NULL),(169,'A',5,3,NULL,NULL),(170,'A',6,3,NULL,NULL),(171,'A',7,3,NULL,NULL),(172,'A',8,3,NULL,NULL),(173,'A',9,3,NULL,NULL),(174,'A',10,3,NULL,NULL),(175,'B',1,3,NULL,NULL),(176,'B',2,3,NULL,NULL),(177,'B',3,3,NULL,NULL),(178,'B',4,3,NULL,NULL),(179,'B',5,3,NULL,NULL),(180,'B',6,3,NULL,NULL),(181,'B',7,3,NULL,NULL),(182,'B',8,3,NULL,NULL),(183,'B',9,3,NULL,NULL),(184,'B',10,3,NULL,NULL);
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
  `user_id` bigint unsigned NOT NULL,
  `total_price` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `seat_id_UNIQUE` (`seat_id`),
  KEY `tickets_screening_id_foreign` (`screening_id`),
  KEY `tickets_user_id_foreign` (`user_id`),
  CONSTRAINT `tickets_screening_id_foreign` FOREIGN KEY (`screening_id`) REFERENCES `screenings` (`id`),
  CONSTRAINT `tickets_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`id`),
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (248,1,62,'2021-04-23 00:33:15','2021-04-23 00:33:15',2,70000),(249,1,21,'2021-04-23 00:35:06','2021-04-23 00:35:06',2,70000),(250,1,45,'2021-04-23 00:37:44','2021-04-23 00:37:44',2,70000),(251,1,46,'2021-04-23 00:37:44','2021-04-23 00:37:44',3,70000),(252,1,24,'2021-04-23 00:42:05','2021-04-23 00:42:05',3,70000),(253,9,8,'2021-04-26 02:52:31','2021-04-26 02:52:31',4,60000),(254,9,9,'2021-04-26 02:52:31','2021-04-26 02:52:31',4,60000),(255,9,10,'2021-04-26 02:52:31','2021-04-26 02:52:31',4,60000),(256,9,18,'2021-04-26 02:52:31','2021-04-26 02:52:31',4,60000),(257,9,19,'2021-04-26 02:52:31','2021-04-26 02:52:31',4,60000),(258,9,20,'2021-04-26 02:52:31','2021-04-26 02:52:31',4,60000),(261,3,50,'2021-04-26 03:01:21','2021-04-26 03:01:21',4,75000),(268,1,58,'2021-04-26 22:00:24','2021-04-26 22:00:24',4,70000),(269,1,59,'2021-04-26 22:00:24','2021-04-26 22:00:24',4,70000);
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
  `avatar` longtext COLLATE utf8mb4_unicode_ci,
  `point` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyên','nguyen@email.com',NULL,'$2y$10$CMmcMPIR7HBzAUG9C1RKc.J6YEuzA4NBm9Bt/w2369R74DR.frUia',NULL,0,'2021-04-14 01:56:22','2021-04-14 01:56:22','images/nguyen-avatar.jpg',0),(2,'Mai Xuân Hiếu','hieu@email.com',NULL,'$2y$10$4BeggXH91Dl7tsjyLP3BU.DCF6o7FeBGvRwmP.alO0iyBd54rq38e',NULL,1,'2021-04-15 02:12:32','2021-04-15 02:12:32','images/hieu-avatar.jpg',360),(3,'Tài Trần','tai@email.com',NULL,'$2y$10$8cMPF4ftFLYRK2OLqdnFTeB6/F4sIzVGkpYy33ngeqNyfIZMdOO5u',NULL,1,'2021-04-19 00:06:03','2021-04-19 00:06:03','images/tai-avatar.jpg',0),(4,'Nguyễn Văn Thộn','thon@email.com',NULL,'$2y$10$rxfSJFXm8V11eguMD3kHQOOv/RN0g5B3TGvlybYF0ez0sHbs8TsCW',NULL,1,NULL,NULL,'images/thon-avatar.jpg',435);
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

-- Dump completed on 2021-04-28  8:52:42
