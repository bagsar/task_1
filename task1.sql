-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 09 2021 г., 13:08
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-03-21 14:28:03', '2021-03-21 14:28:03');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(66, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 19, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(68, 19, 'lenght', 'text', 'Lenght', 0, 1, 1, 1, 1, 1, '{}', 3),
(69, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(70, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 21, 'len', 'text', 'Len', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(75, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(19, 'mymusic5s', 'mymusic5s', 'Mymusic5', 'Mymusic5s', NULL, 'App\\Models\\Mymusic5', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-09 04:21:06', '2021-04-09 04:21:06'),
(21, 'mymusic7s', 'mymusic7s', 'Mymusic7', 'Mymusic7s', NULL, 'App\\Models\\Mymusic7', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-09 05:08:35', '2021-04-09 05:08:35');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-21 14:28:02', '2021-03-21 14:28:02');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-21 14:28:02', '2021-03-21 14:28:02', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-03-21 14:28:02', '2021-03-24 07:45:43', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-03-21 14:28:02', '2021-03-21 14:28:02', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-03-21 14:28:02', '2021-03-21 14:28:02', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2021-03-21 14:28:02', '2021-03-24 07:45:43', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-03-21 14:28:02', '2021-03-24 07:45:43', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-03-21 14:28:02', '2021-03-24 07:45:43', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-03-21 14:28:02', '2021-03-24 07:45:43', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-03-21 14:28:02', '2021-03-24 07:45:43', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2021-03-21 14:28:02', '2021-03-24 07:45:43', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2021-03-21 14:28:03', '2021-03-24 07:45:43', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-03-21 14:28:04', '2021-03-24 07:45:43', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2021-03-21 14:28:04', '2021-03-24 07:45:43', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-03-21 14:28:04', '2021-03-24 07:45:43', 'voyager.hooks', NULL),
(22, 1, 'Mymusic5s', '', '_self', NULL, NULL, NULL, 14, '2021-04-09 04:21:06', '2021-04-09 04:21:06', 'voyager.mymusic5s.index', NULL),
(24, 1, 'Mymusic7s', '', '_self', NULL, NULL, NULL, 15, '2021-04-09 05:08:35', '2021-04-09 05:08:35', 'voyager.mymusic7s.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2021_03_21_182532_create_sessions_table', 1),
(27, '2016_01_01_000000_create_pages_table', 2),
(28, '2016_01_01_000000_create_posts_table', 2),
(29, '2016_02_15_204651_create_categories_table', 2),
(30, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `mymusic7s`
--

CREATE TABLE `mymusic7s` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `len` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mymusic7s`
--

INSERT INTO `mymusic7s` (`id`, `name`, `len`, `created_at`, `updated_at`) VALUES
(1, 'Schubert Trio 2 In E Flat Major Opus 100 Second Movement', '10', '2021-04-09 05:08:54', '2021-04-09 05:08:54'),
(2, 'pop', '10', '2021-04-09 05:22:58', '2021-04-09 05:22:58'),
(3, 'pop', '10', '2021-04-09 05:26:17', '2021-04-09 05:26:17'),
(4, 'rep', '20', '2021-04-09 05:26:51', '2021-04-09 05:26:51'),
(5, 'ooo', '74', '2021-04-09 07:32:33', '2021-04-09 07:32:33'),
(6, '777', '777', '2021-04-09 06:43:09', '2021-04-09 06:43:09'),
(7, 'ppp', 'ppp', '2021-04-09 06:43:59', '2021-04-09 06:43:59');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-03-21 14:28:04', '2021-03-21 14:28:04');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(2, 'browse_bread', NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(3, 'browse_database', NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(4, 'browse_media', NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(5, 'browse_compass', NULL, '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(6, 'browse_menus', 'menus', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(7, 'read_menus', 'menus', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(8, 'edit_menus', 'menus', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(9, 'add_menus', 'menus', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(10, 'delete_menus', 'menus', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(11, 'browse_roles', 'roles', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(12, 'read_roles', 'roles', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(13, 'edit_roles', 'roles', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(14, 'add_roles', 'roles', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(15, 'delete_roles', 'roles', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(16, 'browse_users', 'users', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(17, 'read_users', 'users', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(18, 'edit_users', 'users', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(19, 'add_users', 'users', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(20, 'delete_users', 'users', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(21, 'browse_settings', 'settings', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(22, 'read_settings', 'settings', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(23, 'edit_settings', 'settings', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(24, 'add_settings', 'settings', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(25, 'delete_settings', 'settings', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(26, 'browse_categories', 'categories', '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(27, 'read_categories', 'categories', '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(28, 'edit_categories', 'categories', '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(29, 'add_categories', 'categories', '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(30, 'delete_categories', 'categories', '2021-03-21 14:28:03', '2021-03-21 14:28:03'),
(31, 'browse_posts', 'posts', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(32, 'read_posts', 'posts', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(33, 'edit_posts', 'posts', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(34, 'add_posts', 'posts', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(35, 'delete_posts', 'posts', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(36, 'browse_pages', 'pages', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(37, 'read_pages', 'pages', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(38, 'edit_pages', 'pages', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(39, 'add_pages', 'pages', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(40, 'delete_pages', 'pages', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(41, 'browse_hooks', NULL, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(47, 'browse_disks', 'disks', '2021-04-08 05:56:56', '2021-04-08 05:56:56'),
(48, 'read_disks', 'disks', '2021-04-08 05:56:56', '2021-04-08 05:56:56'),
(49, 'edit_disks', 'disks', '2021-04-08 05:56:56', '2021-04-08 05:56:56'),
(50, 'add_disks', 'disks', '2021-04-08 05:56:56', '2021-04-08 05:56:56'),
(51, 'delete_disks', 'disks', '2021-04-08 05:56:56', '2021-04-08 05:56:56'),
(52, 'browse_disklists', 'disklists', '2021-04-08 09:26:44', '2021-04-08 09:26:44'),
(53, 'read_disklists', 'disklists', '2021-04-08 09:26:44', '2021-04-08 09:26:44'),
(54, 'edit_disklists', 'disklists', '2021-04-08 09:26:44', '2021-04-08 09:26:44'),
(55, 'add_disklists', 'disklists', '2021-04-08 09:26:44', '2021-04-08 09:26:44'),
(56, 'delete_disklists', 'disklists', '2021-04-08 09:26:44', '2021-04-08 09:26:44'),
(62, 'browse_Mymusic2', 'Mymusic2', '2021-04-08 11:30:12', '2021-04-08 11:30:12'),
(63, 'read_Mymusic2', 'Mymusic2', '2021-04-08 11:30:12', '2021-04-08 11:30:12'),
(64, 'edit_Mymusic2', 'Mymusic2', '2021-04-08 11:30:12', '2021-04-08 11:30:12'),
(65, 'add_Mymusic2', 'Mymusic2', '2021-04-08 11:30:12', '2021-04-08 11:30:12'),
(66, 'delete_Mymusic2', 'Mymusic2', '2021-04-08 11:30:12', '2021-04-08 11:30:12'),
(67, 'browse_Mymusic4s', 'Mymusic4s', '2021-04-08 11:35:40', '2021-04-08 11:35:40'),
(68, 'read_Mymusic4s', 'Mymusic4s', '2021-04-08 11:35:40', '2021-04-08 11:35:40'),
(69, 'edit_Mymusic4s', 'Mymusic4s', '2021-04-08 11:35:40', '2021-04-08 11:35:40'),
(70, 'add_Mymusic4s', 'Mymusic4s', '2021-04-08 11:35:40', '2021-04-08 11:35:40'),
(71, 'delete_Mymusic4s', 'Mymusic4s', '2021-04-08 11:35:40', '2021-04-08 11:35:40'),
(72, 'browse_mymusic5s', 'mymusic5s', '2021-04-09 04:21:06', '2021-04-09 04:21:06'),
(73, 'read_mymusic5s', 'mymusic5s', '2021-04-09 04:21:06', '2021-04-09 04:21:06'),
(74, 'edit_mymusic5s', 'mymusic5s', '2021-04-09 04:21:06', '2021-04-09 04:21:06'),
(75, 'add_mymusic5s', 'mymusic5s', '2021-04-09 04:21:06', '2021-04-09 04:21:06'),
(76, 'delete_mymusic5s', 'mymusic5s', '2021-04-09 04:21:06', '2021-04-09 04:21:06'),
(77, 'browse_mymusic7s', 'mymusic7s', '2021-04-09 05:08:35', '2021-04-09 05:08:35'),
(78, 'read_mymusic7s', 'mymusic7s', '2021-04-09 05:08:35', '2021-04-09 05:08:35'),
(79, 'edit_mymusic7s', 'mymusic7s', '2021-04-09 05:08:35', '2021-04-09 05:08:35'),
(80, 'add_mymusic7s', 'mymusic7s', '2021-04-09 05:08:35', '2021-04-09 05:08:35'),
(81, 'delete_mymusic7s', 'mymusic7s', '2021-04-09 05:08:35', '2021-04-09 05:08:35');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-03-21 14:28:04', '2021-03-21 14:28:04');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-21 14:28:02', '2021-03-21 14:28:02'),
(2, 'user', 'Normal User', '2021-03-21 14:28:02', '2021-03-21 14:28:02');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hSPH08lRnj7XQpFm4zrIncpOKKITSdsqXbtNpTHc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4464.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHdsdVNiUGFMeWN0Y2VoU0lFZEtnNEc2TkxoeDJnVXE0bWJzNkdLMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYWdlIjt9fQ==', 1617965039),
('M9x8xgzMsLNj6TirmNztdz5nL7bwqE6OIKT3QByy', 1, '46.70.124.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4464.5 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoia281SnNsalRkSUJEU0k4b1VsZmV2UnNMUk1oMXpWYWNaZDE4Y0JTdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vYXBpZml4LnRyYWRlL3BhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDJxSHk1bFpLQW1sMnEuOTg1dzZVaXUxZHBvZU9vekRLM0cwY2R4czN5dXZNUERFZ0hSMHBLIjt9', 1617955201),
('Zr5la6w8W8e4piAM6fF0kLIppcqmNbnpkEFKbnhz', 1, '46.70.124.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUnBGVXprQWdyNUpYNERDcExuWk1ndXhiSm11ZHpwdHB2VnUyZjhLdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vYXBpZml4LnRyYWRlL3BhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDJxSHk1bFpLQW1sMnEuOTg1dzZVaXUxZHBvZU9vekRLM0cwY2R4czN5dXZNUERFZ0hSMHBLIjt9', 1617956818),
('zSCKqJWEUEAQZoGiIwKRk54fnN6cJefBdPM0vPhf', NULL, '46.70.124.48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4464.5 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnJXdFNDa2dETG1PZWhrQldNN2N4T3RxOGFMaUhDeXBaS1NEYzdaNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vYXBpZml4LnRyYWRlL3BhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1617964353);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `access_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `token`
--

INSERT INTO `token` (`id`, `access_token`) VALUES
(1, '{\"access_token\":\"ya29.a0AfH6SMBsLU8vnzrCprxd5XJg75vY4LH8S2LQnCGUFK0xMjhvhZQszbJFVlHFF-TGWi8g31R8Bz1YcTn147V2Bju67fPY5lW9zDna1vNEKqVMJ4OiLbSIXfxw1HcvrdXbwny7TgtFj7y4xNWfUaSZAsnarCUpGQ\",\"expires_in\":3599,\"scope\":\"https://www.googleapis.com/auth/spreadsheets\",\"token_type\":\"Bearer\",\"refresh_token\":\"1//096BZ7tqpUcMDCgYIARAAGAkSNwF-L9Ir1mBMmRbysEynptJkbEVZGVp0UvnC9WIGnsv-WazswePFq6kXorfRgp4NrcBNDDUGOno\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-03-21 14:28:04', '2021-03-21 14:28:04');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$2qHy5lZKAml2q.985w6Uiu1dpoeOozDK3G0cdxs3yuvMPDEgHR0pK', NULL, NULL, 'AKVy8vlSZq2RYihXSAFU8iG1fIuerUPl40d07Sr4DGiWt1H0pBb7bi1kDPGu', NULL, NULL, NULL, '2021-03-21 14:28:04', '2021-03-21 14:28:04'),
(2, NULL, 'Bagrat Saribekyan', 'bag@mail.com', 'users\\March2021\\vzQqFwEH1Sm8wDUJHE87.png', NULL, '$2y$10$bk.1EGmv0t01lwJ5e9DAfuMpA7Ll9rT.C5jDXvG/Wwzb0RNjSRApS', 'eyJpdiI6IkROeGtNR1E0Q2svU1R0eFJqOFRGZkE9PSIsInZhbHVlIjoiVjRiQ3lPRnJzdWdQdkxrUnRRK0JJM0hPK0RTRVp4U0ROcVJaRGoveUtNST0iLCJtYWMiOiIzYWFlZGJhY2JiNzMxY2FmOWE5MTVmYmM5YTc5M2JkNTA2ODI1NWMyOTE2MjU3MTRiYTViMDZmMTUyYmM5YjE5In0=', 'eyJpdiI6IlFaV1JibWlpN1dJOHdmRjFJZ2RxNHc9PSIsInZhbHVlIjoialdORG8yMlNxbGhPUXFMb1k2MHdMMzBIL0R6NkZZblpQcCt6N1BJOHc0OTVzNUhLMnV1Z3pXckRYejhadEdRZzdwZzNJRG52c1hLYmRITzRKN1dtTDJJZ3NJbGVjNjg0azF5cW5FbnQremxwNXE2MnRvbnhJYlV1YWRsZy8rMEZaUS94VGlLTlZQN1RWcTBTbHVmOGhaT2N3K2ppZkpVUnZvYjlxU3VIZ2I3dWY4S29WbmVJNFk3d0lNQVBIWWp3aHM3UGdXNXFyRkJmZ3oxeUMvTTl3ejNNdDZsdmN0eDFaeFQvdmUvQ1FOVFZ2b1BkNDFCdHdTZ0ltNlROeVRGWGRGUnRWS3dTUE5aT3NVdlQxc2dGOFE9PSIsIm1hYyI6ImVhMzA5OTliNjIxMWZjYmNkM2FmZDUwMGM2MjY4MzJiMTU2MDMzMmRlNDY5ZTE4ZTk1ODM2NTM2NmVjMGNkNmEifQ==', NULL, '{\"locale\":\"en\"}', NULL, NULL, '2021-03-26 17:08:46', '2021-03-26 17:28:56'),
(3, 2, 'bagrat1', 'bagratsaribekyan@gmail.com', 'users/default.png', NULL, '$2y$10$qCbGIIdHECn2bh.ozmeKt.ePv.K7P.7BEWFwNUqWhLkXmuGIs2ykO', 'eyJpdiI6IlQ0Tkd5Y2szdnI5ajgyTXlSV3dveEE9PSIsInZhbHVlIjoiZzZLa2hueXlsK2ZwWDRJWlhGRTN6bWY0M0NoSHNXMVhzWWlUWDBHclU3RT0iLCJtYWMiOiJlYmI2NTcwM2MyOTVjYzk2ZmFmNmQzYjE2NzJjMTFlMTRkNzJiNDdjOGM3MjU1ZmYzZGU1N2UxNjcyN2VjZmM2In0=', 'eyJpdiI6Im5sM0ZVN0Z3N0k2L2tuNEpPeHpUdEE9PSIsInZhbHVlIjoiaS9rU2I0R3MxNU5wMHBLektQNldYN2RvekRBSzR5WlVkTHl6WUJ1N1JiY1NsdjdIV0I3SW1udzJqRzJmU21sNXBvNmdLRzBtbkxkekJ4aEdTWjVuVkU5Y0xjTVQyOEg0NmUzUzV6Y0Z5S1Z2Sm14allUOEh5aXVTQW52U0hwRmI4TWVBMUpHOHlLbkpQYmV3RGlhYTE5YVN5TnpmY0RRREFNVDlKNEhhVWxlWGROQUJId1l6ZzhFSmcrZkg1RW1hbzNKRk8wN1ZxZGMxSG44S0pTK0JUdWhVbUNVL1dqL1hEZXFNYjFuekVmTCtlTDJTcFlMVjQ1dldOejIyK0Y5Y0MxMDFmM2kwNzB5QzVqNjF6d1ZuL3c9PSIsIm1hYyI6ImU3MDA2NzdjMzg3M2Y5N2ZhZTkwMzAzY2NmNjlkZjcyMGVmZDlkYjE5YTMzODc1NTY4NGE2NjBmODgwYjZiMjcifQ==', '2B9dvNy6HIouOgBQgi52qxw5rAUMalX3UJFoqufeaqSt8ICQVLoDbP6GqNdZ', NULL, NULL, NULL, '2021-03-29 15:23:54', '2021-03-29 15:24:11');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mymusic7s`
--
ALTER TABLE `mymusic7s`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `mymusic7s`
--
ALTER TABLE `mymusic7s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
