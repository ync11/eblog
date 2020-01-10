/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : eblog

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 10/01/2020 16:56:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_01_10_055933_create_posts_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `published_at` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_slug_unique`(`slug`) USING BTREE,
  INDEX `posts_published_at_index`(`published_at`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'itaque-itaque-repudiandae-sit-voluptatibus-voluptatem', 'Itaque itaque repudiandae sit voluptatibus voluptatem.', 'Aut occaecati qui impedit dolorem. Asperiores quasi ullam nulla voluptatum et omnis. Provident similique minus et consequatur velit distinctio. Quibusdam consequatur ullam et in id sunt debitis est. Omnis beatae maiores aut et non et.\n\nIure aspernatur et qui adipisci. Molestiae recusandae laboriosam natus quia delectus ut et molestias.\n\nProvident enim voluptas voluptatibus eos necessitatibus est. Facilis aut aut non enim corrupti. Perferendis laborum temporibus aut qui nulla optio hic repellat.\n\nRepudiandae magnam ut soluta dolorum repudiandae nulla. Neque cumque deleniti repellat eos quod et odio. Est qui ut sint dicta sapiente est. Quo consequatur cumque autem non ut.\n\nCorrupti sint omnis ipsam repudiandae. Fuga nihil earum temporibus culpa. Nam vel odit ipsam veniam et maxime distinctio. Rerum numquam et est ut eos.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2020-01-02 07:24:03');
INSERT INTO `posts` VALUES (2, 'sed-sit-suscipit-est-temporibus-facere-atque-veritatis', 'Sed sit suscipit est temporibus facere atque veritatis.', 'Doloremque quia nihil vel et veniam a rerum. Fugit ratione quod mollitia in voluptatibus sed. Corporis repellendus accusamus et neque natus. Fugiat culpa veniam dolorem aperiam. Recusandae voluptas qui eligendi excepturi sit quia.\n\nError iure vero nemo adipisci repellat doloremque. Eaque ex veniam veritatis officia aut distinctio pariatur. Qui delectus quia neque dolore.\n\nEos veniam nihil eum blanditiis veniam. Velit dolor numquam minus corporis velit repudiandae tempore debitis.\n\nSit ullam sunt voluptatem. Quo dolor qui qui nisi. Nesciunt consequatur est saepe.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-13 08:16:27');
INSERT INTO `posts` VALUES (3, 'consectetur-magni-placeat-quaerat-atque-atque-porro-nemo-sit-qui-quasi-voluptas', 'Consectetur magni placeat quaerat atque atque porro nemo sit qui quasi voluptas.', 'Voluptas aut praesentium reiciendis ea blanditiis corporis. Et magnam ea iure debitis ut reprehenderit. Optio aut et quia rem necessitatibus veritatis accusamus tenetur. Rerum est aut doloribus consequatur quis commodi omnis.\n\nProvident sint et ut qui rem. Ad labore officiis magni ex explicabo nisi nam incidunt. Earum ullam delectus omnis ut. Minima assumenda non qui eum non.\n\nFuga dicta aut suscipit aut excepturi est eaque. Aut aliquid consequatur omnis sit laudantium beatae quam. Debitis cupiditate aut magni ut est ut. Omnis numquam repellendus et eum architecto.\n\nFacilis nihil dolores veritatis distinctio maiores. Perspiciatis consequatur enim aut deleniti omnis. Repellat in nihil repellat quidem quis ut. Ullam dolores illum aut sed alias.\n\nEt assumenda dolorem quos quia. Qui iusto voluptatem doloremque pariatur omnis sunt quod.\n\nMaxime et vero magni adipisci. Voluptates vel ab aut quidem distinctio consequatur. Eius repellendus ut minima ducimus rerum dolorem. Dignissimos sapiente ratione nemo.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-20 13:40:18');
INSERT INTO `posts` VALUES (4, 'vel-consequuntur-repudiandae-tempore-eos-ut', 'Vel consequuntur repudiandae tempore eos ut.', 'Iste sunt quis omnis corrupti et possimus. Aut magnam aut placeat eaque ab voluptate excepturi et. Minima eius quibusdam quia eos cumque qui modi.\n\nQuam aliquam quis qui consequatur est. Itaque tempora numquam voluptatibus aliquam est sapiente. Eaque magnam vel in odit.\n\nPariatur enim ut eligendi aliquam consequatur similique dolore cupiditate. Qui nobis occaecati voluptatibus temporibus qui qui. Ea quia dolorem accusantium quia est consectetur. Qui autem architecto provident non aut perspiciatis voluptate. Laborum rerum sequi laboriosam voluptatibus cupiditate velit.\n\nEveniet nisi reprehenderit corrupti quaerat perspiciatis distinctio. Nisi at reiciendis aut fugit. Voluptatem et quod voluptas voluptates.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-15 06:03:15');
INSERT INTO `posts` VALUES (5, 'aliquid-qui-ut-provident-iusto-rerum-sint-incidunt-eveniet-consequatur-fugit-aperiam-perspiciatis-corporis', 'Aliquid qui ut provident iusto rerum sint incidunt eveniet consequatur fugit aperiam perspiciatis corporis.', 'Quam deleniti asperiores nisi qui sit ut delectus. Aperiam modi recusandae quaerat vero suscipit voluptate eveniet. Doloremque eos atque eligendi qui. Et aliquid consectetur numquam molestiae.\n\nAutem ut ducimus amet optio omnis sed facere. Rerum ducimus numquam voluptas similique quidem corporis. Repellendus sint dolore officia expedita. Culpa illum accusantium dicta ut magnam doloremque.\n\nEst blanditiis et delectus iure rem temporibus laboriosam. Velit iusto animi aspernatur sequi aliquid. Quaerat eligendi in nulla repellendus.\n\nBlanditiis quibusdam explicabo sint quia ad. Molestiae nisi dolorum labore excepturi et quis. Cumque voluptates similique assumenda enim quos ea voluptatibus.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-29 15:12:59');
INSERT INTO `posts` VALUES (6, 'consequuntur-in-sequi-maiores-asperiores-est-doloremque-et-dolores-aspernatur-et', 'Consequuntur in sequi maiores asperiores est doloremque et dolores aspernatur et.', 'Sapiente possimus iste officiis. Ut et quod nisi minus iure voluptate qui. Sunt autem nihil sunt sint molestias rem deleniti. Qui et esse placeat eos.\n\nQui accusantium numquam vitae repellat. Totam omnis quis placeat ut molestiae. Quibusdam rerum nobis provident quas asperiores nisi. Hic nobis aut tempore eveniet nemo voluptate. Cumque voluptatum sed incidunt laborum dolorum rerum.\n\nHarum qui voluptatibus nesciunt expedita est quaerat et repellat. Dolorem veritatis repudiandae ducimus quas reprehenderit. Rerum quam tempora nam aut consequuntur et. Sit et quis et et.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-19 02:20:44');
INSERT INTO `posts` VALUES (7, 'quia-modi-nihil', 'Quia modi nihil.', 'Id non unde similique dicta ratione quasi aut. Accusantium dolores qui aut accusamus. Eos quas nisi aut est qui. Dolorum voluptatibus nesciunt et dolore dolor ipsa.\n\nCorrupti qui aut perspiciatis enim dignissimos ab. Provident libero sint reprehenderit id. Quae maiores aut provident facere. Quia culpa aperiam soluta sint ab fuga officiis est. Et labore beatae voluptas praesentium ut tempore.\n\nPraesentium voluptatem omnis eos sapiente pariatur. Laboriosam rerum qui qui. Nostrum eum quia voluptatum nulla sint.\n\nEnim laborum deleniti voluptatem numquam. Maxime dolorem incidunt voluptas dolores impedit. Alias doloremque non non perferendis.\n\nRerum atque magnam pariatur nostrum dolor. Inventore iste est non id itaque. Dolorum nostrum vero repellat voluptatum at.\n\nQuasi eaque eos voluptates excepturi qui. Qui consequatur maiores nobis harum non. Voluptatibus quae iure alias.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-16 20:44:03');
INSERT INTO `posts` VALUES (8, 'qui-consequatur-recusandae-consequatur-repudiandae-excepturi-ad-atque', 'Qui consequatur recusandae consequatur repudiandae excepturi ad atque.', 'Ullam eveniet aut tempora. Expedita commodi sequi quia est beatae ipsum. Placeat tempora saepe ad maiores aut est.\n\nEt rerum eveniet ipsa facere consequatur aut ut. Fugit delectus qui voluptates ea vero. Cumque facilis sit beatae provident corporis et reiciendis tempore. Esse a tenetur alias repudiandae non ut.\n\nHarum maxime quidem vero eligendi. Magnam laudantium quas dolores commodi. Molestias cum doloremque nemo ab doloremque harum.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-20 10:56:02');
INSERT INTO `posts` VALUES (9, 'quia-maxime-repudiandae-voluptas', 'Quia maxime repudiandae voluptas.', 'Est nisi et recusandae fugit veritatis numquam id. Harum mollitia qui tempora voluptatem eveniet vero possimus. Voluptatem omnis in odio distinctio.\n\nAnimi est vel quo expedita ducimus sequi. Quasi nostrum quo nihil voluptas omnis. Deserunt laudantium consequuntur ab sapiente ipsa.\n\nQuis unde sit aut non odit recusandae. Et aut consectetur itaque consequatur laudantium rem. Corporis et incidunt est fugit minima amet. Harum nesciunt eveniet neque possimus.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-27 20:09:40');
INSERT INTO `posts` VALUES (10, 'ut-quidem-minima-qui-repellendus-aut-voluptatem', 'Ut quidem minima qui repellendus aut voluptatem.', 'Vel occaecati ut maxime quia praesentium quis eum. Hic ullam quis qui qui architecto eos ut. Et quis quos aliquid hic aperiam et autem.\n\nEt corrupti quia et labore. Quia itaque eaque in a. Non quae corporis fugit consequatur velit exercitationem.\n\nQuidem laborum quos harum architecto. Omnis eum molestiae est occaecati rerum vel. Minus rerum aut et sapiente excepturi.\n\nEum accusamus iusto aut vel et tenetur. Fugit nemo dolor ipsa omnis ex reiciendis delectus. Rerum commodi mollitia sit in quisquam et voluptas. Sed ut ut ut reprehenderit ipsum at adipisci.\n\nVelit dolorum aliquam perferendis cumque placeat magnam. Autem sint ut qui doloremque molestiae laboriosam corrupti. Voluptas dolorum accusantium modi fugiat earum. Rerum temporibus laborum id ut libero distinctio.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2020-01-04 02:10:43');
INSERT INTO `posts` VALUES (11, 'est-at-doloremque-totam-quia-pariatur-voluptatem-culpa-amet-in-omnis-voluptatem-qui', 'Est at doloremque totam quia pariatur voluptatem culpa amet in omnis voluptatem qui.', 'Pariatur dolorem doloremque deleniti voluptatibus. Et quasi vel praesentium eveniet magnam beatae dolorum. Minus asperiores nisi et deleniti. Est ex dolor velit magni non.\n\nPossimus qui facilis et et unde et rerum. Mollitia quo vel consequatur ipsum et.\n\nVelit itaque saepe aliquid facere veritatis quia minus. Architecto occaecati omnis quos dolorem autem. Harum debitis vero veritatis qui laboriosam sed. Quis ullam expedita pariatur facere ut laborum molestiae.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-13 08:36:57');
INSERT INTO `posts` VALUES (12, 'non-blanditiis-aliquam-enim-voluptatem-voluptas-maxime', 'Non blanditiis aliquam enim voluptatem voluptas maxime.', 'Porro est aut eveniet tenetur et. Vero quae sint voluptatem commodi unde dolores. Consequatur aliquam blanditiis sit enim voluptatibus.\n\nIllum molestiae iure delectus delectus atque laudantium. Necessitatibus neque qui quia qui.\n\nQuis id labore sapiente libero dolor et rerum. Temporibus vero tempora sed. Voluptatibus vel ut est eius. Ipsa itaque praesentium labore.\n\nAut molestias voluptas nesciunt nam consequatur dolorem. Tempore ullam dolorum unde tempore pariatur. Saepe sunt magni enim ad ab voluptatem consequatur. Nulla et ut soluta eos tempora.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-12 10:11:47');
INSERT INTO `posts` VALUES (13, 'dicta-aut-esse-eum-eum', 'Dicta aut esse eum eum.', 'Id consequatur quo sit quasi. Soluta laudantium odit rerum sunt. Quis quidem recusandae quia quia nihil molestias.\n\nDistinctio error earum voluptatum quo dicta. Error vitae temporibus minima. Totam ipsa qui fugit delectus et.\n\nDeleniti in mollitia eum tenetur unde voluptatem consectetur. Ea et deserunt omnis nam. At sequi nesciunt et.\n\nCupiditate voluptas ut ducimus quasi doloribus laborum. Fugiat omnis et minus itaque. Qui illo consequatur voluptatibus aut. Sed aut nostrum recusandae ut.\n\nDistinctio voluptas et incidunt modi. Odio ea et est atque est. Adipisci vel eveniet debitis autem ipsam non aut.\n\nUnde vel deserunt excepturi voluptas quia. Qui sit omnis quas voluptas enim at ipsum nisi. Qui qui dolorem vero vel voluptatem fugiat. Aut qui occaecati doloribus voluptatem voluptatum nihil.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-23 04:41:08');
INSERT INTO `posts` VALUES (14, 'sed-et-et-dolor-molestiae-et-ut-et-inventore-nobis-aperiam-voluptas', 'Sed et et dolor molestiae et ut et inventore nobis aperiam voluptas.', 'Aliquam debitis quia id earum neque beatae. Enim doloribus blanditiis libero sit animi iste. Dolores qui temporibus sequi.\n\nConsectetur ut nihil autem praesentium ullam cupiditate. Et quas cumque exercitationem consequatur commodi. Iusto harum beatae aliquam qui vel. Assumenda maxime exercitationem dolorum et nesciunt.\n\nHarum facere non est. Praesentium mollitia similique amet. Accusamus temporibus veritatis occaecati quam culpa esse. Dolorem consequuntur suscipit adipisci eligendi eaque distinctio. Quos tempora nisi eveniet.\n\nAdipisci asperiores explicabo quo deleniti omnis voluptatem dicta. Accusamus sit sunt in exercitationem. Ea voluptas molestias dolores in quam rerum eum. Asperiores exercitationem dolor ut provident.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2020-01-06 20:15:42');
INSERT INTO `posts` VALUES (15, 'sed-natus-aut', 'Sed natus aut.', 'Ducimus eligendi perferendis doloremque voluptatibus repellendus a est corrupti. Autem ut quia provident vel. Dignissimos maxime est ratione modi recusandae. Libero rerum ad est et corporis provident.\n\nQui aspernatur et ut. Amet voluptates eius nihil ipsa et veritatis. Facere dolores tempora dolore eum quam animi non.\n\nPossimus aut ut cumque dolorum ut harum exercitationem. Iste est nam aliquid id consequuntur dolorem rerum. Quia ipsum nobis voluptatem qui ipsa.\n\nDebitis ut fugit maxime qui atque ea quia. Qui est dolor rerum minima. Odio assumenda rerum sed voluptatum.\n\nAd consequatur eveniet quidem aliquid. Sunt nulla non voluptatem esse fugit fuga sed. Iste earum illo atque assumenda nihil maiores soluta.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2020-01-02 05:18:05');
INSERT INTO `posts` VALUES (16, 'odit-numquam-mollitia', 'Odit numquam mollitia.', 'Aliquid ut inventore voluptas voluptas aspernatur. Est labore voluptate molestiae minus commodi. Officia alias eaque molestias eum consequatur cumque repellat omnis.\n\nOfficiis vel optio voluptatem architecto sequi consequuntur occaecati. Qui perferendis et illum assumenda minus error iusto non. Nulla illo beatae voluptatem aut.\n\nVoluptas quae architecto sed magnam iste. Reprehenderit adipisci quo officia sit. Reprehenderit aut sunt quos modi quas.\n\nNumquam placeat adipisci nostrum et. Recusandae adipisci dolorem deleniti ut. Quia quisquam saepe voluptas ducimus eum sunt. Consequatur aut corporis rem vel assumenda id enim.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-10 15:52:11');
INSERT INTO `posts` VALUES (17, 'repellat-dolorum-enim-repellat-quis-illum-voluptas', 'Repellat dolorum enim repellat quis illum voluptas.', 'Deserunt nostrum quae voluptas cumque aspernatur impedit iusto. Modi necessitatibus ex sit voluptatem aut laudantium assumenda. Voluptatem qui beatae omnis molestias ab aut. Ut eos ex eligendi et.\n\nRem dolorem ratione ad expedita voluptatem natus. Eligendi velit ea id eaque qui ipsum voluptatem.\n\nAut aut debitis necessitatibus modi alias. Delectus omnis eos minus molestiae vel. Consequatur ducimus voluptas similique id labore. Fuga neque quia recusandae magnam est et.\n\nQuos corporis facilis officia cum. Expedita suscipit quidem qui in unde molestiae nihil magni. Dolores pariatur repudiandae aut perferendis. Voluptatem incidunt vel velit deserunt. Vitae fugit eum rerum accusamus modi doloribus molestiae.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-28 01:33:00');
INSERT INTO `posts` VALUES (18, 'doloremque-nihil-molestias-quo-voluptates-autem-culpa', 'Doloremque nihil molestias quo voluptates autem culpa.', 'Aut rerum officiis in perferendis veniam. Adipisci rerum officia corporis molestiae et et. Voluptate aut minima quae quam.\n\nOdio sed consequuntur voluptatem veniam. Unde in aut officia fugiat voluptatem doloremque laboriosam. Non nihil necessitatibus iusto qui aut officiis sint. Non placeat aut deserunt a cupiditate.\n\nDolor atque et ipsam officiis rerum neque. Autem explicabo sed ut beatae dolorum. Delectus reiciendis aut ut veritatis quia accusamus.\n\nNisi quia consequatur maiores culpa nesciunt. Ut dolorum minima suscipit adipisci quis. Dolorum debitis in in atque aliquam rerum. Sint ut ut unde consequatur vel numquam.\n\nEt enim numquam quisquam dolor expedita qui. Nihil debitis nihil aspernatur ut dolores commodi. Aspernatur neque rerum nemo corrupti quia quia.\n\nMinus totam maiores totam sunt quas rerum excepturi. Incidunt doloremque aut non qui in eaque sit. Expedita nesciunt ad veritatis illum in qui. Nam autem nisi in voluptas corrupti aut voluptatem aut.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-15 03:31:55');
INSERT INTO `posts` VALUES (19, 'rerum-veritatis-voluptatem-molestias-nihil-dolores-eveniet-architecto-quis-ipsa', 'Rerum veritatis voluptatem molestias nihil dolores eveniet architecto quis ipsa.', 'Vitae et labore aut quae in iusto et. Amet at eos libero. Neque maiores et tenetur minus.\n\nQuia incidunt quidem dolorem deserunt dolores quia sint molestias. Non dolor eum dolorem rerum. Perspiciatis ut eaque deleniti est. Excepturi qui laboriosam ut aspernatur voluptate optio.\n\nQuisquam aliquid quo illo ut distinctio. Veniam soluta sint non et.\n\nVoluptates doloribus est reiciendis ab natus ab placeat in. Doloremque sequi omnis ipsum occaecati. Quia assumenda at debitis sed. Mollitia perferendis magni animi ex. Qui enim hic voluptas numquam.\n\nVoluptates et voluptas sunt delectus sit exercitationem. Nobis aut magnam minus eos quisquam. Impedit ipsa assumenda quasi repellendus doloribus eos.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2020-01-07 03:23:00');
INSERT INTO `posts` VALUES (20, 'dolore-reiciendis-doloribus-consequatur-eveniet-ut-id-nihil-omnis-laboriosam-doloribus-aut', 'Dolore reiciendis doloribus consequatur eveniet ut id nihil omnis laboriosam doloribus aut.', 'Eaque in incidunt facilis neque doloribus. Perferendis iste corrupti consectetur at. Qui ut et asperiores repellendus vel incidunt et. Excepturi voluptas quis est voluptate iusto.\n\nIllo non et voluptas id fugiat illo. Cupiditate ducimus quidem dolor nihil et praesentium natus. Voluptatem neque facere dolor voluptates ab.\n\nSit ullam iste quaerat veritatis saepe. Sed enim nihil in. Ad autem autem sunt dignissimos natus.\n\nSint illum beatae fugiat quia. Est aut eaque nobis adipisci.\n\nHic perspiciatis repellendus deserunt asperiores et quo. Aut et sint facilis consectetur. Nemo qui in officiis ut rerum. Blanditiis ut minima eos veniam nostrum ut aut.', '2020-01-10 06:41:15', '2020-01-10 06:41:15', '2019-12-11 20:59:40');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
