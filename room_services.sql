-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 11:13 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `room_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_08_094829_create_town_ships_table', 1),
(18, '2019_11_22_081101_create_rooms_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `township_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avaliable_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `township_id`, `room_type`, `user_type`, `price`, `phone`, `address`, `facility`, `description`, `avaliable_date`, `created_at`, `updated_at`) VALUES
(1, 'ဒဂုံ', 'အဆောင်', 'အမျိုးသား', '76566828', '(800) 780-0913', '350 Marisa Pine\nNorth Reidview, OK 81094', 'Officia odio iste odio aut blanditiis porro est rerum eligendi beatae dolorem recusandae saepe est voluptatem aliquam veniam ab quae expedita aut ad dolor consequuntur rem vel exercitationem facilis inventore sed numquam tempora accusamus ullam ut placeat rerum culpa ipsa accusamus.', 'I should think you\'ll feel it a violent blow underneath her chin: it had gone. \'Well! I\'ve often seen them at last, and they went on eagerly. \'That\'s enough about lessons,\' the Gryphon whispered in a dreamy sort of meaning in it,\' but none of them hit her in such confusion that she was shrinking rapidly; so she set the little passage: and THEN--she found herself at last the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, \'a great girl like you,\' (she might well say that \"I.', '1970-10-19', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(2, 'လှိုင်', 'လုံးချင်း', 'အမျိုးသား', '885', '877-835-3881', '145 Emmitt Track\nGottliebfurt, ME 26883-1604', 'Et totam quia esse nisi et delectus quisquam et autem eaque quisquam maxime culpa doloribus quam voluptas consequatur in non ratione molestias sed impedit est ipsum.', 'I didn\'t know that cats COULD grin.\' \'They all can,\' said the Dodo said, \'EVERYBODY has won, and all that,\' said the Hatter. \'It isn\'t mine,\' said the Mock Turtle went on. \'Or would you like to go near the looking-glass. There was a general chorus of voices asked. \'Why, SHE, of course,\' he said do. Alice looked up, and there was nothing else to say than his first speech. \'You should learn not to lie down upon their faces, and the great hall, with the tarts, you know--\' \'What did they live on?\'.', '1991-10-12', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(3, 'မင်္ဂလာဒုံ', 'တိုက်ခန်း', 'အမျိုးသား', '4.32', '(800) 461-2029', '550 Virginie Falls Suite 204\nJamieport, OK 18793', 'Asperiores cum quam totam eius hic sit aliquam dolorum quis quia iusto velit ut dolores ut atque blanditiis adipisci molestias est quo veniam nihil.', 'Turtle to the company generally, \'You are old,\' said the cook. \'Treacle,\' said the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the time they had any sense, they\'d take the hint; but the Hatter asked triumphantly. Alice did not dare to disobey, though she looked down at her with large eyes like a candle. I wonder what was coming. It was so large in the after-time, be herself a grown woman; and how she would gather about her pet: \'Dinah\'s our cat. And.', '2008-11-22', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(4, 'အလုံ', 'လုံးချင်း', 'အမျိုးသမီး', '101994811.98740275', '1-844-492-7572', '4187 Ervin Junction\nCasandramouth, VA 74588-1382', 'Nisi ea quidem temporibus velit impedit velit aut dolores est libero aperiam nesciunt consectetur sunt voluptate voluptas est sint ut sed nesciunt voluptatem officia vel labore.', 'While she was peering about anxiously among the bright flower-beds and the procession came opposite to Alice, flinging the baby at her side. She was walking by the prisoner to--to somebody.\' \'It must have been that,\' said the Gryphon, and the other paw, \'lives a March Hare. \'Sixteenth,\' added the Queen. \'I haven\'t the slightest idea,\' said the White Rabbit was no label this time the Queen to play croquet.\' The Frog-Footman repeated, in the direction in which case it would feel with all their.', '1982-08-20', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(5, 'ဒဂုံ', 'အဆောင်', 'အမျိုးသား', '23017.461454', '800.758.1038', '7964 Ericka Inlet Apt. 939\nWest Macey, MT 38554-6162', 'Doloribus reprehenderit id exercitationem amet illo laudantium harum fugiat quos eum quasi iusto dolorem omnis nisi assumenda commodi ratione qui cupiditate dolores voluptas eos commodi fuga praesentium ut sit possimus fugit in reprehenderit quibusdam earum quis et.', 'As there seemed to Alice for some time in silence: at last it sat for a minute, trying to find it out, we should all have our heads cut off, you know. But do cats eat bats? Do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the door opened inwards, and Alice\'s first thought was that you weren\'t to talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the game, feeling very glad to get in.', '2006-11-04', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(6, 'မြောက်ဥက္ကလာ', 'အဆောင်', 'အိမ်ထောင်သည်', '2658.80475', '1-844-791-5192', '6905 Adams Fork\nWebsterside, NV 36925-2561', 'Et et odio expedita numquam et explicabo eum rerum aut quia laboriosam aut neque porro velit non harum non et cupiditate consequatur placeat in natus ea quasi est et recusandae et vel dolor rerum perferendis architecto repudiandae voluptatem.', 'I said \"What for?\"\' \'She boxed the Queen\'s shrill cries to the jury. They were just beginning to grow larger again, and looking anxiously about her. \'Oh, do let me hear the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the pool, and the Queen\'s absence, and were resting in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\' asked the Mock Turtle to the table for it, she found that her flamingo was gone across to the jury, who instantly made a.', '2016-07-11', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(7, 'မရမ်းကုန်း', 'တိုက်ခန်း', 'အမျိုးသား', '353421.645310634', '844-536-5473', '469 Callie Pike Apt. 798\nKristinatown, WA 33128-2215', 'Quisquam quo sint accusamus impedit eius vel voluptatibus et sint voluptatem quia porro sit magnam et non error eum porro velit aut ipsum qui assumenda sint et sapiente dolores soluta adipisci hic voluptatem id voluptas accusamus labore.', 'Alice; \'and I wish I hadn\'t begun my tea--not above a week or so--and what with the edge of her own courage. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after waiting till she fancied she heard something like this:-- \'Fury said to the Dormouse, without considering at all what had become of it; and as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Dodo could not answer without a cat! It\'s the most curious thing I ever heard!\'.', '1994-12-11', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(8, 'မြောက်ဒဂုံ', 'လုံးချင်း', 'အိမ်ထောင်သည်', '52', '1-844-372-6845', '11469 Terry Forks Suite 936\nNorth Imogene, KS 51957-0835', 'Sequi quaerat enim quo non perspiciatis nemo est vitae et vero aut a animi maxime beatae sapiente error non.', 'Alice, \'as all the rest, Between yourself and me.\' \'That\'s the first verse,\' said the Caterpillar. \'Well, perhaps not,\' said the Caterpillar. Alice folded her hands, and was looking at everything about her, to pass away the moment they saw her, they hurried back to yesterday, because I was sent for.\' \'You ought to be ashamed of yourself,\' said Alice, as she was up to the Gryphon. Alice did not get hold of this elegant thimble\'; and, when it grunted again, so violently, that she did so, and.', '2008-08-08', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(9, 'မရမ်းကုန်း', 'အဆောင်', 'အိမ်ထောင်သည်', '3458321.551056', '855-413-8604', '369 Christiana Overpass\nRebeccastad, AK 80029-7922', 'Corrupti expedita quia quae rem omnis autem eligendi facilis iste laudantium excepturi sed laboriosam ea totam consectetur debitis ex aut sed doloribus suscipit repellat eum sint iusto eum doloremque molestiae aspernatur esse et magni voluptate rerum iste saepe.', 'I COULD NOT SWIM--\" you can\'t take LESS,\' said the Cat said, waving its tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Why not?\' said the Pigeon; \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I don\'t even know what they\'re about!\' \'Read them,\' said the Hatter, with an important air, \'are you all ready? This is the reason so many out-of-the-way things had happened lately, that Alice had learnt several things of this pool? I am now?.', '2000-09-03', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(10, 'မရမ်းကုန်း', 'အဆောင်', 'အမျိုးသား', '3.7866', '800-367-0284', '845 Garnet Flats\nEast Yesenia, DC 55151-8744', 'Ratione sunt et vel aperiam aut autem veritatis ullam qui consequatur aut consequuntur sit fugit ut qui est sed ratione vero dolor ipsam corrupti dolor.', 'VERY much out of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she came rather late, and the little crocodile Improve his shining tail, And pour the waters of the leaves: \'I should have liked teaching it tricks very much, if--if I\'d only been the right word) \'--but I shall only look up in spite of all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t take this child away with me,\' thought Alice, as she did so, and giving it.', '1978-05-21', '2019-12-10 01:51:19', '2019-12-10 01:51:19'),
(11, 'မရမ်းကုန်း', 'တိုက်ခန်း', 'အမျိုးသား', '54.4682', '1-888-238-3399', '938 Borer Rapid\nNew Cheyenne, MO 38843', 'Possimus in quidem accusantium animi assumenda doloremque est ipsam illum autem esse adipisci ipsa qui ut laboriosam eveniet aliquid quis recusandae reiciendis iste non ut aut dolore ducimus itaque delectus deleniti qui consequatur perspiciatis.', 'I hadn\'t begun my tea--not above a week or so--and what with the other side. The further off from England the nearer is to find that her idea of the March Hare. \'Yes, please do!\' but the Mouse replied rather impatiently: \'any shrimp could have been a holiday?\' \'Of course not,\' said Alice sadly. \'Hand it over a little sharp bark just over her head made her so savage when they had to be lost, as she was ever to get in?\' asked Alice again, for she felt that it would be so stingy about it, you.', '1999-08-01', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(12, 'ကြည့်မြင်တိုင်', 'တိုက်ခန်း', 'အမျိုးသမီး', '8143559.74411501', '844-595-6884', '136 Glover Road\nParkerport, NY 37401-0058', 'Quasi harum omnis iste minus beatae voluptas ab autem sit quia et est molestiae quo et sit exercitationem distinctio laudantium ut cum facilis deleniti exercitationem magnam rerum commodi architecto nam non omnis ipsum.', 'Queen, but she could do to ask: perhaps I shall never get to the end of trials, \"There was some attempts at applause, which was the first to break the silence. \'What day of the other guinea-pig cheered, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I don\'t quite understand you,\' she said, \'than waste it in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to ask. \'Suppose we change the subject. \'Go on with the Lory, as soon as there was the first minute or two, it.', '1991-05-30', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(13, 'ကြည့်မြင်တိုင်', 'တိုက်ခန်း', 'အိမ်ထောင်သည်', '33000.191', '(888) 475-8183', '9457 Martina Trace Suite 320\nWest Marlin, ND 91231', 'Dolore voluptatum tempora beatae quod repudiandae nulla excepturi quasi sapiente cupiditate molestiae totam reprehenderit mollitia qui provident delectus dolor.', 'Alice. \'I\'ve so often read in the middle of one! There ought to go nearer till she fancied she heard something splashing about in the sea, some children digging in the world am I? Ah, THAT\'S the great puzzle!\' And she kept fanning herself all the time she had asked it aloud; and in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at them with the words all coming different, and then raised.', '2015-09-23', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(14, 'ဒဂုံ', 'တိုက်ခန်း', 'အမျိုးသမီး', '0.41', '(866) 430-9964', '6637 Baumbach Views Suite 997\nKautzerhaven, MN 62322', 'Placeat et qui accusantium aut est libero facilis aut accusamus quibusdam ea est quos aspernatur dolor perspiciatis nobis veritatis blanditiis dolores in ratione dicta omnis amet laborum saepe qui eligendi non cumque illum temporibus fuga.', 'However, on the slate. \'Herald, read the accusation!\' said the Hatter; \'so I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that her shoulders were nowhere to be two people! Why, there\'s hardly room for YOU, and no room to grow to my right size: the next witness!\' said the Footman. \'That\'s the first minute or two, and the pair of white kid gloves: she took courage, and went on without attending to her, one on each side, and opened their eyes and mouths so.', '1991-04-11', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(15, 'လှိုင်', 'လုံးချင်း', 'အိမ်ထောင်သည်', '357.218992', '844.751.5572', '649 Daugherty Pass Apt. 422\nEast Sean, MS 02322', 'Ab atque eum hic qui aut sit eius autem asperiores possimus placeat exercitationem impedit quam sed consequatur commodi corrupti neque magni fugit.', 'There\'s no pleasing them!\' Alice was too dark to see it again, but it was quite surprised to find my way into that lovely garden. I think you\'d better ask HER about it.\' (The jury all looked puzzled.) \'He must have been changed for Mabel! I\'ll try and say \"How doth the little--\"\' and she dropped it hastily, just in time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, \'a great girl like you,\' (she might well say that \"I see what was the Cat went on, \'\"--found it.', '1980-09-03', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(16, 'မြောက်ဥက္ကလာ', 'တိုက်ခန်း', 'အမျိုးသား', '1.946931425', '855-264-4684', '62889 Hand Crest\nMarianneview, TN 18711', 'Sunt vel saepe eveniet quae labore quis impedit tempora voluptatem tempore sint optio atque tempora dolore labore distinctio sit.', 'CURTSEYING as you\'re falling through the neighbouring pool--she could hear the Rabbit noticed Alice, as she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said the Mock Turtle: \'why, if a fish came to ME, and told me you had been looking at Alice for protection. \'You shan\'t be able! I shall be late!\' (when she thought there was no \'One, two, three, and away,\' but they began moving about again, and that\'s very like having a game of croquet she was to find that.', '1987-04-23', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(17, 'တောင်ဒဂုံ', 'လုံးချင်း', 'အိမ်ထောင်သည်', '44695024.585959', '855.316.6313', '19583 Kling Mountains Apt. 435\nNorth Pauline, NH 64631', 'Tempore et corporis eos nemo laboriosam quisquam consequatur et ut consequatur cupiditate modi aut et similique eveniet facilis quo.', 'Gryphon, and the game was going to shrink any further: she felt certain it must make me smaller, I can find them.\' As she said these words her foot slipped, and in another moment that it was a very interesting dance to watch,\' said Alice, in a very short time the Mouse in the court!\' and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door of the words all coming different, and then a voice of thunder, and people began running about in the same.', '1982-09-27', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(18, 'မြောက်ဒဂုံ', 'တိုက်ခန်း', 'အမျိုးသား', '8.2817564', '1-844-644-9915', '6813 Deron Harbor\nNew Lenniemouth, WI 96593-4081', 'Nobis laboriosam dolorum fuga quo ipsa occaecati maxime sint ut et aut omnis qui totam saepe commodi praesentium iure dolore quia consequatur nihil id nostrum fugiat blanditiis.', 'Duchess sneezed occasionally; and as for the rest were quite silent, and looked at her, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'three inches is such a dreadful time.\' So Alice got up in her haste, she had grown so large in the sea. But they HAVE their tails fast in their mouths--and they\'re all over their heads. She felt that there was nothing.', '2006-02-01', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(19, 'မြောက်ဥက္ကလာ', 'လုံးချင်း', 'အိမ်ထောင်သည်', '146162846.25358912', '(877) 383-7469', '270 Morissette Glen Apt. 002\nJohnsonport, VA 82094', 'Nulla aut delectus consequatur quod quo quo molestiae eligendi non quis delectus aut dolorem et alias doloribus odit consequatur ex laborum nisi sapiente commodi rerum voluptas repellat sint laboriosam quasi facere qui quis nulla est qui dolorem sequi vitae vel.', 'King put on his slate with one of them at last, more calmly, though still sobbing a little sharp bark just over her head to keep herself from being broken. She hastily put down the chimney!\' \'Oh! So Bill\'s got to the door. \'Call the next thing was waving its right ear and left off writing on his knee, and the Queen to-day?\' \'I should like to go after that savage Queen: so she began shrinking directly. As soon as she ran. \'How surprised he\'ll be when he finds out who I WAS when I got up in such.', '1976-06-29', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(20, 'မြောက်ဥက္ကလာ', 'လုံးချင်း', 'အိမ်ထောင်သည်', '2.21', '1-877-347-2439', '43772 Frami Key\nLake Mayraside, LA 09277', 'Facere iste maiores autem quos harum modi ut in qui et quia qui ea consequatur vero magni voluptatibus esse itaque corrupti ut ipsum et in cum nesciunt dolor provident mollitia et voluptatem et mollitia.', 'And the Gryphon never learnt it.\' \'Hadn\'t time,\' said the King hastily said, and went to school in the air. Even the Duchess sang the second verse of the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t care which happens!\' She ate a little queer, won\'t you?\' \'Not a bit,\' said the Pigeon. \'I\'m NOT a serpent!\' said Alice in a very little way forwards each time and a large flower-pot that stood near. The three soldiers wandered about in the window, I only wish it was,\' said the.', '2019-11-27', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(21, 'မရမ်းကုန်း', 'တိုက်ခန်း', 'အမျိုးသား', '3140401.8507', '877.476.4632', '57994 Kayden Key\nIsabellamouth, UT 66169-8275', 'Harum dolor esse amet velit sit eaque recusandae suscipit sed maxime architecto enim facilis minima consequatur rerum ipsum velit molestiae ea odit aut deleniti.', 'She did it so yet,\' said the Queen. \'It proves nothing of the crowd below, and there stood the Queen in front of the jurors were writing down \'stupid things!\' on their slates, when the White Rabbit, with a deep sigh, \'I was a child,\' said the White Rabbit, \'but it seems to be talking in his confusion he bit a large cauldron which seemed to be a walrus or hippopotamus, but then she looked down at her feet as the March Hare will be the right height to be.\' \'It is a long argument with the.', '1970-03-10', '2019-12-10 01:51:20', '2019-12-10 01:51:20'),
(22, 'တောင်ဒဂုံ', 'လုံးချင်း', 'အမျိုးသား', '0.43', '(800) 540-4251', '825 Grady Mount Apt. 835\nParkertown, AR 50390-7564', 'Odit consequuntur provident fuga qui nesciunt enim sit voluptatibus dolor ipsam iure et molestiae tempore id illum et quam earum aliquam voluptatem quia accusamus est assumenda rerum a unde non nam nisi ullam doloremque et.', 'Alice as he spoke, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her, and she went on at last, more calmly, though still sobbing a little different. But if I\'m not the right thing to eat some of the players to be almost out of the officers: but the great puzzle!\' And she tried the little creature down, and nobody spoke for some time with great curiosity, and this was her dream.', '1999-07-05', '2019-12-10 03:07:20', '2019-12-10 03:07:20'),
(23, 'မင်္ဂလာဒုံ', 'တိုက်ခန်း', 'အမျိုးသမီး', '11396589.660578', '1-866-628-0493', '21429 Kautzer Station Suite 334\nNew Dixieview, MA 69913-5054', 'Blanditiis porro autem rerum laboriosam adipisci et quisquam provident ut et sunt doloribus enim hic consectetur harum amet veritatis non quod asperiores placeat ea vel nihil omnis veritatis labore suscipit eos fugiat molestiae provident omnis atque ab quis rerum illum cupiditate sint.', 'The Mouse gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was sitting next to her. \'I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a day is very confusing.\' \'It isn\'t,\' said the Gryphon, \'you first form into a sort of present!\' thought Alice. \'I wonder if I\'ve been changed for any.', '1989-02-12', '2019-12-10 03:07:20', '2019-12-10 03:07:20'),
(24, 'ကြည့်မြင်တိုင်', 'အဆောင်', 'အိမ်ထောင်သည်', '818.09801401', '877-220-1827', '6083 Denesik Hill\nNew Gregg, LA 23762', 'Cupiditate inventore et est mollitia sunt dolor soluta quisquam consectetur in ab minima commodi rerum vitae temporibus non dolor eligendi.', 'Last came a little girl,\' said Alice, feeling very glad to do anything but sit with its tongue hanging out of sight: then it chuckled. \'What fun!\' said the March Hare interrupted in a low, weak voice. \'Now, I give you fair warning,\' shouted the Gryphon, sighing in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at each other for some time without hearing anything more: at last it unfolded.', '2004-05-06', '2019-12-10 03:07:20', '2019-12-10 03:07:20'),
(25, 'အလုံ', 'တိုက်ခန်း', 'အိမ်ထောင်သည်', '7245.674659', '800-260-1456', '4865 Rempel Crossing\nNew Aylin, OH 36127-1044', 'Delectus quia repellat necessitatibus illum aut praesentium voluptatibus similique qui enim et cum quia enim harum qui rerum est at magnam reiciendis deserunt dolor neque autem rem eos reprehenderit dolorum illum earum reiciendis facere officiis nemo temporibus deserunt fuga.', 'Cat. \'I said pig,\' replied Alice; \'and I do hope it\'ll make me larger, it must make me smaller, I suppose.\' So she was small enough to try the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in another moment, when she heard the King said, with a great many more than nine feet high. \'Whoever lives there,\' thought Alice, \'it\'ll never do to come once a week: HE taught us Drawling, Stretching, and Fainting in.', '1979-12-28', '2019-12-10 03:07:20', '2019-12-10 03:07:20'),
(26, 'မင်္ဂလာဒုံ', 'လုံးချင်း', 'အမျိုးသမီး', '1.81013949', '877-713-5427', '747 Abbott Corner Suite 261\nSouth Sandrineton, OK 69481-4053', 'Adipisci facere quo id soluta et reprehenderit voluptas neque dolor quibusdam voluptas quia soluta provident cum mollitia ea est tempore omnis temporibus amet temporibus quia a amet.', 'The Mouse looked at it again: but he would not stoop? Soup of the Lobster Quadrille, that she was a large ring, with the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over with William the Conqueror.\' (For, with all their simple sorrows, and find a pleasure in all my limbs very supple By the time it vanished quite slowly, beginning with the Queen jumped up on to her lips. \'I know what to uglify is, you ARE a simpleton.\' Alice did not get hold.', '1998-02-24', '2019-12-10 03:07:20', '2019-12-10 03:07:20'),
(27, 'အလုံ', 'လုံးချင်း', 'အိမ်ထောင်သည်', '1632756.7', '877.694.4362', '659 Tyra Mountain\nLindborough, DC 00171', 'Deserunt dolores consequuntur minus quae velit aut magni eligendi animi eius dolor quia autem quae nihil sed rerum mollitia sed nulla quia.', 'He only does it matter to me whether you\'re a little ledge of rock, and, as the Lory positively refused to tell its age, there was a sound of many footsteps, and Alice was not here before,\' said the Queen, the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the strange creatures of her head impatiently; and, turning to the puppy; whereupon the puppy made another snatch in the distance. \'Come on!\' cried the Mouse, frowning, but very glad to do.', '1981-11-16', '2019-12-10 03:07:20', '2019-12-10 03:07:20'),
(28, 'တောင်ဒဂုံ', 'အဆောင်', 'အိမ်ထောင်သည်', '4.9', '800.733.2149', '9769 Vicenta Rue Suite 773\nLelafort, SD 41924', 'Delectus quisquam voluptatibus explicabo nulla porro rem qui ut corporis dolorem ea nisi sint facilis commodi doloremque laboriosam adipisci quo totam neque quis non odio aut iste at quis est omnis recusandae corporis quo eveniet assumenda.', 'ME,\' said Alice indignantly, and she had got its head down, and nobody spoke for some while in silence. At last the Mock Turtle. So she went back to the baby, it was talking in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice. \'It goes on, you know,\' said the Hatter. This piece of bread-and-butter in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\' asked the Mock.', '2009-05-18', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(29, 'အင်းစိန်', 'လုံးချင်း', 'အိမ်ထောင်သည်', '737622267.4296156', '800.813.7351', '89852 Kuhic Burg\nSouth Oswald, KY 48153-7897', 'Aliquam est quos omnis animi recusandae quae illo tenetur voluptatum atque vero error earum qui sed nulla eos rerum facilis doloremque quos qui quis omnis earum distinctio atque ab voluptatem exercitationem distinctio ea eius reiciendis pariatur voluptates.', 'Alice thought to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\' said Alice. \'Well, then,\' the Gryphon went on. \'We had the best cat in the pool of tears which she had brought herself down to them, and it\'ll sit up and down, and was just in time to be found: all she could not think of what work it would be like, but it puzzled her too much, so she felt that it might appear to others that what you mean,\' said Alice. \'Why, there they are!\' said the Mock Turtle.', '2015-06-18', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(30, 'လှိုင်', 'တိုက်ခန်း', 'အမျိုးသမီး', '3.75121', '(800) 418-7469', '3430 Duane Causeway\nChasetown, WI 58537', 'Et animi aut architecto minus eveniet tenetur nihil modi ut ex quisquam nisi laborum tempore aut dignissimos iste fuga corporis unde sunt reiciendis autem officia quia et aliquam quia alias saepe voluptatem occaecati aliquam maxime earum aut rem.', 'Lobster Quadrille?\' the Gryphon went on planning to herself \'It\'s the first sentence in her hands, and was in livery: otherwise, judging by his garden, and I had it written up somewhere.\' Down, down, down. Would the fall was over. However, when they liked, and left foot, so as to bring but one; Bill\'s got to do,\' said the King. \'It began with the Lory, with a soldier on each side to guard him; and near the right size to do such a neck as that! No, no! You\'re a serpent; and there\'s no meaning.', '1994-05-27', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(31, 'အလုံ', 'အဆောင်', 'အမျိုးသမီး', '19246232.64642', '855.739.1393', '216 Dayna Canyon\nAltenwerthland, OK 48456-7080', 'Occaecati esse vel adipisci omnis vel asperiores ut et ut dicta veniam nostrum odit deserunt ratione et quasi vel doloremque magni excepturi laborum consequatur qui assumenda ut incidunt assumenda numquam.', 'Bill,\' thought Alice,) \'Well, I should think you could see this, as she fell past it. \'Well!\' thought Alice to herself, \'it would be quite as safe to stay in here any longer!\' She waited for a long way. So they had any dispute with the day and night! You see the earth takes twenty-four hours to turn round on its axis--\' \'Talking of axes,\' said the Mouse. \'Of course,\' the Dodo suddenly called out \'The Queen! The Queen!\' and the game was going a journey, I should be raving mad--at least not so.', '1973-04-11', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(32, 'တောင်ဒဂုံ', 'အဆောင်', 'အမျိုးသမီး', '457378345.20552784', '855-752-7015', '341 Spencer Junction\nBradlyview, WA 75904', 'Occaecati consequuntur et doloribus aperiam saepe quibusdam nisi quis iste doloremque blanditiis provident ea dolor ea quibusdam quisquam praesentium reiciendis in enim ut molestiae repellendus odit suscipit est est commodi sit rerum enim omnis ut fugiat.', 'Alice looked up, but it makes rather a complaining tone, \'and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to dry me at home! Why, I haven\'t had a large mustard-mine near here. And the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Lory. Alice replied thoughtfully. \'They have their tails in their mouths; and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she.', '1970-05-09', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(33, 'တာမွေ', 'လုံးချင်း', 'အမျိုးသမီး', '462016803.10272557', '800.295.6487', '4895 Bernhard Station\nWalterfurt, WA 47471', 'Vitae autem animi cupiditate natus autem voluptatum ut eius incidunt ut qui facilis placeat aut consectetur vel quas ut nam voluptatem aspernatur unde magni.', 'She got up very carefully, remarking, \'I really must be removed,\' said the King said gravely, \'and go on till you come to the end: then stop.\' These were the cook, and a great deal too far off to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to write this down on the same words as before, \'and things are \"much of a procession,\' thought she, \'if people had all to lie down upon her: she gave one sharp kick, and waited till the eyes appeared, and then keep.', '1971-08-23', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(34, 'ဗဟန်း', 'တိုက်ခန်း', 'အိမ်ထောင်သည်', '69355195.245', '(866) 379-4214', '394 Weldon Center\nWest Reedview, NC 56766-5271', 'Perferendis voluptatem inventore necessitatibus ut omnis optio placeat dolorem sint optio similique quia sit est eum ut reprehenderit a cum.', 'The Mouse only shook its head impatiently, and walked a little startled when she had never heard of one,\' said Alice. \'Anything you like,\' said the Duchess, \'as pigs have to beat time when I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to make SOME change in my own tears! That WILL be a book written about me, that there ought! And when I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by her. There was nothing else to say it over) \'--yes, that\'s about.', '2004-07-28', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(35, 'မရမ်းကုန်း', 'တိုက်ခန်း', 'အမျိုးသမီး', '16.057068401', '866.597.8986', '192 Lily Stream\nEast Ariannaport, DC 01562-9979', 'Occaecati molestiae quos illo et natus in sunt dolor et harum architecto in atque error velit libero sed voluptates labore voluptatem nesciunt dolores ut.', 'AND SHOES.\' the Gryphon as if nothing had happened. \'How am I then? Tell me that first, and then treading on her hand, and Alice guessed in a court of justice before, but she saw them, they were nice grand words to say.) Presently she began thinking over all the unjust things--\' when his eye chanced to fall a long way. So she went on \'And how many miles I\'ve fallen by this time, as it settled down again very sadly and quietly, and looked very anxiously into its face to see if she could not.', '1981-09-17', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(36, 'မြောက်ဥက္ကလာ', 'လုံးချင်း', 'အမျိုးသမီး', '7963', '(844) 598-3107', '8725 Nikolaus Trail Apt. 584\nNew Jeanettefurt, DE 10867-0325', 'Ut sit iusto accusamus ullam at eum facilis voluptatum aliquam dolores blanditiis repellat quo voluptas velit quia omnis soluta aperiam veritatis id voluptas.', 'Mock Turtle. \'Certainly not!\' said Alice in a Little Bill It was all dark overhead; before her was another long passage, and the bright flower-beds and the second verse of the other end of the sort!\' said Alice. \'Come, let\'s hear some of them even when they liked, so that they had at the jury-box, and saw that, in her haste, she had never forgotten that, if you were all locked; and when she looked down into a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE.', '2010-11-09', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(37, 'လှိုင်', 'တိုက်ခန်း', 'အမျိုးသမီး', '179683.46', '866.576.9995', '968 Tatum Gardens\nEast Salma, DE 69560', 'Numquam et fugiat sit qui aliquam alias in et non animi sit velit accusamus odio tempore iste placeat quidem amet temporibus et eveniet maiores.', 'VERY unpleasant state of mind, she turned to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good deal frightened at the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t think,\' Alice went timidly up to them to sell,\' the Hatter went on, very much of a bottle. They all sat down and saying \"Come up again, dear!\" I shall never get to the whiting,\' said Alice, \'how am I to get through the glass, and she walked sadly down the chimney as she spoke--fancy CURTSEYING.', '2002-01-22', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(38, 'အင်းစိန်', 'တိုက်ခန်း', 'အမျိုးသမီး', '135571730.5', '877.470.3310', '5015 Conn Plaza\nLynchtown, AL 96866', 'Id ducimus sunt reprehenderit odit consequatur eveniet laboriosam id aut iste et error ut earum et possimus sunt voluptatibus eveniet vitae sunt accusamus fugit dolor soluta et.', 'Soup does very well without--Maybe it\'s always pepper that had a pencil that squeaked. This of course, to begin with; and being so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t remember things as I do,\' said the King: \'however, it may kiss my hand if it began ordering people about like that!\' He got behind Alice as she went slowly after it: \'I never went to the garden door. Poor Alice! It was all very well to.', '1981-02-28', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(39, 'ကြည့်မြင်တိုင်', 'လုံးချင်း', 'အမျိုးသမီး', '180876102.6', '1-866-322-5761', '52272 Fahey Plains Apt. 862\nNorth Evalyn, NJ 07309-7653', 'Excepturi asperiores aut quia illum autem veniam et ab veniam cumque temporibus vero voluptate voluptas rerum optio at esse esse saepe omnis fugiat quas sunt laboriosam temporibus quaerat dolore qui et et neque hic unde eum voluptas vel illum consectetur ab.', 'Alice to herself. At this moment Five, who had been to her, still it was YOUR table,\' said Alice; \'living at the beginning,\' the King triumphantly, pointing to the porpoise, \"Keep back, please: we don\'t want YOU with us!\"\' \'They were obliged to have lessons to learn! No, I\'ve made up my mind about it; and the small ones choked and had no very clear notion how long ago anything had happened.) So she began again: \'Ou est ma chatte?\' which was immediately suppressed by the hedge!\' then silence.', '1998-12-03', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(40, 'မင်္ဂလာဒုံ', 'လုံးချင်း', 'အမျိုးသား', '1861044.6963', '(888) 291-7298', '87274 Koelpin Lane Apt. 746\nLake Isac, VT 99460-7910', 'Dolorum consequatur vel rerum voluptatibus adipisci nulla dolore eligendi accusantium sint hic et aut optio maiores saepe eum ut reiciendis id placeat numquam nobis voluptatem similique vero voluptatum quam eum a praesentium deleniti corrupti.', 'OURS they had a door leading right into a doze; but, on being pinched by the way wherever she wanted much to know, but the Rabbit in a rather offended tone, \'so I should think!\' (Dinah was the Rabbit began. Alice thought to herself. \'I dare say there may be ONE.\' \'One, indeed!\' said the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon interrupted in a hurry: a large mustard-mine near here. And the Gryphon went on, half to itself, half to herself, (not in a.', '2001-08-20', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(41, 'အလုံ', 'တိုက်ခန်း', 'အိမ်ထောင်သည်', '606503919.5', '(844) 492-9363', '5273 Sigrid Row\nSouth Dudley, WA 10569-9978', 'Eos sunt sed quasi culpa nesciunt eos praesentium fugiat magnam reiciendis quis iste impedit ipsum sint nisi modi incidunt ut tempore saepe soluta consequatur quos sed doloremque accusantium nobis unde impedit similique vitae voluptatem.', 'Alice. \'You must be,\' said the Hatter: \'as the things get used to know. Let me see: I\'ll give them a new idea to Alice, flinging the baby was howling so much about a whiting to a snail. \"There\'s a porpoise close behind it was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all looked so good, that it would be very likely to eat or drink under the circumstances. There was nothing so VERY wide, but she thought there was nothing so VERY remarkable in that; nor did.', '1974-08-03', '2019-12-10 03:07:21', '2019-12-10 03:07:21'),
(42, 'ကမာရွတ်', 'အဆောင်', 'အမျိုးသမီး', '277.280886', '866.671.2153', '10905 Aida Roads Suite 566\nEddfurt, LA 99184', 'Ut quia consequatur recusandae eos consequuntur sapiente nam maiores occaecati nemo quas assumenda molestiae minima adipisci doloribus nam sed soluta hic non ex sunt voluptatem ducimus reprehenderit laudantium error voluptatem amet eos natus omnis tempora sed necessitatibus quaerat non quam.', 'Alice opened the door that led into the open air. \'IF I don\'t think,\' Alice went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when it\'s angry, and wags its tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Oh, don\'t talk about trouble!\' said the Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s ears--\' the Rabbit hastily interrupted. \'There\'s a great hurry, muttering to itself \'The.', '1980-01-18', '2019-12-10 03:07:21', '2019-12-10 03:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `town_ships`
--

CREATE TABLE `town_ships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `township_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `town_ships`
--

INSERT INTO `town_ships` (`id`, `township_name`, `created_at`, `updated_at`) VALUES
(1, 'West Daynetown', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(2, 'North Jaronmouth', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(3, 'South Adrienside', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(4, 'South Maximillianfurt', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(5, 'Kyliehaven', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(6, 'Gottliebfurt', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(7, 'Candidomouth', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(8, 'North Kelli', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(9, 'Conroyton', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(10, 'Lilaview', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(11, 'Jerodbury', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(12, 'West Curtberg', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(13, 'Lindgrenview', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(14, 'East Quincyfort', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(15, 'West Larissa', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(16, 'Kevinport', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(17, 'Port Cesar', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(18, 'Kuhlmanside', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(19, 'Port Harvey', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(20, 'South Reillyland', '2019-12-10 01:51:22', '2019-12-10 01:51:22'),
(21, 'West Johnathon', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(22, 'East Estrellachester', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(23, 'Runolfsdottirview', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(24, 'Larissafort', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(25, 'West Lilyanhaven', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(26, 'Rhiannontown', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(27, 'Lake Gordon', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(28, 'Tillmanfurt', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(29, 'Aydenmouth', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(30, 'West Leilaniborough', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(31, 'Champlinside', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(32, 'Lake Remingtonshire', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(33, 'New Alycia', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(34, 'Pollichside', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(35, 'North Tracy', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(36, 'Jensenland', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(37, 'Port Bryceport', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(38, 'Homenickville', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(39, 'Sunnymouth', '2019-12-10 03:07:23', '2019-12-10 03:07:23'),
(40, 'Lake Benton', '2019-12-10 03:07:23', '2019-12-10 03:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Georgiana Leuschke', 'ike.witting@example.net', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aGmxOibchf', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(2, 'Helmer Runolfsson', 'fisher.delilah@example.com', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xgi9o1MrHj', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(3, 'Miss Delfina Kovacek', 'max41@example.net', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LvDBSApS2W', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(4, 'Hobart Ankunding I', 'kaia21@example.com', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RhKYRn4FqF', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(5, 'Eleanore Barrows DVM', 'padberg.giovani@example.com', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mW1yfsHMDC', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(6, 'Mr. Chase Abernathy', 'lakin.ruth@example.com', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EGnowOewzs', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(7, 'Damion Little', 'ydicki@example.com', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LhhmAimo77', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(8, 'Kory Bashirian', 'zstiedemann@example.org', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qOvxacNnTu', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(9, 'Dr. Emilie Cassin MD', 'sarina10@example.com', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7oIUuF8tCQ', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(10, 'Name Eichmann', 'lupe.walsh@example.org', '2019-12-10 01:51:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TW6eOtR7c0', '2019-12-10 01:51:21', '2019-12-10 01:51:21'),
(11, 'Miss Angelica Hirthe DDS', 'kareem33@example.org', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w40QdNK6Mx', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(12, 'Rebekah Carter', 'darrick23@example.net', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nqbv1CAOkq', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(13, 'Deborah Corwin III', 'ora04@example.net', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ffMocqLHYh', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(14, 'Davin Runolfsdottir', 'joel41@example.com', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9imVB0KLsf', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(15, 'Mr. Nathanial Rodriguez PhD', 'alysson17@example.com', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OwxfHnO0GC', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(16, 'Dr. Bernadine Stanton', 'tshields@example.org', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BgOSIxGNRP', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(17, 'Prof. Grayson Becker I', 'oeichmann@example.net', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bljFooVqvR', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(18, 'Eugenia Kris', 'pzulauf@example.org', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rYIKyg0iXL', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(19, 'Myrl Hirthe', 'stokes.jeffrey@example.org', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cKAxz8RjFX', '2019-12-10 03:07:22', '2019-12-10 03:07:22'),
(20, 'Dr. Ari Von', 'ruthe32@example.org', '2019-12-10 03:07:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xXPtmgJSwZ', '2019-12-10 03:07:22', '2019-12-10 03:07:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `town_ships`
--
ALTER TABLE `town_ships`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `town_ships`
--
ALTER TABLE `town_ships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
