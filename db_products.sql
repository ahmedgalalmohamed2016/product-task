-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2021 at 02:57 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiddeday_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'main',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type`, `description`, `parent_id`) VALUES
('f3b171f6-79b0-48ba-a193-46874506d586', 'fashion', 'main', 'Non neque iste harum eos non numquam modi. Consequatur aut laboriosam id. Et est vel facere officiis porro asperiores. Nobis dolorem nihil enim modi. Nihil rem rem aut dolore.', NULL),
('13697e1d-b8db-4e03-8cf6-396f8dd738ee', 'baby', 'main', 'Perferendis velit consequuntur ea ex. Aliquid cum quae. Similique sapiente labore ut in voluptatem. Deserunt quo adipisci rerum dignissimos occaecati et rem.', NULL),
('58dfa8c1-cd48-4672-91e7-cc3c1a3e7357', 'gaming', 'main', 'Soluta tenetur molestias aut eum alias ut hic. Occaecati rerum sequi quia dolorem ut autem rerum. Rerum voluptatem delectus voluptatem dolorem repudiandae soluta tempore repudiandae. Reprehenderit distinctio error sequi. Aut fuga cupiditate et rerum aliqu', NULL),
('49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 'console', 'main', 'Nisi cum facere. Facere non aut earum. Sed qui quam itaque. Tempore fugit minima nesciunt alias qui impedit et. Tempore ut suscipit et. Eos autem animi quis aut consequatur.', 'f3b171f6-79b0-48ba-a193-46874506d586'),
('ea93ee13-9813-4800-9aef-1daa640fcf06', 'headest', 'main', 'Dolorem suscipit ratione tenetur ea. Doloribus quod nihil cum explicabo eveniet recusandae est quaerat delectus. Veniam et sit. Fugiat nobis fugit omnis adipisci. Ea repudiandae et quaerat.', 'f3b171f6-79b0-48ba-a193-46874506d586'),
('357b5d54-e358-475e-9e22-19322266ae50', 'controllers', 'main', 'Velit dolores totam vel. Molestiae sed error tenetur cumque hic magnam culpa consequatur. Aut id fugiat ratione voluptatum sequi ipsam eveniet. Rem dolor neque ea illo aspernatur maiores qui et. Aperiam et maxime neque aut sint quidem.', 'f3b171f6-79b0-48ba-a193-46874506d586');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `category_id`, `is_featured`) VALUES
('f0a75e79-bc2b-4d6d-ac46-7d5ff227b63f', 'mechanical keyboard', 'Unde minima dolorum quia sint ut officiis. Dolor sed natus ullam quis voluptatem quos aliquid et praesentium. Sed vitae aut autem iste vero impedit nihil ut ab. Consequatur fugiat at quae ipsa.', 'http://placeimg.com/640/480', '357b5d54-e358-475e-9e22-19322266ae50', 0),
('a3f950ea-352e-4ae1-b74d-5664e421e889', 'mechanical mouse', 'Ut repellat autem reprehenderit porro sint consequatur est minima illum. Optio libero sed harum. Dolor ab eum enim officiis est.', 'http://placeimg.com/640/480', '357b5d54-e358-475e-9e22-19322266ae50', 0),
('fd5d6ff4-ecdd-4bc4-bec0-317b0ed75646', 'gaming mouse', 'Molestias vero est. Laborum voluptas inventore beatae facilis. Nisi ullam atque. Aliquid ea a totam iusto nobis similique maxime praesentium. Et id molestiae praesentium. Deserunt tenetur consequatur est reiciendis molestias aut.', 'http://placeimg.com/640/480', '357b5d54-e358-475e-9e22-19322266ae50', 0),
('7892ee0c-13d5-4777-ba70-59fbe5de8ea5', 'gaming mouse pad', 'Autem delectus ipsa voluptatem alias quos. Labore voluptas sint. Fugiat eum quam rerum itaque. Nihil nobis velit ipsam totam est est placeat.', 'http://placeimg.com/640/480', '357b5d54-e358-475e-9e22-19322266ae50', 0),
('6c8281f4-5159-4333-a8f8-e925e90ad322', 'streaming head set', 'Non eos temporibus. Qui odit numquam eaque eius corrupti facere. Dolor sed neque voluptates temporibus laboriosam voluptas ea.', 'http://placeimg.com/640/480', '357b5d54-e358-475e-9e22-19322266ae50', 0),
('56fb223a-0899-4b29-b85b-d2ced85e5d92', 'streaming cam', 'Praesentium saepe suscipit aliquam. Eum veritatis provident eum temporibus mollitia voluptas. Fuga minima perferendis ipsa voluptate totam molestiae. Cupiditate ipsam et sequi eum quidem voluptas totam nesciunt et. Iste exercitationem rerum rerum ut nostr', 'http://placeimg.com/640/480', '357b5d54-e358-475e-9e22-19322266ae50', 0),
('3ce4c312-b3cd-4600-9e91-a32658ed61d6', 'ps4', 'Alias non sequi quasi. Non porro neque nulla. Architecto odit commodi culpa atque temporibus eos non. Provident quibusdam iure et commodi sit et velit.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('20c65e84-ca8a-4b9f-85e0-5bb5e6ea0df9', 'ps4 pro', 'Repudiandae alias beatae veniam magnam quia eveniet quo tempora quos. In aut dolor pariatur. Ullam qui non ab voluptatem est dolorum iure.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('6552f24a-2e06-4427-b96c-86d6fb5ac356', 'ps3 pro', 'Distinctio et sunt. Eligendi aliquid eos. Accusamus ea rem commodi laboriosam velit. Cum occaecati accusamus ea perferendis et ab pariatur. Officia enim nihil ad. Corrupti quam dignissimos animi et.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('a48d136c-4648-4c64-8efd-93e53468d605', 'ps5 pro', 'Quam pariatur tempora adipisci et ea quos. Culpa reiciendis ipsum praesentium sequi. Fugiat est voluptatibus et illo vel et. Velit voluptatem alias numquam.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('abb8abed-03eb-4ced-8f75-fda02c92d22b', 'ps1 old is good', 'Distinctio veritatis tenetur sunt qui culpa aut dicta et sit. Autem dolorem quis et cupiditate. Suscipit aut voluptates et aut ut tempora earum nam nihil.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('47c01084-bf97-4e71-9e91-b7ed0f316942', 'xbox series x', 'Suscipit repudiandae voluptatem quo sed est aliquam laboriosam libero. Iusto placeat totam quas. Numquam qui eligendi nihil.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('a5a6eaf9-f430-4c82-b68c-8d21e9011241', 'xbox one x', 'Explicabo sint odit. Rerum totam dolor et porro modi harum excepturi rerum. Ut sed expedita nisi vel quo. Nam in et cum est consequatur sit corporis. In porro saepe quas aliquid incidunt similique ratione eum.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('9ec96fa7-36ff-45ef-a4b5-b676852ce67e', 'xbox 360', 'Eveniet laboriosam quisquam perspiciatis nihil. Omnis deserunt iure. Ut tempora at eos et odio quis sed. Aspernatur quis laudantium et. Non deserunt laboriosam odio sunt enim aut debitis dolores et. Qui voluptatem itaque.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('34634411-29ee-4ca9-97a6-e8bde7b610bf', 'xbox vr', 'Soluta et deserunt quasi quis asperiores. Et illum ea. Ullam autem sunt. Numquam labore dolor veritatis est qui ratione.', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('5dd78330-6d0e-46bb-b0ab-a7e3fc995362', 'xbox zen controller', 'Exercitationem rerum mollitia autem excepturi rerum ea rerum amet impedit. Dolores eum numquam quaerat quaerat incidunt. Vel consequuntur non molestiae. Ullam eius facilis id suscipit consequatur reprehenderit ut modi. Esse ab eos quia sit dolores quisqua', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0),
('f95de70c-1960-4d0f-8ec0-6d427dd30bc8', 'xbox zen controller', 'Nostrum autem omnis. Animi reiciendis cum non. Porro neque culpa hic assumenda adipisci accusamus consectetur eaque quasi. Eos dolor non dolores voluptates similique exercitationem. Quo vel ipsa facilis soluta molestias tempore. Dolor veniam quos id non a', 'http://placeimg.com/640/480', '49d3b108-8b65-4f27-9ed6-fda0dc663c8e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_providers`
--

