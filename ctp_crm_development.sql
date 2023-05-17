-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2023 at 02:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctp_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `secondary_phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'lead',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_project`
--

CREATE TABLE `client_project` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_user`
--

CREATE TABLE `client_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designs`
--

CREATE TABLE `designs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expanses`
--

CREATE TABLE `expanses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purpose_id` bigint(20) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `method_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `details` text DEFAULT NULL,
  `document` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_quotation`
--

CREATE TABLE `feature_quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostings`
--

CREATE TABLE `hostings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) DEFAULT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_type` enum('quotation','custom') NOT NULL DEFAULT 'custom',
  `total_price` int(11) DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `grand_total` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `pay` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`items`)),
  `status` enum('created','sent','canceled','paid') NOT NULL DEFAULT 'created',
  `invoice_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_03_31_114745_remove_backpackuser_model', 1),
(6, '2020_11_30_173916_create_permission_tables', 1),
(7, '2020_11_30_175733_create_features_table', 1),
(8, '2020_11_30_175851_create_platforms_table', 1),
(9, '2020_11_30_181138_create_works_table', 1),
(10, '2020_11_30_185300_create_feature_quotation_table', 1),
(11, '2020_12_03_212005_create_clients_table', 1),
(12, '2020_12_15_212759_create_designs_table', 1),
(13, '2020_12_15_213336_create_websites_table', 1),
(14, '2020_12_15_231208_create_hostings_table', 1),
(15, '2020_12_15_231952_create_domains_table', 1),
(16, '2021_01_27_190025_create_client_user_table', 1),
(17, '2021_01_28_191121_create_methods_table', 1),
(18, '2021_01_28_191241_create_purposes_table', 1),
(19, '2021_02_02_220626_create_projects_table', 1),
(20, '2021_02_02_221732_create_project_user_table', 1),
(21, '2022_07_24_090512_create_client_project_table', 1),
(22, '2022_08_04_132514_add_photo_to_users_table', 1),
(23, '2022_08_06_083205_create_modules_table', 1),
(24, '2023_02_16_101104_add_phone_users_table', 1),
(25, '2023_02_20_095745_create_expances_table', 1),
(26, '2023_02_28_050458_create_note_categories_table', 1),
(27, '2023_02_28_050509_create_notes_table', 1),
(28, '2023_02_28_050757_create_note_users_table', 1),
(29, '2023_04_12_155402_create_searvices_table', 1),
(30, '2023_04_16_044653_create_packages_table', 1),
(31, '2023_04_18_091328_create_quotations_table', 1),
(32, '2023_04_28_131437_create_invoices_table', 1),
(33, '2023_04_28_195513_create_transactions_table', 1),
(34, '2023_04_29_123411_add_invoice_id_to_projects_table', 1),
(35, '2023_05_08_155456_create_todos_table', 1),
(36, '2023_05_08_171817_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(2, 'User', 'user', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(3, 'Authorizations', 'authorizations', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(4, 'Leads', 'leads', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(5, 'Client', 'client', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(6, 'Platform', 'platform', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(7, 'Packages', 'packages', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(8, 'Services', 'services', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(9, 'Quotation', 'quotation', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(10, 'Invoice', 'invoice', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(11, 'Project', 'project', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(12, 'Note', 'note', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(13, 'Expanse', 'expanse', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(14, 'Method', 'method', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(15, 'Purpose', 'purpose', '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(16, 'Transaction', 'transaction', '2023-05-13 06:58:51', '2023-05-13 06:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note_category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `notes` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_categories`
--

CREATE TABLE `note_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_user`
--

CREATE TABLE `note_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `descriptions` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `show_name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `show_name`, `guard_name`, `module_name`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.show', 'Show Dashboard', 'web', 'Dashboard', 1, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(2, 'dashboard.edit', 'Edit Dashboard', 'web', 'Dashboard', 1, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(3, 'user.show', 'Show User', 'web', 'User', 2, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(4, 'user.index', 'Manage User', 'web', 'User', 2, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(5, 'user.create', 'Create User', 'web', 'User', 2, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(6, 'user.edit', 'Edit User', 'web', 'User', 2, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(7, 'user.delete', 'Delete User', 'web', 'User', 2, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(8, 'authorization.show', 'Show Authorizations', 'web', 'Authorizations', 3, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(9, 'authorization.index', 'Manage Authorizations', 'web', 'Authorizations', 3, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(10, 'authorization.create', 'Create Authorizations', 'web', 'Authorizations', 3, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(11, 'authorization.edit', 'Edit Authorizations', 'web', 'Authorizations', 3, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(12, 'authorization.delete', 'Delete Authorizations', 'web', 'Authorizations', 3, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(13, 'leads.index', 'Show Leads', 'web', 'Leads', 4, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(14, 'leads.create', 'Manage Leads', 'web', 'Leads', 4, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(15, 'leads.edit', 'Create Leads', 'web', 'Leads', 4, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(16, 'leads.delete', 'Edit Leads', 'web', 'Leads', 4, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(17, 'leads.download', 'Delete Leads', 'web', 'Leads', 4, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(18, 'client.show', 'Show Client', 'web', 'Client', 5, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(19, 'client.index', 'Manage Client', 'web', 'Client', 5, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(20, 'client.create', 'Create Client', 'web', 'Client', 5, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(21, 'client.edit', 'Edit Client', 'web', 'Client', 5, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(22, 'client.delete', 'Delete Client', 'web', 'Client', 5, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(23, 'platform.show', 'Show Platform', 'web', 'Platform', 6, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(24, 'platform.index', 'Manage Platform', 'web', 'Platform', 6, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(25, 'platform.create', 'Create Platform', 'web', 'Platform', 6, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(26, 'platform.edit', 'Edit Platform', 'web', 'Platform', 6, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(27, 'platform.delete', 'Delete Platform', 'web', 'Platform', 6, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(28, 'packages.show', 'Show Packages', 'web', 'Packages', 7, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(29, 'packages.index', 'Manage Packages', 'web', 'Packages', 7, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(30, 'packages.create', 'Create Packages', 'web', 'Packages', 7, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(31, 'packages.edit', 'Edit Packages', 'web', 'Packages', 7, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(32, 'packages.delete', 'Delete Packages', 'web', 'Packages', 7, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(33, 'services.show', 'Show Services', 'web', 'Services', 8, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(34, 'services.index', 'Manage Services', 'web', 'Services', 8, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(35, 'services.create', 'Create Services', 'web', 'Services', 8, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(36, 'services.edit', 'Edit Services', 'web', 'Services', 8, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(37, 'services.delete', 'Delete Services', 'web', 'Services', 8, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(38, 'quotation.show', 'Show Quotation', 'web', 'Quotation', 9, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(39, 'quotation.index', 'Manage Quotation', 'web', 'Quotation', 9, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(40, 'quotation.create', 'Create Quotation', 'web', 'Quotation', 9, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(41, 'quotation.edit', 'Edit Quotation', 'web', 'Quotation', 9, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(42, 'quotation.delete', 'Delete Quotation', 'web', 'Quotation', 9, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(43, 'quotation.invoice', 'Invoice Quotation', 'web', 'Quotation', 9, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(44, 'invoice.show', 'Show Invoice', 'web', 'Invoice', 10, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(45, 'invoice.index', 'Manage Invoice', 'web', 'Invoice', 10, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(46, 'invoice.create', 'Create Invoice', 'web', 'Invoice', 10, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(47, 'invoice.edit', 'Edit Invoice', 'web', 'Invoice', 10, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(48, 'invoice.delete', 'Delete Invoice', 'web', 'Invoice', 10, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(49, 'project.show', 'Show Project', 'web', 'Project', 11, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(50, 'project.index', 'Manage Project', 'web', 'Project', 11, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(51, 'project.create', 'Create Project', 'web', 'Project', 11, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(52, 'project.edit', 'Edit Project', 'web', 'Project', 11, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(53, 'project.delete', 'Delete Project', 'web', 'Project', 11, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(54, 'note.show', 'Show Note', 'web', 'Note', 12, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(55, 'note.index', 'Manage Note', 'web', 'Note', 12, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(56, 'note.create', 'Create Note', 'web', 'Note', 12, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(57, 'note.edit', 'Edit Note', 'web', 'Note', 12, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(58, 'note.delete', 'Delete Note', 'web', 'Note', 12, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(59, 'expanse.show', 'Show Expanse', 'web', 'Expanse', 13, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(60, 'expanse.index', 'Manage Expanse', 'web', 'Expanse', 13, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(61, 'expanse.create', 'Create Expanse', 'web', 'Expanse', 13, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(62, 'expanse.edit', 'Edit Expanse', 'web', 'Expanse', 13, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(63, 'expanse.delete', 'Delete Expanse', 'web', 'Expanse', 13, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(64, 'method.show', 'Show Method', 'web', 'Method', 14, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(65, 'method.index', 'Manage Method', 'web', 'Method', 14, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(66, 'method.create', 'Create Method', 'web', 'Method', 14, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(67, 'method.edit', 'Edit Method', 'web', 'Method', 14, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(68, 'method.delete', 'Delete Method', 'web', 'Method', 14, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(69, 'purpose.show', 'Show Purpose', 'web', 'Purpose', 15, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(70, 'purpose.index', 'Manage Purpose', 'web', 'Purpose', 15, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(71, 'purpose.create', 'Create Purpose', 'web', 'Purpose', 15, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(72, 'purpose.edit', 'Edit Purpose', 'web', 'Purpose', 15, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(73, 'purpose.delete', 'Delete Purpose', 'web', 'Purpose', 15, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(74, 'transaction.show', 'Show Transaction', 'web', 'Transaction', 16, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(75, 'transaction.index', 'Manage Transaction', 'web', 'Transaction', 16, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(76, 'transaction.create', 'Create Transaction', 'web', 'Transaction', 16, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(77, 'transaction.edit', 'Edit Transaction', 'web', 'Transaction', 16, '2023-05-13 06:58:51', '2023-05-13 06:58:51'),
(78, 'transaction.delete', 'Delete Transaction', 'web', 'Transaction', 16, '2023-05-13 06:58:51', '2023-05-13 06:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `featureds` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`featureds`)),
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `credential` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'New',
  `progress` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `files` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purposes`
--

CREATE TABLE `purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` varchar(255) NOT NULL,
  `qut_date` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `total_price` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `grand_total` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `steps` enum('created','sender','updated','cti') NOT NULL DEFAULT 'created',
  `trams_of_service` longtext DEFAULT NULL,
  `payment_policy` longtext DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', 0, '2023-05-13 06:58:51', '2023-05-13 06:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searvices`
--

CREATE TABLE `searvices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `platforms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`platforms`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `users` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`users`)),
  `date` varchar(255) NOT NULL,
  `about_todo` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `priority` varchar(255) NOT NULL DEFAULT 'Normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transactionable_id` bigint(20) UNSIGNED NOT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transactionable_type` varchar(255) NOT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_status` enum('Paid','Pending','Due','Cancel','Failed') NOT NULL DEFAULT 'Paid',
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
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `photo`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, NULL, '$2y$10$WIZgw8qUNW3thLY/namnOeGqdEBs9LacFvfRhtNBIBXWqfElvD5LC', NULL, NULL, NULL, '2023-05-13 06:58:52', '2023-05-13 06:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_project`
--
ALTER TABLE `client_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_user`
--
ALTER TABLE `client_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designs_name_unique` (`name`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_name_unique` (`name`);

--
-- Indexes for table `expanses`
--
ALTER TABLE `expanses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_quotation`
--
ALTER TABLE `feature_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostings`
--
ALTER TABLE `hostings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hostings_name_unique` (`name`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_client_id_foreign` (`client_id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `methods_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_module_name_unique` (`module_name`),
  ADD UNIQUE KEY `modules_slug_unique` (`slug`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_note_category_id_foreign` (`note_category_id`);

--
-- Indexes for table `note_categories`
--
ALTER TABLE `note_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note_user`
--
ALTER TABLE `note_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `note_user_note_id_foreign` (`note_id`),
  ADD KEY `note_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_name_unique` (`name`),
  ADD KEY `packages_platform_id_foreign` (`platform_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_show_name_unique` (`show_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `platforms_name_unique` (`name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purposes`
--
ALTER TABLE `purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purposes_name_unique` (`name`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_client_id_foreign` (`client_id`),
  ADD KEY `quotations_created_by_foreign` (`created_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `searvices`
--
ALTER TABLE `searvices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `searvices_service_name_unique` (`service_name`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_received_by_foreign` (`received_by`),
  ADD KEY `transactions_payment_by_foreign` (`payment_by`),
  ADD KEY `transactions_method_id_foreign` (`method_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `websites_name_unique` (`name`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `works_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_project`
--
ALTER TABLE `client_project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_user`
--
ALTER TABLE `client_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designs`
--
ALTER TABLE `designs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expanses`
--
ALTER TABLE `expanses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_quotation`
--
ALTER TABLE `feature_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostings`
--
ALTER TABLE `hostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_categories`
--
ALTER TABLE `note_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_user`
--
ALTER TABLE `note_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purposes`
--
ALTER TABLE `purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `searvices`
--
ALTER TABLE `searvices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_note_category_id_foreign` FOREIGN KEY (`note_category_id`) REFERENCES `note_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `note_user`
--
ALTER TABLE `note_user`
  ADD CONSTRAINT `note_user_note_id_foreign` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `quotations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `methods` (`id`),
  ADD CONSTRAINT `transactions_payment_by_foreign` FOREIGN KEY (`payment_by`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `transactions_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
