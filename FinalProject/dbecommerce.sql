-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 08:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `productId` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '0001_01_01_000000_create_users_table', 1),
(14, '0001_01_01_000001_create_cache_table', 1),
(15, '0001_01_01_000002_create_jobs_table', 1),
(16, '2024_05_31_023038_product_table', 1),
(17, '2024_05_31_030621_multirole_table', 2),
(18, '2024_05_31_033102_categories_table', 3),
(19, '2024_05_31_053352_carts_table', 3),
(20, '2024_05_31_061359_shops_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `multirole`
--

CREATE TABLE `multirole` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `roleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multirole`
--

INSERT INTO `multirole` (`id`, `userId`, `roleName`) VALUES
(1, 11, '1');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Vel rerum.', 928.24, 1, 'Sunt id cupiditate et et nostrum magni. Autem voluptatem et aut nesciunt ad earum qui non. Molestiae optio aperiam deleniti eveniet labore commodi nisi. Dolor incidunt commodi qui voluptate maxime.', 'https://via.placeholder.com/640x480.png/004411?text=suscipit', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(2, 'Quasi distinctio animi id magnam.', 403.19, 9, 'Omnis dicta ipsa minus ad eum. Maiores ratione quaerat ea et harum illum repudiandae.', 'https://via.placeholder.com/640x480.png/00cc99?text=commodi', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(3, 'Aut iure dolorem cupiditate.', 874.17, 5, 'Porro sit dolorem architecto praesentium eos et. Nostrum est magni ipsa explicabo ut quae ut. Facere vel necessitatibus ad voluptatem quaerat dolorem quo. Quia architecto illo et voluptatem quam.', 'https://via.placeholder.com/640x480.png/0022ff?text=labore', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(4, 'Autem itaque.', 35.23, 8, 'Asperiores hic amet consequatur adipisci. Omnis alias et aperiam molestiae et nihil architecto. Neque ut sit sunt sed ut. Voluptatem non tempora nam voluptatem et autem quae.', 'https://via.placeholder.com/640x480.png/00cc44?text=autem', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(5, 'Ut eius laudantium quo.', 135.83, 9, 'Nam sunt atque ipsum libero. A culpa sed quia sit quia. Ut excepturi eos expedita voluptatem nobis fugit nihil.', 'https://via.placeholder.com/640x480.png/00aaff?text=nisi', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(6, 'Facere est quis.', 104.96, 9, 'Non sed libero neque enim nemo quia fugiat enim. Rerum quod facilis aut magnam voluptas qui enim. Exercitationem quo ut id dolor quam ea. Beatae qui ut provident debitis cum reiciendis tenetur.', 'https://via.placeholder.com/640x480.png/00aa99?text=et', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(7, 'Rerum error quis exercitationem.', 138.13, 4, 'Consequatur est at sit quod. Et reprehenderit fugiat in aspernatur veritatis est eum veniam. Accusantium itaque ipsum quos odio aut modi quae.', 'https://via.placeholder.com/640x480.png/005588?text=odit', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(8, 'Numquam a nostrum.', 477.52, 3, 'Animi aut recusandae aut sint itaque. Perferendis repellat reprehenderit id quisquam. Voluptate perspiciatis unde sed quae tempore necessitatibus illo. Vitae nam nemo voluptatem est sed aut quis dolor. Non necessitatibus ut neque et esse non.', 'https://via.placeholder.com/640x480.png/001177?text=illo', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(9, 'Odio quisquam consectetur ut.', 422.96, 7, 'Dolor dolorem culpa officia nulla culpa sunt. Aliquid molestiae error aut vel iste qui illum. Quia fugit molestiae totam vitae.', 'https://via.placeholder.com/640x480.png/006655?text=in', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(10, 'Ratione eos consequuntur.', 218.06, 4, 'Eum exercitationem quasi nobis quia eos. Laborum non cum iste repudiandae quia. Quod tempora iste error soluta harum id adipisci numquam.', 'https://via.placeholder.com/640x480.png/008811?text=sint', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(11, 'Eaque est.', 702.03, 5, 'Sed enim esse dolorem sit delectus. Voluptas aut sed rerum illo magnam expedita accusamus repellendus. Vero sunt non nesciunt ab.', 'https://via.placeholder.com/640x480.png/009911?text=quam', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(12, 'Pariatur vel veritatis sunt.', 445.96, 4, 'Quod consequatur nisi harum voluptatem. Quidem voluptatibus voluptate nulla praesentium dolor nam totam aspernatur. Et aperiam cumque asperiores iste maiores temporibus et quae. Nam ea sunt aut placeat ad aut beatae veniam. Vel velit voluptates est fugiat hic in ducimus cupiditate.', 'https://via.placeholder.com/640x480.png/00bb55?text=veritatis', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(13, 'Maiores consequatur vel pariatur.', 358.79, 5, 'Odio voluptas molestias aut nobis ut. Labore non consequatur adipisci est incidunt. Optio earum molestiae non. Vero repellat dolores et quas.', 'https://via.placeholder.com/640x480.png/007766?text=a', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(14, 'Sint odio et aliquam.', 915.38, 5, 'Qui animi et amet. Autem vitae qui eveniet tenetur sint enim ut. Omnis sint repellendus ratione optio atque qui. Omnis nostrum eaque ex velit sunt in fugiat. Non esse voluptatem vero sit ut porro.', 'https://via.placeholder.com/640x480.png/0011ff?text=excepturi', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(15, 'Repellendus non laboriosam voluptatibus.', 395.41, 7, 'Exercitationem vero impedit eos commodi. Temporibus voluptatem qui vel natus vitae facere illum. Blanditiis est sit ut dolores temporibus maiores.', 'https://via.placeholder.com/640x480.png/009922?text=ex', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(16, 'Aliquam magni mollitia.', 483.16, 7, 'Culpa a aliquam qui fuga debitis nemo qui. Odit ipsa id non laboriosam placeat. Corporis magni delectus ullam illo expedita at.', 'https://via.placeholder.com/640x480.png/0011aa?text=nisi', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(17, 'Minus veniam et.', 382.45, 9, 'Eveniet accusamus non consequatur ab ducimus qui est. Dolores aut aut aut ullam eos aut magni eum. Earum perspiciatis cumque dolores aliquam dignissimos error.', 'https://via.placeholder.com/640x480.png/00cc99?text=veniam', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(18, 'Enim ad architecto alias.', 336.58, 2, 'Harum et vel explicabo distinctio ipsa at cupiditate. Autem sed odio quidem veritatis.', 'https://via.placeholder.com/640x480.png/00ee88?text=sunt', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(19, 'Sint omnis aliquid.', 416.79, 7, 'Odio dignissimos quisquam nobis aut non maxime. Voluptatem minima sint et earum ut pariatur. Cumque velit temporibus fugit suscipit. Eaque aut sunt saepe sequi ratione eos. Libero deserunt quis aut omnis commodi voluptatem optio.', 'https://via.placeholder.com/640x480.png/004400?text=autem', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(20, 'Aut repudiandae amet.', 808.10, 4, 'Laudantium excepturi ut adipisci laudantium aut corrupti. Officia assumenda eveniet optio repellendus repellendus. Alias quia necessitatibus temporibus autem. Provident laborum voluptatem unde et.', 'https://via.placeholder.com/640x480.png/0066cc?text=unde', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(21, 'Quisquam autem inventore.', 276.52, 8, 'Quos non officiis voluptatem officia illo aliquid. Quis minima eum aspernatur laudantium. Officiis qui nobis reiciendis consequuntur et. Quisquam id sunt blanditiis id magni. Aut aut nostrum reiciendis sint dolores sunt.', 'https://via.placeholder.com/640x480.png/001155?text=est', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(22, 'Qui blanditiis quo repellendus.', 724.91, 7, 'Eos molestiae ipsam totam sed animi et. Est ab voluptates ex omnis velit voluptas ut. Nostrum quia et tenetur voluptatibus praesentium ea molestiae.', 'https://via.placeholder.com/640x480.png/00ccee?text=laboriosam', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(23, 'Saepe quibusdam quisquam consequuntur minima.', 891.65, 3, 'Sed ut in labore incidunt quas tempore hic nihil. Tenetur veritatis aliquam dolorum veniam atque molestias nisi. Eos voluptates explicabo maiores. Alias ratione voluptate adipisci voluptatibus quos.', 'https://via.placeholder.com/640x480.png/006622?text=voluptatibus', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(24, 'Consectetur ut molestias eligendi officia.', 70.04, 2, 'Consequatur voluptas amet incidunt minima quis et. Voluptatem voluptatem voluptates et quis maxime voluptas deserunt eveniet. Dolores velit delectus ad dolor nulla. Occaecati in eaque quisquam deserunt blanditiis veritatis unde.', 'https://via.placeholder.com/640x480.png/0077dd?text=vel', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(25, 'Sunt minus eveniet.', 248.28, 8, 'Deleniti quia unde laudantium provident ipsum distinctio quis non. Dolore laudantium provident debitis ab asperiores. Voluptate non qui ut sequi esse cum dicta.', 'https://via.placeholder.com/640x480.png/0000cc?text=dolores', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(26, 'Iure voluptatem blanditiis et.', 195.28, 3, 'Odit at sed ut enim dolor. Velit omnis nihil et aliquid et odit. Cum dolorem a nam. Voluptatem sit aut alias assumenda eum ipsum.', 'https://via.placeholder.com/640x480.png/00cc00?text=labore', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(27, 'Voluptas delectus.', 554.09, 7, 'Voluptates et dolor sit autem vel nemo est quibusdam. Delectus ipsam consequatur quia quae eos eligendi excepturi. Voluptatem ut ad officiis magni. Sunt hic explicabo assumenda corporis autem. In sunt et quod officiis.', 'https://via.placeholder.com/640x480.png/0066aa?text=quos', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(28, 'Autem molestiae fuga quo.', 78.32, 7, 'Dolor est quasi aspernatur debitis quia fugiat aut. Alias temporibus iure qui amet sint sequi. Provident ut cumque laborum provident doloribus.', 'https://via.placeholder.com/640x480.png/00ee00?text=debitis', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(29, 'Velit sit tempora autem.', 139.85, 5, 'Quae minima autem voluptatem atque suscipit molestias quasi. Voluptatem enim non et doloremque. Velit ullam et et enim et voluptatum. Veniam libero et aspernatur rerum doloribus.', 'https://via.placeholder.com/640x480.png/000077?text=est', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(30, 'Libero vero cumque quo.', 180.42, 4, 'Deleniti excepturi quis debitis autem alias. Iusto necessitatibus aspernatur voluptatibus tempora nihil non. Nobis architecto mollitia qui unde.', 'https://via.placeholder.com/640x480.png/009933?text=numquam', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(31, 'Beatae blanditiis modi dolorem.', 40.82, 7, 'Unde nihil cupiditate rerum odit. Et vitae voluptas distinctio cum ipsum aut veritatis. Quam qui sit harum qui aut omnis et commodi.', 'https://via.placeholder.com/640x480.png/007722?text=dolores', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(32, 'Inventore tenetur odio.', 184.72, 6, 'Id fugit qui ea ut ut nisi. Consequuntur facilis est eum aut optio sed. Enim iste ut praesentium quam quaerat fugit aliquam. Laborum doloremque id quas saepe reiciendis.', 'https://via.placeholder.com/640x480.png/00eeff?text=qui', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(33, 'Delectus facere ratione similique nihil.', 576.47, 9, 'Esse esse optio repudiandae maxime repellendus quo officia voluptates. Velit illum ut saepe sed explicabo est hic quia. Eius ab aut cumque sed odit sit.', 'https://via.placeholder.com/640x480.png/007700?text=dolor', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(34, 'Atque repudiandae animi.', 996.28, 5, 'Vel iusto voluptas dolor ut. Distinctio voluptatum ut qui harum qui. Minus placeat eveniet voluptas. Aut reprehenderit et modi impedit voluptatem est nihil.', 'https://via.placeholder.com/640x480.png/00bbdd?text=natus', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(35, 'Alias velit aut.', 565.11, 1, 'Veritatis adipisci sint cupiditate non. Delectus iste accusantium blanditiis harum. Et laborum sequi neque consequatur id. Iste sed rem quibusdam asperiores itaque sint.', 'https://via.placeholder.com/640x480.png/008888?text=tempore', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(36, 'Quia labore dolor.', 922.70, 7, 'Quasi ratione necessitatibus sapiente fugit. At debitis ut sit voluptas sit. Dolores corrupti maxime quo laudantium et qui assumenda.', 'https://via.placeholder.com/640x480.png/009922?text=fugiat', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(37, 'Cupiditate accusamus accusamus consequatur.', 918.83, 8, 'Cum non maxime fugit similique. Quam aperiam cum qui rerum harum est. Voluptatem non nobis consequatur aut reprehenderit amet. Voluptatem voluptas eos vel aut molestiae sit in.', 'https://via.placeholder.com/640x480.png/00bb55?text=omnis', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(38, 'Ut ducimus sunt velit eligendi.', 860.11, 7, 'Sit itaque cum magni magni impedit. Ratione quia cupiditate et omnis. Aut officia tenetur beatae omnis. Facilis officiis consequatur alias quo est. Voluptatibus incidunt veritatis qui sunt quo voluptas.', 'https://via.placeholder.com/640x480.png/00eecc?text=cum', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(39, 'Aliquid quam debitis.', 184.18, 8, 'Omnis officiis eaque quae dicta rerum voluptatem excepturi. Culpa nam hic laudantium repellendus magni quas. Et vel saepe quae perspiciatis laudantium atque architecto.', 'https://via.placeholder.com/640x480.png/00aa44?text=tempora', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(40, 'Doloremque et esse repellat.', 783.20, 6, 'Officiis et ut at eum voluptas quas ut. Tempora explicabo necessitatibus quasi inventore sapiente itaque nostrum. Eos accusantium ducimus voluptatem aliquid ratione a quia. Fugiat quis qui vero consequatur ut expedita sequi.', 'https://via.placeholder.com/640x480.png/003399?text=animi', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(41, 'Maxime qui deserunt.', 448.66, 6, 'Repellat qui qui odio praesentium sint. Nostrum aliquam numquam qui fugiat ab rem. Odit ea est magnam.', 'https://via.placeholder.com/640x480.png/006677?text=aut', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(42, 'Quidem et sit ut.', 930.89, 7, 'Dolor amet expedita cupiditate. Explicabo consequatur non hic qui et. Mollitia repellendus eos quae tenetur.', 'https://via.placeholder.com/640x480.png/003366?text=quia', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(43, 'Quae itaque.', 528.90, 1, 'Rerum beatae non perferendis dolore quia. Ut omnis enim a odio vero. Similique id non temporibus ad dolore dicta nostrum.', 'https://via.placeholder.com/640x480.png/0099bb?text=natus', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(44, 'Eligendi voluptatem earum tenetur.', 899.31, 9, 'Dolor sunt exercitationem et et. Pariatur fugiat officia exercitationem voluptatum repellendus magni. Voluptate molestiae quis dolor ea deleniti est facere. Deserunt quod omnis autem quaerat ut illum.', 'https://via.placeholder.com/640x480.png/0044ff?text=dolore', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(45, 'Eum provident qui qui.', 873.64, 2, 'Facere laudantium officiis eligendi aspernatur non. Id dolorem ipsa molestiae. Sed sunt laboriosam molestiae dolores rerum distinctio ullam. Eos expedita magnam quis.', 'https://via.placeholder.com/640x480.png/00eedd?text=odit', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(46, 'Fuga nemo minima impedit.', 223.97, 9, 'Illo ipsa porro corporis sed deleniti. Adipisci corrupti officiis quidem sed ipsum consequatur corporis aut. Nisi ut ducimus eum. Perferendis ducimus temporibus voluptas quia iure.', 'https://via.placeholder.com/640x480.png/00ee00?text=minima', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(47, 'Ad et.', 402.31, 7, 'Aut maiores assumenda dolorum iure voluptas totam. Est quisquam blanditiis sunt repellat aut iusto qui dolore. Voluptates vel architecto omnis sunt.', 'https://via.placeholder.com/640x480.png/00ee00?text=corrupti', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(48, 'Placeat officia.', 87.78, 7, 'Accusantium ex et id error quibusdam delectus. Deserunt ducimus repellendus occaecati quos et occaecati. Autem et eveniet magnam repellendus labore eaque repellendus. Ipsa laboriosam molestias velit sit dolorem. Blanditiis accusamus saepe accusantium neque.', 'https://via.placeholder.com/640x480.png/0044ee?text=omnis', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(49, 'Quo molestiae assumenda pariatur.', 601.05, 1, 'Voluptatem ipsum rerum est velit et voluptatem esse. Dolore voluptatem dignissimos et labore quis ipsa enim. Ducimus est facilis iure dolorem. Ut in dolor et inventore.', 'https://via.placeholder.com/640x480.png/004444?text=sit', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(50, 'Aut iste officia aut.', 732.67, 8, 'Perspiciatis occaecati eligendi assumenda eveniet consequatur ad. Et officiis omnis voluptatum labore. Ea ut voluptatibus eos fugiat rerum tempora voluptates. Repellendus dolorum consequatur aut odit.', 'https://via.placeholder.com/640x480.png/00aa33?text=fugit', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(51, 'Voluptate deserunt explicabo et.', 141.17, 4, 'Et exercitationem occaecati incidunt voluptatibus sunt ullam. Fugiat nisi consequatur est sit. Incidunt nobis consectetur voluptas sunt amet quo nemo. Et qui quae voluptates corporis aut et eius.', 'https://via.placeholder.com/640x480.png/008855?text=ut', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(52, 'Debitis tenetur est.', 215.73, 8, 'Quibusdam illum voluptatem expedita quia repellat. Id est eos culpa dicta totam quibusdam laborum. Provident eaque ut sunt saepe non. Voluptatem fuga rerum quaerat natus aut.', 'https://via.placeholder.com/640x480.png/00dddd?text=facilis', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(53, 'Impedit libero sit.', 113.29, 3, 'Aliquam ipsam sint animi voluptatum perferendis. Et recusandae voluptatem sunt numquam maiores officiis. Accusantium quia unde enim temporibus sunt perferendis qui.', 'https://via.placeholder.com/640x480.png/00dd88?text=dolorum', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(54, 'Dolore rem alias ut aut.', 418.21, 1, 'Impedit voluptatem atque fuga et consequatur. Recusandae consequuntur aut facilis quo ad earum. Esse quibusdam perspiciatis fugiat ullam laboriosam cum. Sunt ea exercitationem exercitationem dolorem cum doloremque consequuntur.', 'https://via.placeholder.com/640x480.png/003311?text=culpa', '2024-05-30 18:50:45', '2024-05-30 18:50:45'),
(55, 'Eum aut quibusdam totam.', 901.14, 7, 'Explicabo ut aut ea ut quam. Est quia in aut perspiciatis enim. Rerum voluptatem consectetur doloremque molestias dolor accusantium.', 'https://via.placeholder.com/640x480.png/00bb00?text=quo', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(56, 'Qui nam.', 321.70, 1, 'Autem odio eum itaque inventore ipsa officia. Sequi aperiam quis voluptates sint ratione. Corrupti et maxime corporis molestiae.', 'https://via.placeholder.com/640x480.png/006677?text=doloribus', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(57, 'Sit et.', 765.45, 7, 'Aperiam unde eum accusantium vero quaerat provident quo. Et natus ex rerum dolore et maxime. Aut voluptatem quas laborum.', 'https://via.placeholder.com/640x480.png/00ddaa?text=in', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(58, 'Aut placeat fugiat.', 153.55, 5, 'Rerum assumenda molestias quas non est et voluptatem. Voluptas architecto officia itaque sit. Quia porro blanditiis aut fugiat corporis.', 'https://via.placeholder.com/640x480.png/00eeee?text=maxime', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(59, 'Aliquam quia dolorem dolore.', 838.08, 4, 'Repudiandae odio sapiente rerum quam. Velit perferendis corrupti reprehenderit quasi fuga voluptatem nam. Et dignissimos velit aperiam iusto. Accusamus molestias labore nisi non optio. Sit expedita beatae mollitia necessitatibus cum autem.', 'https://via.placeholder.com/640x480.png/006633?text=harum', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(60, 'Amet eius odit dignissimos.', 802.14, 4, 'Provident aliquam aut minus est non. Amet optio error blanditiis consequatur dolorem voluptatem.', 'https://via.placeholder.com/640x480.png/00ee77?text=non', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(61, 'Perferendis consequatur nulla.', 445.28, 4, 'Quibusdam cumque dolore ad vitae. Non omnis eius illo. Molestiae in repellendus nisi consequatur voluptatem ut velit voluptas. Velit et enim in consequuntur doloribus.', 'https://via.placeholder.com/640x480.png/00ff22?text=quod', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(62, 'Illum a eveniet aut.', 107.95, 8, 'Consequatur aut doloremque quis enim rem dolorum harum reprehenderit. Similique quis porro sed velit placeat. Mollitia assumenda totam culpa voluptatum consequatur.', 'https://via.placeholder.com/640x480.png/00bb66?text=qui', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(63, 'Placeat voluptate ut impedit.', 224.71, 3, 'Fugit minus explicabo expedita fuga ut earum sint animi. Doloribus repellendus ex quidem sit aut ut necessitatibus. Adipisci nihil voluptatem fugiat.', 'https://via.placeholder.com/640x480.png/00ff66?text=atque', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(64, 'Provident soluta nihil ducimus.', 815.59, 4, 'Aut ipsam et animi consequuntur ut. Corporis provident harum quidem modi. Expedita suscipit ut est qui sunt eum expedita. Odio nesciunt ut optio quae aut.', 'https://via.placeholder.com/640x480.png/00bb99?text=repudiandae', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(65, 'Dicta quia sed nostrum.', 836.57, 9, 'Id ea perferendis soluta in placeat. Reprehenderit sed expedita quis eos dolor corrupti. Quia quisquam autem eum adipisci. Sunt consectetur officia laudantium dignissimos corporis quidem autem.', 'https://via.placeholder.com/640x480.png/00eeaa?text=corrupti', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(66, 'Illum dolore eius commodi.', 456.31, 2, 'Distinctio molestiae vel neque beatae quae asperiores. Quos dicta laboriosam veniam soluta qui omnis. Eum illum aut voluptas praesentium.', 'https://via.placeholder.com/640x480.png/0033cc?text=repellat', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(67, 'Ratione distinctio dolorem.', 290.26, 8, 'Autem voluptatem quis voluptas pariatur porro. Voluptatum dolores aperiam aliquam et quia qui. Eligendi tenetur eos est architecto. Et aspernatur sint placeat corporis expedita maiores.', 'https://via.placeholder.com/640x480.png/00aa11?text=inventore', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(68, 'Rerum in nulla.', 918.22, 6, 'Iusto praesentium harum placeat nostrum sed. Mollitia veritatis recusandae et aut quae cupiditate vitae. Minus animi error ullam quidem tempora consequatur. Molestias ad dolorum omnis alias qui mollitia aperiam.', 'https://via.placeholder.com/640x480.png/009922?text=neque', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(69, 'Ipsum quas expedita.', 954.21, 3, 'Tenetur natus qui porro voluptas quibusdam est deserunt vel. Illo recusandae et officia voluptatibus tempore. Minus maxime exercitationem voluptatem tenetur praesentium consequatur et molestias. Minus ut in accusantium voluptas nostrum consequatur doloremque.', 'https://via.placeholder.com/640x480.png/0011ff?text=molestiae', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(70, 'Non et.', 311.47, 1, 'Consectetur itaque aut quasi cum. Consectetur quos ab illo dolorem. Sint fuga error aut sint veniam unde.', 'https://via.placeholder.com/640x480.png/0000ee?text=earum', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(71, 'Fugiat dolor.', 717.87, 2, 'Suscipit et qui optio atque beatae repudiandae eaque. Eius itaque iste nulla ratione et voluptatem omnis. Enim saepe sit voluptatibus labore saepe. Numquam quo nemo rerum ratione.', 'https://via.placeholder.com/640x480.png/00ff99?text=labore', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(72, 'Aut suscipit optio molestias qui.', 495.70, 3, 'Aut voluptatem deleniti magni quis. Repellat est voluptatem aut in. Repellat et sint voluptate modi. Minus earum ut quisquam saepe cum odit.', 'https://via.placeholder.com/640x480.png/00dd99?text=qui', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(73, 'Qui consequatur error voluptatem.', 271.89, 9, 'In debitis non aut distinctio tenetur. Nostrum sed quia numquam aut nihil expedita illo. Ut quasi expedita aut reiciendis eum. Aut consequatur ut doloremque sint ea dicta vel est. Dolore corrupti ipsum et dicta quaerat labore.', 'https://via.placeholder.com/640x480.png/009977?text=consequatur', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(74, 'Quis voluptates provident voluptates.', 779.94, 6, 'Necessitatibus minima pariatur ut ad voluptatem inventore omnis minus. Molestias dolores ipsam eveniet veritatis omnis accusamus alias voluptatem. Fuga exercitationem nam amet et aut dolores doloremque. Et beatae deleniti voluptates beatae omnis. Enim dicta dolore commodi error ea.', 'https://via.placeholder.com/640x480.png/008811?text=vitae', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(75, 'Sed quasi magni sint.', 602.82, 7, 'Non minima molestiae quo ut. Et eius qui qui officiis. Et natus et odit quo veritatis. Aut asperiores ipsam hic dolorum eius.', 'https://via.placeholder.com/640x480.png/002211?text=minus', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(76, 'Corporis iste eos.', 667.40, 4, 'Esse exercitationem quo quia iusto quidem corporis. Fugiat rerum consequatur quo distinctio et. Et nihil qui quo reiciendis aut dolorum iste dignissimos.', 'https://via.placeholder.com/640x480.png/00cc66?text=quasi', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(77, 'Sit molestiae ea quia.', 311.75, 2, 'Debitis deleniti voluptas dolore repellat illo. Velit explicabo est ipsum cumque esse. Rerum tenetur dolore corrupti aut sit ea nesciunt.', 'https://via.placeholder.com/640x480.png/00ddcc?text=dolor', '2024-05-30 18:50:46', '2024-05-30 18:50:46'),
(78, 'Tempore quaerat id fuga.', 122.70, 6, 'Doloremque porro sed voluptate. Maxime quas ut possimus. Ad deleniti a odit praesentium. Et vero ea repudiandae sed.', 'https://via.placeholder.com/640x480.png/0033ee?text=consequatur', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(79, 'In quia laboriosam ut.', 718.72, 7, 'Enim et perferendis voluptatem ut eaque iusto ex. Ut consequatur nisi eius exercitationem excepturi.', 'https://via.placeholder.com/640x480.png/0077dd?text=velit', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(80, 'Consequatur incidunt ab quos.', 54.26, 5, 'Est velit praesentium adipisci perspiciatis et pariatur sunt. Libero velit voluptatum sit delectus inventore mollitia. Facere a velit sunt magnam qui. Beatae vel perferendis omnis mollitia debitis illo consequatur.', 'https://via.placeholder.com/640x480.png/00eeff?text=officiis', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(81, 'Quia soluta reiciendis voluptas.', 222.33, 5, 'Laborum quis eius aliquid debitis. Impedit suscipit quidem culpa non corrupti ut aliquam. Voluptates in est rerum iusto. Voluptatem et minima accusamus laudantium voluptas laudantium.', 'https://via.placeholder.com/640x480.png/00ee33?text=maxime', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(82, 'Ullam expedita perspiciatis.', 589.94, 6, 'Ut ab omnis eum. Officia a ad eos aut. Corporis omnis dolore accusamus id mollitia.', 'https://via.placeholder.com/640x480.png/001166?text=in', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(83, 'Qui molestiae quae voluptate.', 762.90, 4, 'Nesciunt quibusdam dolor magnam. Repellendus facere nulla et nisi. Voluptates numquam soluta sit et aut aut praesentium. Optio consequatur magnam et tempore voluptas cum.', 'https://via.placeholder.com/640x480.png/00cc33?text=autem', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(84, 'Aut quia id ut.', 911.94, 9, 'Voluptatem perspiciatis voluptatem molestiae rerum. Est est fugit tempore commodi dicta consequuntur asperiores. Iusto quam et necessitatibus voluptas eius commodi libero.', 'https://via.placeholder.com/640x480.png/0022dd?text=ut', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(85, 'Doloremque sit dolores dolore.', 684.23, 8, 'Architecto nostrum a id id non rerum sed quia. Laborum tempore qui consequatur vero voluptate.', 'https://via.placeholder.com/640x480.png/00ee00?text=possimus', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(86, 'Perspiciatis repellendus perferendis exercitationem.', 236.32, 1, 'Ea possimus exercitationem et quisquam. Et porro doloremque quod voluptas deserunt. Consequatur dolores nulla neque maiores minus non.', 'https://via.placeholder.com/640x480.png/005577?text=et', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(87, 'Enim qui perferendis et.', 702.40, 9, 'Nisi ut veritatis et ea. Omnis modi et unde. Eligendi iusto officia tempora rerum voluptate repellat officiis error. Sed nesciunt odio deserunt occaecati et quo.', 'https://via.placeholder.com/640x480.png/0077bb?text=et', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(88, 'Et rerum consequatur velit.', 248.90, 4, 'Autem pariatur ea cum quia sunt et. Quis id ut molestiae non vel quaerat minima et. Deleniti unde unde quia quae voluptas dolores eligendi. Odit placeat magnam maxime quam et quaerat. Possimus illo excepturi modi officia architecto.', 'https://via.placeholder.com/640x480.png/00aa55?text=ipsa', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(89, 'Et quis est eum.', 726.08, 7, 'Sapiente repudiandae et et autem porro qui. Dolores totam nihil voluptatem perferendis ipsam vitae voluptatum dolorem. Nisi sit dolorum perspiciatis tempore neque et quasi ut. Expedita quo omnis excepturi id minima.', 'https://via.placeholder.com/640x480.png/0044aa?text=dicta', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(90, 'Dolor alias est.', 679.97, 1, 'Qui voluptatem sunt omnis ducimus eos quas corrupti odio. Et aut quidem distinctio maiores illum. Omnis quia facere autem.', 'https://via.placeholder.com/640x480.png/00bbee?text=eos', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(91, 'Quas impedit et.', 963.23, 3, 'Voluptate harum nihil accusamus. Laudantium id est ut ea blanditiis voluptas. Facilis est ut eius deserunt magnam quia.', 'https://via.placeholder.com/640x480.png/0033ee?text=accusamus', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(92, 'Deleniti molestiae totam.', 650.04, 4, 'Animi deserunt est iste voluptatem. Modi qui et numquam. Corporis aut ut at voluptatem eaque non in.', 'https://via.placeholder.com/640x480.png/0011cc?text=sit', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(93, 'Beatae est voluptatem sed.', 827.72, 1, 'Minima numquam veniam molestias tenetur vel dolorem repellendus. Sequi quae odit nihil dolor aut et. Voluptatem et quia totam excepturi nobis debitis ea.', 'https://via.placeholder.com/640x480.png/005555?text=et', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(94, 'Et eum asperiores.', 617.89, 7, 'Soluta iste laborum est accusamus sapiente amet molestiae. Nobis exercitationem fugiat quae earum occaecati aut illum aspernatur.', 'https://via.placeholder.com/640x480.png/001100?text=soluta', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(95, 'Similique et sapiente optio.', 672.34, 8, 'Suscipit in aliquid esse nihil hic quasi quis. Eos eos natus harum mollitia distinctio voluptatem. Iste perferendis est velit quidem corrupti soluta.', 'https://via.placeholder.com/640x480.png/00dd77?text=facilis', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(96, 'Porro voluptates.', 855.16, 8, 'Culpa qui architecto molestiae ipsum delectus maxime. Ea eos qui non voluptas rerum aut quia. Nulla rerum laboriosam molestiae sed.', 'https://via.placeholder.com/640x480.png/0022aa?text=odio', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(97, 'Tenetur cum quasi rem.', 392.35, 6, 'Qui dignissimos dolorem qui eos tenetur minus ad. Et ea labore ex maxime. Animi facilis quam ea id molestias vel inventore molestiae. Hic ipsa aliquid quod sed facere.', 'https://via.placeholder.com/640x480.png/002288?text=vero', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(98, 'Saepe molestiae consectetur magnam.', 849.29, 1, 'Enim hic sint occaecati ipsum quis ex inventore. Cum sint eum excepturi enim autem. Est aut doloremque occaecati sit debitis tempora porro.', 'https://via.placeholder.com/640x480.png/001122?text=non', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(99, 'Labore non nemo.', 690.87, 4, 'Eligendi dicta neque ipsa unde ducimus aut ea. Aspernatur qui recusandae quidem eum assumenda optio sed et. Adipisci qui est illo qui consequatur deserunt ut. Quia labore iure velit molestiae id dolor.', 'https://via.placeholder.com/640x480.png/003322?text=sint', '2024-05-30 18:50:47', '2024-05-30 18:50:47'),
(100, 'Voluptatibus voluptatem accusamus.', 778.94, 1, 'Non sit soluta ipsam deleniti aliquid alias. Itaque esse cupiditate saepe quia nisi consequatur dolorem tempore. Beatae in ut aperiam libero totam assumenda.', 'https://via.placeholder.com/640x480.png/000099?text=beatae', '2024-05-30 18:50:47', '2024-05-30 18:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RAJlSltotYzoRKjMlvPmFxMWY5rUDWBMtGcaO9tn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1FzdWpQYnF0MktmYjhIUTVkc0NJUk5VcFhodDZxclJXQXM2S0lsdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717136254);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `shopName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileNumber` varchar(255) NOT NULL,
  `shopDesc` text NOT NULL,
  `shopImage` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dannie Veum', 'gulgowski.josefina@example.com', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'Ib5pjL99Vl', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(2, 'Darrin Halvorson', 'halvorson.korey@example.org', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', '5vMr3Guv49', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(3, 'Ms. Pascale Metz', 'jordi23@example.com', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'g0rdZ71gVM', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(4, 'Mrs. Meghan Monahan Jr.', 'hackett.angus@example.org', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'aFy4ACUfHe', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(5, 'Maggie Haley', 'wiley13@example.net', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', '9OqqxpvTeQ', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(6, 'Miss Ellie Jakubowski Jr.', 'marguerite15@example.org', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'so4expLM1G', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(7, 'Emil Schmeler', 'grover19@example.com', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'iELTxOOgHH', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(8, 'Savanah Stoltenberg', 'jaclyn75@example.net', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'sl4Yk2iyk6', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(9, 'Lilliana Runolfsson', 'katharina.halvorson@example.net', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'ePBzOIbrx6', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(10, 'Pat Kovacek', 'price.jerome@example.com', '2024-05-30 18:50:44', '$2y$12$YWwsgMm9V3eqkfROwMcGweOniSf9dZSdTrNvXHzRtvbqJN6/ghKSW', 'U3McPDLr0u', '2024-05-30 18:50:44', '2024-05-30 18:50:44'),
(11, 'aldryan', 'aldryan@gmail.com', NULL, '$2y$12$mqHjhklr3.M7XFeiFWDGYuNclzNTP7o7Z47mrTmGMTdDAxikcNpW6', NULL, '2024-05-30 21:55:28', '2024-05-30 21:55:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_userid_foreign` (`userId`),
  ADD KEY `carts_productid_foreign` (`productId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multirole`
--
ALTER TABLE `multirole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multirole_userid_foreign` (`userId`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_userid_foreign` (`userId`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multirole`
--
ALTER TABLE `multirole`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_productid_foreign` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `multirole`
--
ALTER TABLE `multirole`
  ADD CONSTRAINT `multirole_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