CREATE TABLE `products_providers` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_providers`
--

INSERT INTO `products_providers` (`id`, `product_id`, `provider_id`, `price`, `available`) VALUES
('0b77dfb6-0442-433c-81b4-56ae5e0e51bd', 'f0a75e79-bc2b-4d6d-ac46-7d5ff227b63f', '6ad3965a-1b6d-4c9f-b72f-1deb96d3ae2f', 250, 1),
('3228ca93-2d5e-420e-a959-ec53d21fa5af', 'f0a75e79-bc2b-4d6d-ac46-7d5ff227b63f', '3aa02fb8-d468-4ade-b83b-bebc217df2fd', 250, 1),
('1b424bef-e358-4df0-bb4b-b96e068f6a3a', 'f0a75e79-bc2b-4d6d-ac46-7d5ff227b63f', '7e0faeca-0623-42e9-b973-63378318285c', 250, 1),
('57247831-f889-4386-9101-7e7deb38c77f', 'f0a75e79-bc2b-4d6d-ac46-7d5ff227b63f', 'f8261be0-3144-49e8-807d-163c127991eb', 260, 1);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `name`) VALUES
('3aa02fb8-d468-4ade-b83b-bebc217df2fd', 'five star'),
('7e0faeca-0623-42e9-b973-63378318285c', 'top toys'),
('6ad3965a-1b6d-4c9f-b72f-1deb96d3ae2f', 'smart electro'),
('f8261be0-3144-49e8-807d-163c127991eb', 'smart fashion');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
