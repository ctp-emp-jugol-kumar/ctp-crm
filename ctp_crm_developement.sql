-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 10:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctp_crm_developement`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lead',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Yamin Islam', 'reximecotextile@gmail.com', '01790222221', NULL, NULL, 'REXIM ECOTEXTILE INDUSTRIES LIMITED', 'Kazi Tower, Floor: 06 , Suite-6/C, Kuril Bishwaroad, Dhaka - 1229', 'Already reximecotextile.com and ktexbd.com 2i ta website order korse.. 2k taka pai onar kache.', 'Converted to Customer', '2021-02-08 15:19:34', '2021-02-11 13:05:41'),
(9, 'Zayan khan', 'zayn.khan0007@gmail.com', '01940096816', NULL, NULL, 'vaultmonarch.com', '98 boro magbazar , easter rokeya tower flat #1/601', NULL, 'Converted to Customer', '2021-02-09 02:08:09', '2021-02-09 02:08:09'),
(10, 'Rakesh saha', 'rakesh.saha@hams.com.bd', '01730304270', NULL, NULL, 'Hams Group', 'Block # F, House # 1, Road # 6,Niketon,', NULL, 'Converted to Customer', '2021-02-09 02:08:55', '2021-02-09 02:08:55'),
(11, 'Israt jahan diana', 'Isratjahandiana93@gmail.com', '01711585400', NULL, NULL, 'deshiolimited.com', '17/a(panna garden),road no 6,\r\nsekhertek shamoly housing Mohammadpur', NULL, 'Converted to Customer', '2021-02-09 02:11:21', '2021-02-09 02:11:21'),
(12, 'MR Nayem', 'techstreet.ltd@gmail.com', '01928011265', NULL, NULL, 'techstreet.ltd', 'H- 34, Rd No. 16 Nikunjo - 2', NULL, 'Converted to Customer', '2021-02-09 02:11:56', '2021-02-09 02:11:56'),
(13, 'zaheer khaled', 'zaheerkhaled@yahoo.com', '01710911288', NULL, NULL, 'BTAZ International Sourcing.', 'House # 27 Road # 15 Sector # 03\r\nUttara', NULL, 'Converted to Customer', '2021-02-09 02:12:24', '2021-02-09 02:12:48'),
(14, 'Md Mostafizur Rahman', 'admin@loyalarbitration.com', '01711085311', NULL, NULL, NULL, NULL, 'E-commerce/ BuySell Website Project Budget 30000 TK - 50000 TK,Sir kaj diea desa ono company.', 'Disqualified', '2021-02-09 02:14:27', '2022-06-01 10:00:27'),
(15, 'Ziko', 'ziko@partex.net', '01713479775', NULL, NULL, 'Agm it', '01713479775', 'Business Website.Proposal and Demo Sent.\r\n04.06.2022 onno protisthan theke niyese tai ar kono service apatoto lagbena . lagle janabe', 'Contacted', '2021-02-09 22:28:18', '2022-06-04 08:02:11'),
(16, 'shamsul huda', 'shamsul.bhuiyan@varnel.com.bd', '01844670388', NULL, '0244612501', 'baribhara.com.bd', 'Katabon, Dhaka', 'ecommerce website-proposal and damo sent', 'Converted to Customer', '2021-02-10 02:40:12', '2021-07-07 11:49:02'),
(17, 'Abdur Robe sir', 'rouf.mnupack@mnubd.com', '01713244026', NULL, NULL, NULL, NULL, 'ecommerce website and mobile basic apps proposal and damo sent.korabe na', 'Disqualified', '2021-02-10 02:44:30', '2022-06-01 10:07:49'),
(18, 'MD SUNBIR MOSTAFA', 'SUNBIR.MOSTAFA@GMAIL.COM', '01674493504', NULL, NULL, 'farzanaahmedbd.com', NULL, 'Corporate/ Company Website  10k Budget  Already developed and search engine optimized www.farzanaahmedbd.com need to be visually optimized with good appearance, sharp images and fonts, and pleasing color. This site has less than 10 static pages.\r\n\r\nour price is so much high', 'Disqualified', '2021-02-11 07:42:11', '2022-06-21 05:06:39'),
(19, 'Mizanur Rahman', 'sinthybusinessgroup@gmail.com', '01300683458', NULL, NULL, NULL, NULL, 'Corporate/ Company Website  10k budget  Propose company namae Chake free domino which name A&D soliution ltd A&D Corporation ltd A&D Development ltd. On point ltd. Oval solution ltd.', 'Disqualified', '2021-02-11 07:44:03', '2022-06-14 09:25:25'),
(20, 'Md Shohrab Hossain', 'shohrab@serac-bd.org', '01646678578', NULL, NULL, 'SERAC Bangladesh', 'C-4, House #140/141, Road #8, Block #B, Mirpur-12, Dhaka-1216', 'Nonprofit/ Foundation Website  Budget	200000 TK - 500000 TK    Dear Concern, Greetings from SERAC Bangladesh! Please send us a Quotation with an international feature for Conference Website. Looking forward to hearing from you soon.', 'Proposal Sent', '2021-02-11 07:51:12', '2022-06-21 06:40:02'),
(22, 'Mahmudul Hasan Rony', 'mhrony44@gmail.com', '01676527751', NULL, NULL, 'hisnhersbd.com', 'Permanent Address:Vill:Bhaor kot,P.O:Joyag,Upazilla:Sonaimuri,Noakhali', 'The E-commerce website, p 1 - 20000/=, 1k paid for Domain, rest of the advance will pay within 3 days.', 'Converted to Customer', '2021-02-13 03:10:11', '2021-02-13 08:26:44'),
(26, 'Arifur Rahman', 'ar944164@gmail.com', '01609082521', NULL, '01611595752', 'childnews.co.uk', NULL, 'Business website-Sir coming to evening time', 'Converted to Customer', '2021-02-13 22:16:38', '2021-07-07 12:06:34'),
(27, 'saad ibne abdul awaal', 'saad.ibneabdulawaal@gmail.com', '01772922085', NULL, NULL, 'asestechbd.com', '69, 71 New Elephant Rd,', NULL, 'Converted to Customer', '2021-02-13 22:27:09', '2021-02-14 03:59:58'),
(28, 'Tanveer H Chowdhury', 'chowdhurytanveerhossain@gmail.com', '+1(646)202-3622', NULL, NULL, NULL, NULL, 'USA theke contact korse new york theke onar ekta ecommece website lagbe.. onake proposal pathan then whatsapp e contact koren.. kaj diye dibe...\r\nyes sir i did a meeting through WhatsApp, and he tell me that he will work with us ,  within 2 days he will confirm that .', 'Converted to Customer', '2021-02-14 04:45:09', '2021-02-28 06:08:53'),
(29, 'SAMI', 'sitraders9994@gmail.com', '01608266631', NULL, NULL, NULL, NULL, 'Whatsapp e contact korse.. call dite dekhen ki chay... ecommerce website korabe..\r\n04.06.2022 Call receive korsena\r\n15.06.2022-kisudin por call dite hobe', 'Contacted', '2021-02-14 04:47:28', '2022-06-15 07:53:44'),
(30, 'Rupom Telecom Rajbari', 'ruomsheikh9@gmail.com', '01306086400', NULL, NULL, NULL, NULL, 'Looking for E-commerce/ BuySell Website Budget 10k\r\n04.06.2022 Number  off\r\n15.06.2022-Number off\r\n\r\nnot interested', 'Disqualified', '2021-02-17 03:13:10', '2022-06-15 07:55:21'),
(31, 'Russel Qurasishy', NULL, '01721404101', NULL, NULL, NULL, NULL, 'website form create korbe existing one e..pore kotha bolbe', 'Disqualified', '2021-02-17 03:18:53', '2022-06-01 10:08:22'),
(32, 'Doha Movers And Packers', NULL, '+97430300215', NULL, NULL, 'Dohamoversandpackers.com', NULL, 'Seo service nite chay moving service er jonno dohate tar business... Aikhane onk gula moving services ace jader website goggle top Ranking a ami amar website ante cai..\r\n04.06.2022 Call jaina\r\n\r\nprice is so much high.', 'Contacted', '2021-02-17 03:27:39', '2022-06-05 11:28:48'),
(33, 'Juned Nurani', 'junednurani@hotmail.com', '+447869108549', NULL, NULL, NULL, NULL, 'Ecommerce website korabe ami 25 bole disi... onake sob demo o mail kore disi already... whats app e contact koren..', 'Disqualified', '2021-02-17 03:38:42', '2022-06-20 03:20:43'),
(34, 'SHOHID', NULL, '+97336933790', NULL, NULL, NULL, NULL, 'Whatsapp e contact korse..\r\n04.06.2022 Call duksena\r\n15.06.2022-Call dukena', 'Disqualified', '2021-02-17 03:40:26', '2022-06-15 07:55:58'),
(35, 'Sujan Husan', 'sujanhusan@gmail.com', '01976399333', NULL, NULL, NULL, NULL, 'business website korbe.. electronics er dokan er jonno... proposal pathan then phn din...', 'Contacted', '2021-02-17 08:50:51', '2022-06-05 11:29:26'),
(36, 'Md Monir sir', 'info@udceducation.com', '01975940077', NULL, NULL, 'Unique Dream Consultant', 'sonike kalab,house-86,Aminabuban 3th floor,new air port road.', NULL, 'Qualified', '2021-02-17 09:09:54', '2021-07-07 12:28:46'),
(37, 'Ashiqur Rahman', 'reson63@gmail.com', '01612730004', NULL, NULL, NULL, NULL, 'ecommerce website  no response', 'Disqualified', '2021-02-18 05:33:31', '2022-05-31 04:21:05'),
(39, 'Santo Khan', NULL, '01970345701', NULL, '01788160711', NULL, NULL, 'https:// / etar moto news portal korbe...\r\n04.06.2022 Monday office a asbe. News Portal website banabe\r\n\r\n2 number website', 'Contacted', '2021-02-20 03:39:58', '2022-06-04 07:41:59'),
(40, 'Unknown', NULL, '01870035894', NULL, NULL, NULL, NULL, 'No Response\r\n04.06.2022  gosol korse ,pore abar call korte hobe', 'Contacted', '2021-02-20 03:46:41', '2022-06-05 10:35:17'),
(41, 'Ejaz Rasul', 'ejazrasul2007@yahoo.com', '01817079641', NULL, NULL, 'Padma Oxygen Limited', 'House 11, Road 9, Block C, Section 6, Mirpur', NULL, 'Converted to Customer', '2021-02-20 03:50:19', '2021-02-27 00:15:45'),
(42, 'oian sir', NULL, '01813763009', NULL, '01650076386', NULL, NULL, NULL, 'Converted to Customer', '2021-02-20 06:46:08', '2021-02-22 23:05:45'),
(43, 'Kapil sir', 'kapildeb1992@gmail.com', '01642839486', NULL, NULL, 'Point of traint textile', 'Gulshan-1,Road-8,Bwd12/A,', 'photo graphy and graphichDesign and business website', 'Disqualified', '2021-02-20 06:53:40', '2022-06-01 10:09:29'),
(44, 'Md Monir Hossain', 'rizvifruitsltd@gmail.com', '01713013763', NULL, NULL, 'Rizvi Fruits Limited', '16/B Ahsanullah Road ,Badamtoli ,Dhaka -1100', 'Business Website-Package-3', 'Converted to Customer', '2021-02-20 06:57:28', '2021-07-07 11:25:09'),
(45, 'Khan Farhan Abir', 'khanfarhanabir44@gmail.com', '01824276161', NULL, NULL, NULL, NULL, 'requirement mail forward korsi.. mustakim@creativetechpark.com delivery system lagbe onar...\r\n04.06.2022 mobile off \r\n15.06.2022-Mobile Off\r\n\r\n\r\nit was my mistake', 'Disqualified', '2021-02-20 07:45:34', '2022-06-15 07:57:13'),
(46, 'Md Tazbir Hosan', 'cleaningcs1997@gmail.com', '01617622444', NULL, NULL, NULL, NULL, 'Business Website pakage-1-13000\r\nCleaning er upor jodi kono demo thake pathate bolesen', 'Contacted', '2021-02-20 08:16:52', '2022-06-04 04:36:37'),
(47, 'unknown', NULL, '01911359627', NULL, NULL, NULL, NULL, 'Korba Pora janaba\r\n04.06.2022 ekhon korte chaina .pore nujerai amader sathe jugajug korbe', 'Contacted', '2021-02-20 08:18:31', '2022-06-04 04:24:20'),
(48, 'julhas sir', 'julhas86miah@gmail.com', '01821666027', NULL, '01316445018', NULL, NULL, 'laravel multivandor covide -19\r\n04.06.2022 Call Receive korsena.\r\n15.06.2022-SEO ta korate chai ,package pathate hobe Pathalam', 'Proposal Sent', '2021-02-20 08:31:10', '2022-06-15 08:14:07'),
(49, 'Surja Mandal', 'surjamandal032@gmail.com', '01409770784', NULL, NULL, NULL, NULL, 'Ecommerce website korabe... facebook e knock korse..\r\n\\  number off\r\n\r\n\r\n\r\nnumber offf', 'Disqualified', '2021-02-20 14:41:31', '2022-06-01 10:09:55'),
(50, 'Olid', NULL, '01874955872', NULL, NULL, NULL, NULL, 'Whatsapp e knock korse..\r\nhacking\r\n04.06.2022 Call Receive korsena.', 'Contacted', '2021-02-21 11:54:49', '2022-06-05 11:30:28'),
(51, 'Rumun', NULL, '0 1314468492', NULL, NULL, NULL, NULL, 'Whatsapp e contact korse..\r\n04.06.2022 Call Receive korsena.\r\n15.06.2022 Call Receive korsena.', 'Disqualified', '2021-02-21 11:57:16', '2022-06-15 08:22:55'),
(52, 'Faysal Sir', 'operations.btta@gmail.com', '01713078746', NULL, NULL, 'B.T.Tex Access', 'House-205,Level-2,Road-worldise Relget,Mogbazar Dhaka-1215.', 'business website and grapise,Silader,Category Graphics Design', 'Disqualified', '2021-02-21 22:49:27', '2022-06-01 10:10:22'),
(53, 'shajib khandkur sir', NULL, '01310830135', NULL, NULL, NULL, NULL, 'Ecommerce Website,Pakage-1\r\n04.06.2022 onek besto pore abar call dite hobe', 'Contacted', '2021-02-21 22:52:37', '2022-06-04 04:14:47'),
(54, 'Shamim Zaman', 'msu.zaman25685@gmail.com', '01762208906', NULL, NULL, NULL, NULL, 'I need a fully professional e-commerce website as like as Amazon (in future).\r\n\r\nPls let me know detail.\r\nAlso pls share your demmo.\r\n\r\nPlease select an interesting name for \"SZ\" e.g, SZ Mart etc.\r\n\r\nWould appreciate your prompt reply.', 'Converted to Customer', '2021-02-22 04:56:26', '2021-02-24 06:37:53'),
(55, 'Sahidul Islam Rokib', 'rahib131011511@gmail.com', '01644930937', NULL, NULL, NULL, NULL, 'Will come to our office 25 February 3 pm .korabe na', 'Disqualified', '2021-02-22 05:27:42', '2022-06-01 11:30:29'),
(56, 'MD Shakendar', 'mdshakender@gmail.com', '01788559445', NULL, NULL, '3rd vision interior', NULL, 'website redesign korabbe.. interior design website... social media gula add kore dite hobe... like fb linkdin twitter youtube.. etc.. amader proposal pathan... then phn din...  phn diye email and website link chan.. if  need he  will call me', 'Disqualified', '2021-02-22 06:30:36', '2022-06-05 07:20:48'),
(57, 'Unknown', NULL, '01841243383', NULL, NULL, NULL, NULL, 'Dhanmondi theke ei mohila phn korse.. oni ekta website design korate chay.. onake office address text kora hoise..  onake phn diye email collect kore then proposal pathan..no response', 'Disqualified', '2021-02-22 09:48:53', '2022-06-05 03:56:07'),
(58, 'Mosharraf Hossain', 'mosharraf017178@gmail.com', '01771853797', NULL, '01713-002912', 'S.Rana Trading International', 'House No. 35/D, 1st Floor, Road No. 07, Block G, Banani, Dhaka- 1213, Bangladesh', 'Manpower Recruiting Agency er jonno business website create korbe..\r\n04.06.2022 ei muhurte kono service lagbena .tobe kono service lagle obossoy amk janaben', 'Contacted', '2021-02-23 06:06:07', '2022-06-04 04:05:58'),
(59, 'Arif Ullah', NULL, '01973650360', NULL, NULL, NULL, NULL, 'dupur 12 tay phn dise..\r\ncandidet\r\n04.06.2022 Mobile ta basai rekhe giyese.', 'Contacted', '2021-02-24 05:01:09', '2022-06-04 03:54:15'),
(60, 'unknown', NULL, '01716428790', NULL, NULL, NULL, NULL, 'https://classified2.ctpbd.com/\r\nbikroy er moto site Korte chay.. need to call 22.01.21', 'Disqualified', '2021-02-24 08:05:29', '2022-06-05 03:56:21'),
(61, 'trijit dhar', 'trijit@uap-bd.edu', '01933104590', NULL, NULL, NULL, NULL, 'AP website design packages sent... taj\r\nhis boss in in abroad , after 12 days tell me to again call , boss come back to dhaka bt need time .', 'Disqualified', '2021-02-24 08:23:05', '2022-06-05 07:20:59'),
(62, 'Wahid Ibn Ahsan', 'multitech.sales01@gmail.com', '1675844191', NULL, NULL, 'Multitech International', NULL, 'quotation sent, he is talking with his boss, possibility to give work order  January first week, he is out of Dhaka, tell me to call 12.01.21, fix meeting 17.01.21 at 11 am, meeting done, need 10 days  to manage data', 'Disqualified', '2021-02-24 08:24:27', '2022-06-05 07:21:15'),
(63, 'Md. Abdul Karim Raju', NULL, '01838832192', NULL, NULL, 'Globe Pharmaceuticals Group of Companies Ltd.', NULL, 'proposal sent  , he will forward mail to his boos and they will arrange meeting with us soon , \r\nmeeting also done', 'Disqualified', '2021-02-24 08:25:31', '2022-06-21 06:54:09'),
(64, 'Jakir Hossain', 'mab_2003@yahoo.com', '01713841145', 'dr.institute@yahoo.com', NULL, 'mab', NULL, 'Liberty Foundation', 'Disqualified', '2021-02-24 08:27:04', '2022-06-21 06:55:12'),
(65, 'aaa', 'ebfashion02@gmail.com', '01731372788', NULL, NULL, 'ebfashion', NULL, 'website redesign korabe..pac 1 , 12000=/ number off', 'Disqualified', '2021-02-24 08:28:00', '2022-06-05 07:58:18'),
(66, 'ripon', 'shezonripon@gmail.com', '01643522836', NULL, '01403294071', NULL, NULL, 'website and software', 'Disqualified', '2021-02-24 08:28:58', '2022-06-21 06:49:10'),
(67, 'mahtab', 'eco.mahatab@gmail.com', '01670736701', NULL, NULL, NULL, NULL, 'website design \r\ncame our office, need time to confirm with his MD sir', 'Disqualified', '2021-02-24 08:30:05', '2022-06-21 06:57:15'),
(68, 'Rahman Mizan', 'mzrsunny@gmail.com', '01707002001', NULL, NULL, NULL, NULL, 'looking for app and web Design developer .....\r\npossitive , he already sent all the information', 'Disqualified', '2021-02-24 08:31:38', '2022-06-21 07:07:08'),
(69, 'ncccul', 'ncccul.it@gmail.com', '01708056578', NULL, NULL, NULL, NULL, 'call not received', 'Disqualified', '2021-02-24 08:32:36', '2022-06-05 08:15:33'),
(70, 'aaa', 'mursel@msn.com', '01832854408', NULL, NULL, NULL, NULL, 'website design', 'Disqualified', '2021-02-24 08:33:30', '2022-05-31 10:01:04'),
(71, 'mahmudul hasan', NULL, '01811487951', NULL, NULL, 'Amin mohammad group', NULL, 'nest week , boss is in abrode', 'Contacted', '2021-02-24 08:35:03', '2022-06-21 07:18:30'),
(72, 'moynul islam', NULL, '01920469599', NULL, NULL, NULL, NULL, '--- website design...need time to take the decision', 'lead', '2021-02-24 08:38:56', '2022-03-03 09:26:56'),
(73, 'Afzal hossain', 'info.kentbangladesh@gmail.com', '01787678948', NULL, '0 1993779999', 'Kent Bangladesh', 'Dhaka Bangladesh', 'kenthoker/kentmerchant/kentsolution.com\r\nhe is suddenly being busy today, tell me to call tomorrow before 10 am\r\npositive, he will work this month kint', 'Converted to Customer', '2021-02-24 08:46:40', '2021-07-07 11:55:31'),
(74, 'Hasnine Fahim', 'megatechdhaka.gnbd@gmail.com', '01554688845', 'megatech.oilngasdivision@gmail.com', NULL, 'Megatech  GNBD', NULL, 'business website pakage-1-12ooo,Page Extra-2', 'Quote Sent', '2021-02-25 01:17:26', '2021-02-25 01:17:26'),
(75, 'hasan', 'hasanbd1966@gmail.com', '01758943899', NULL, NULL, 'export business', NULL, 'export business er website', 'lead', '2021-02-25 02:39:55', '2022-03-03 09:26:56'),
(76, 'mahir', 'mahiranisuzzaman@gmail.com', '1739494575', NULL, NULL, NULL, NULL, 'Corporate/ Company Website 10000 TK\r\npositive, need time to get confirmation from his elder one', 'lead', '2021-02-25 02:42:24', '2022-06-19 08:37:10'),
(77, 'Rupu Rayhan', 'rupu.rayhan@yahoo.com', '+447405793546', NULL, NULL, NULL, NULL, 'This is WhatsApp number: +447405793546 Requirement mail forward kore disi..', 'Disqualified', '2021-02-25 03:06:21', '2022-06-20 03:13:42'),
(78, 'Unknown', NULL, '01715411709', NULL, NULL, NULL, NULL, 'Call diye identify korun .. ar website design er jonno phn diyece..\r\nno interested now\r\n04.06.2022 Call Receive korsena.', 'Contacted', '2021-02-25 16:11:04', '2022-06-05 11:31:09'),
(79, 'sabrina', NULL, '01770791977', NULL, NULL, NULL, NULL, '14 tarikh phn diyece number off\r\n\r\npromotion company', 'Disqualified', '2021-02-25 16:12:03', '2022-06-05 08:15:43'),
(80, 'Fuad', NULL, '01813678774', NULL, NULL, 'Gallery Bangladesh', NULL, NULL, 'Disqualified', '2021-02-25 16:15:26', '2022-06-21 07:39:56'),
(81, 'Unknown', NULL, '01609564224', NULL, NULL, NULL, NULL, '16 tarikh phn dise\r\n\r\nwork started before 1 week', 'Contacted', '2021-02-25 16:20:10', '2022-06-05 11:31:35'),
(82, 'Rafikul islam', NULL, '01915400598', NULL, NULL, NULL, NULL, '19 tarikh phn dise..\r\nhe came to our office just for information', 'Disqualified', '2021-02-25 16:23:14', '2022-06-21 07:55:51'),
(83, 'Unknown', NULL, '01970741882', NULL, NULL, NULL, NULL, '19 tarikh phn dise . no answer number off', 'Disqualified', '2021-02-25 16:25:59', '2022-06-05 03:56:34'),
(84, 'Unknown', NULL, '01715028779', NULL, NULL, NULL, NULL, '21 tarikh phn die\r\n\r\nmoja nite ohone dise', 'Disqualified', '2021-02-25 16:28:22', '2022-06-20 04:00:18'),
(85, 'Uk client', NULL, '+447873055393', NULL, NULL, NULL, NULL, 'Contact whatsapp--', 'Disqualified', '2021-02-25 16:30:50', '2022-06-20 03:20:58'),
(86, 'Unknown', NULL, '01768483313', NULL, NULL, NULL, NULL, '25 tarikh phn dise\r\n\r\njob candidate', 'Disqualified', '2021-02-25 16:32:07', '2022-06-20 04:00:30'),
(87, 'Asif sir', 'mithunasif312@gmail.com', '01711706160', NULL, NULL, NULL, NULL, 'Business website-lawyer', 'Proposal Sent', '2021-02-26 07:03:31', '2021-03-07 00:03:57'),
(88, 'unknown', 'litontoronto@gmail.com', '01992821686', NULL, NULL, NULL, NULL, 'chain hotel website number invalid', 'Disqualified', '2021-02-27 03:41:23', '2022-06-05 03:56:45'),
(89, 'Isabella', 'rosepastry13@gmail.com', '01727508766', NULL, NULL, 'Rose Pastry', NULL, 'PreOrder System & course Enroll System', 'Qualified', '2021-02-27 03:57:35', '2021-04-27 03:55:13'),
(90, 'Mostafiju Rohman', NULL, '01811699722', NULL, NULL, NULL, NULL, 'Android and IOS -quotation pathabo', 'Disqualified', '2021-02-27 03:59:03', '2022-06-21 07:25:32'),
(91, 'Munir Hassan Mithu', 'mithu@appareltodayIimited.com.bd', '01615153724', NULL, NULL, 'apparel today', 'Gohailbari,Machinepar, Shimulia,Ashulia, Savar, Dhaka', NULL, 'Converted to Customer', '2021-02-27 06:39:48', '2021-05-02 06:39:47'),
(92, 'Anisuzzaman Mahir', 'mahiranisuzzaman@gmail.com', '01739494575', NULL, NULL, 'export business', NULL, 'Corporate/ Company Website 10000 TK\r\npositive, need time to get confirmation from his elder one', 'lead', '2021-02-27 06:50:56', '2022-03-03 09:26:56'),
(93, 'Md.Obaidur Rahman', 'pstsalman@gmail.com', '01740363361', NULL, NULL, 'mfasto.com', 'Dhaka-Raipur road', 'eCommerce website', 'Converted to Customer', '2021-02-27 06:54:11', '2021-07-07 11:23:17'),
(95, 'The Daly Morning', 'morningexpressbd@gmail.com', '01718742223', NULL, NULL, 'The daly Morning Experse', '54 Motizal 6th floor Dhaka-1000', 'Ecommerce website\r\n15.06.2022 Number Off', 'Disqualified', '2021-03-01 22:33:26', '2022-06-15 08:28:24'),
(96, 'Gias Uddin', 'gias.digitech@gmail.com', '01711562143', NULL, NULL, 'Digitech(Domain and Hosting) Have', 'Meheraba Plaza(Gr.Fl.)33TopKhana Road Dhaka-1000', 'Ecommerch website(Pakage-2)', 'Converted to Customer', '2021-03-02 22:26:00', '2021-03-03 07:35:24'),
(97, 'Tanjina akther', 'tanjinaakther072@gmail.com', '01748280867', NULL, NULL, NULL, NULL, 'Looking fo E-commerce/ BuySell Website  Low budget\r\nstudent\r\n15.06.2022 Call Receive korsena.\r\n18.06.2022-receive korena', 'Disqualified', '2021-03-03 07:20:50', '2022-06-18 07:13:08'),
(98, 'Fahim', NULL, '01793172115', NULL, NULL, NULL, NULL, 'Mobile app korabe', 'Contacted', '2021-03-03 07:28:02', '2022-06-05 11:32:40'),
(99, 'Noushin Tarannum', NULL, '01313768360', NULL, NULL, NULL, NULL, 'student `\r\n15.06.2022 Number Off thake', 'Disqualified', '2021-03-03 07:30:28', '2022-06-15 08:32:14'),
(100, 'Unknown', NULL, '0248961831', NULL, NULL, NULL, NULL, 'Ecommerce \r\n15.06.2022 Call Receive korsena.', 'Disqualified', '2021-03-03 07:31:38', '2022-06-15 09:08:46'),
(101, 'Unknown', NULL, '01756204446', NULL, NULL, NULL, NULL, '18.06.2022-Number Off', 'Disqualified', '2021-03-03 10:01:08', '2022-06-18 07:11:21'),
(102, 'Sayem Hossain', 'musayem@gmail.com', '+61401761595', NULL, NULL, 'Graduate School of Management Brac University', '66 Mohakhali, Dhaka 1212, Bangladesh', 'Contact Whatsapp\r\nI am based in Australia now, so my address and no. will not be of any use. I want to create a website like this - https://www.sasin.edu/\r\nCan you do it?\r\nMy time is 5 hrs plus than bd time. So better not call me after evening', 'Disqualified', '2021-03-03 10:09:00', '2022-06-06 03:56:06'),
(103, 'Jahirul Islam', 'jahir@uca.edu.bd', '01979901699', NULL, NULL, NULL, 'United College of Aviation, Science & Management House-16, Road-04, Sector-03, Uttara, Dhaka.', 'mail forward korsi apnake. \r\nwe want to create an e-learning website where anyone can upload the courses and anybody can learn or download. hope you understand. so that please send me your company profile and also proposal.', 'Disqualified', '2021-03-03 15:03:07', '2022-06-06 04:02:35'),
(104, 'mehidi', 'mdmehhediislam2016@gmail.com', '01831421681', NULL, NULL, NULL, NULL, 'ecommerce website. 1 week por calll dibo. number invalid', 'Disqualified', '2021-03-04 05:51:51', '2022-06-06 04:04:31'),
(105, 'Mehedi Ecommerce', 'mdmehediislam2021@gmail.com', '01757210455', NULL, NULL, NULL, NULL, '[6:35 PM, 3/4/2021] +880 1757-210455: I want to make s e-commerce website my requirement is\r\nhis partner covid effected \r\n1.Two Phone Number \r\n2.Two Email Account \r\n3. Colour selection \r\n4.size selection \r\nAnd Quantity selection \r\nMy E-Commerece products is\r\na.Home textile \r\nb.Home appliance \r\nc. All types of readymade garments dress like boyes girls kids\r\n[6:36 PM, 3/4/2021] +880 1757-210455: So how much prices need to me??', 'Contacted', '2021-03-04 06:47:05', '2022-06-05 11:33:44'),
(106, 'school', NULL, '01829729915', NULL, NULL, NULL, NULL, 'school er website banae... demo website pathabe....', 'Disqualified', '2021-03-04 07:11:43', '2022-06-06 04:04:14'),
(107, 'website', NULL, '01982488202', NULL, NULL, NULL, NULL, 'very much positive,website - Next month 1st week pore call dibe', 'Disqualified', '2021-03-04 07:12:53', '2022-06-18 10:49:22'),
(108, 'zahid hasan', 'z.khandoker35@gmail.com', '01620647878', NULL, NULL, NULL, NULL, 'website design package 1 low price e Korte chay, I told 11000 no response', 'Disqualified', '2021-03-04 07:13:45', '2022-06-06 10:12:31'),
(109, 'syedq', 'syedq.minds@gmail.com', '01300378324', NULL, NULL, NULL, NULL, 'Corporate/ Company Website  15000 TK - 20000 TK number off', 'Disqualified', '2021-03-04 07:14:52', '2022-06-06 04:07:46'),
(110, 'unknown', 'bdconquest@gmail.com', '01798212151', NULL, NULL, NULL, NULL, 'Corporate/ Company Website  Less Than 10000 TK', 'Disqualified', '2021-03-04 07:15:43', '2022-06-05 04:12:13'),
(111, 'rejaul Alom', NULL, '01710330756', NULL, NULL, NULL, NULL, 'will start new number off', 'Disqualified', '2021-03-04 07:20:58', '2022-06-15 07:42:22'),
(112, 'Hasan Tanveer', 'tanveer115117@gmail.com', '01676349038', NULL, NULL, NULL, NULL, '250k quote korben..\r\nneed a quotation for building an app\r\n[11:14 PM, 3/5/2021] +880 1676-349038: need to develop a restaurant booking app. Customers will get a voucher after booking\r\n[11:15 PM, 3/5/2021] +880 1676-349038: Restaurants owners can put discounts on their menu\r\n[11:15 PM, 3/5/2021] +880 1676-349038: I can help with making the icon, app flow diagram and UI sketch\r\n[11:15 PM, 3/5/2021] +880 1676-349038: I want to do it on flutter\r\n[11:15 PM, 3/5/2021] +880 1676-349038: Email: tanveer115117@gmail.com\r\nno response', 'Disqualified', '2021-03-05 12:15:08', '2022-06-15 07:47:45'),
(113, 'unknown', 'tutulmy@gmail.com', '01914225356', NULL, NULL, NULL, 'House-cwna,3b Road-49,Gulshan-2', 'Ecommrece website\r\n18.06.2022-Onno protisthan theke niyese.', 'Contacted', '2021-03-06 02:30:24', '2022-06-18 07:10:22'),
(114, 'MD. Mahir (ROAR Retail)', 'roarretail787@gmail.com', '01705043605', NULL, NULL, 'ROAR Retail', NULL, 'ROAR Retail er Jonno eCommerce website korabe p3 diben.. all payment gateway integration hobe..', 'Disqualified', '2021-03-06 06:51:58', '2022-06-15 07:48:14'),
(115, 'Unknown', NULL, '+19292182658', NULL, NULL, NULL, NULL, '18.06.2022-Invelid number', 'Disqualified', '2021-03-06 06:53:35', '2022-06-18 07:08:20'),
(116, 'Unknown  deliver', NULL, '01786306564', NULL, NULL, NULL, NULL, 'already given to another company', 'Contacted', '2021-03-06 06:59:23', '2022-06-05 11:34:39'),
(117, 'Sadia Sunny', 'dollhousejewelryusa11@gmail.com', '+19293953013', NULL, NULL, 'Dollhouse Jewelry', '32-14 30th street Astoria 1st floor zip 11106 New York', 'Package 2 nibe.. ekhn only tk send korbe.. kuno discount dei nai.. call kore kore tk chan.. already system e registration o kore disi.. domain name ta confirm korben...', 'Disqualified', '2021-03-06 07:06:49', '2022-06-15 07:54:23'),
(118, 'Mehedi', 'mtbabo57@gmail.com', '01798717185', NULL, NULL, NULL, NULL, 'website design korate chay.. proposal sent kore confirm koren..\r\nstudent', 'Contacted', '2021-03-06 09:16:03', '2022-06-05 11:35:04'),
(119, 'MD Iqbal Khan', 'mohammadiqbalkhan@gmail.com', '01755525586', NULL, NULL, NULL, NULL, 'proposal pathate hobe -Android APPS-W0RD PRESS', 'Contacted', '2021-03-06 09:18:24', '2022-06-05 11:35:29'),
(120, 'Imtiaj', 'imtiaz.ogl@gmail.com', '01708462263', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Disqualified', '2021-03-07 00:08:35', '2022-06-18 10:27:31'),
(121, 'Roman Raihan', 'roman@icreation.com.bd', '01711589987', NULL, NULL, 'I Creation Ltd.', 'ABC Spring Flower, House 52, Road 02, Banani, Dhaka 1213', 'Quotation for an E-commerce website ( laravel and customize) ( android & IOS) Design and Development.', 'Contacted', '2021-03-07 00:17:42', '2022-06-05 11:36:29'),
(122, 'Asif sir', 'asifahmedfahim32207@gmail.com', '01787386534', NULL, NULL, NULL, NULL, 'business website-mongol bar asba. Hostpital serial apps. korabe na', 'Disqualified', '2021-03-07 22:27:01', '2022-05-31 10:28:14'),
(123, 'unknown', NULL, '01714325325', NULL, NULL, NULL, NULL, 'goole map intergation', 'Contacted', '2021-03-07 22:29:32', '2022-06-05 11:37:08'),
(124, 'MD Khayrul Baser', 'smartbaser@gmail.com', '01979215338', 'pinkyeco@gmail.com', '01928646134', 'Smart Distribution (pvt) ltd', '129 New Eskaton Road, Eskaton Tower (2nd Floor), Ramna', NULL, 'Converted to Customer', '2021-03-08 01:14:10', '2021-03-14 06:40:30'),
(125, 'Asikur Rahman', 'mdshaon141@gmail.com', '01787081119', NULL, NULL, NULL, NULL, 'business website', 'Disqualified', '2021-03-08 03:35:33', '2022-06-15 07:53:56'),
(126, 'Abc sufan sir', 'abcsufian@gmail.com', '01714066243', NULL, NULL, 'TEXT 1971', 'House-2,(Level-4),Road-02,Gudara Ghat,Gulshan,Badda Link Road,Gulshan-01,Dhaka-1212', 'busnis website', 'Converted to Customer', '2021-03-09 22:13:54', '2021-07-07 13:19:46'),
(127, 'Rajun sir', 'rajon@dadadhaka.com', '01717057866', NULL, NULL, NULL, NULL, 'Busniess website', 'Contacted', '2021-03-11 02:11:48', '2022-06-05 11:37:36'),
(128, 'unknown', 'alim.babu54@gmail.com', '01869347047', NULL, NULL, 'unknown', NULL, 'He will Create Business website . 13/03/2021 Called him, He is interested. Will work next month number off', 'Disqualified', '2021-03-14 07:00:33', '2022-06-05 07:58:33'),
(129, 'Yemen hasan', 'yemen9016@gmail.com', '01919789016', NULL, NULL, 'Yemen Shop', NULL, 'Ecommerce website. Interested . Need redesign for yemenbd.com', 'Disqualified', '2021-03-14 07:03:42', '2022-06-15 07:57:54'),
(130, 'Johir Uddin Titu', NULL, '01882140021', NULL, NULL, 'Hotel Affad Inn.', NULL, 'Will create a website for Hotel.number off', 'Disqualified', '2021-03-14 07:07:21', '2022-06-18 10:49:04'),
(131, 'hanifizjaman', NULL, '01674684559', NULL, NULL, NULL, NULL, '2 website, I will talk to him after 1 month. not recived. if need he will call me.', 'Disqualified', '2021-03-14 07:16:41', '2022-06-18 10:29:27'),
(132, 'Hasan', 'ahsanul_eel@esquirebd.com', '01709636141', NULL, NULL, 'esqure electronics', NULL, 'Website complete . G sutite proposal sent. I will call him for g suite. G-Suite interested. Call him next. pore call dibe', 'Disqualified', '2021-03-14 07:19:22', '2022-06-18 10:27:24'),
(133, 'unknown', NULL, '01755606109', NULL, NULL, NULL, NULL, 'if need,,he will call me. website done by others', 'Disqualified', '2021-03-14 07:22:09', '2022-06-05 07:59:01'),
(134, 'Rony tanvir moon', NULL, '01728946020', NULL, NULL, NULL, NULL, 'will create ecommerce website.  Call after  1 Hour. Call not recived.', 'Disqualified', '2021-03-14 07:26:41', '2022-06-18 07:38:32'),
(135, 'jakaria', NULL, '01716746539', NULL, NULL, NULL, NULL, 'website design. Not recived. not interested', 'Disqualified', '2021-03-14 07:27:48', '2022-06-18 09:49:35'),
(136, 'unknown', NULL, '01319801958', NULL, NULL, NULL, NULL, 'delivery website. He is busy, number off', 'Disqualified', '2021-03-14 07:28:45', '2022-06-05 07:59:09'),
(137, 'aktaruzzaman', 'bidduth317@gmail.com', '01773212427', NULL, NULL, NULL, NULL, 'Tution website. Need to send proposal . proposal send done. pore jogajog korbe. quotation send. number off', 'Disqualified', '2021-03-14 07:29:40', '2022-05-31 10:03:07'),
(138, 'Unknown', 'alam_ena@gmail.com', '01941678681', NULL, NULL, NULL, NULL, 'ecommerce korate chay.. package 1 --Proposal sent-', 'Contacted', '2021-03-14 08:47:06', '2022-06-05 11:38:03'),
(139, 'shohag', 'shohag.it@galaxybd.com', '01777763881', NULL, NULL, NULL, NULL, 'website design proposal sent  quater airways er official agent ora.. corporate website banabe....call not recceived', 'Contacted', '2021-03-14 08:48:10', '2022-06-05 11:38:31'),
(140, 'Mohammad Sohag', 'maplawbd@gmail.com', '01741448244', NULL, NULL, NULL, NULL, 'Looking for	Corporate/ Company Website\r\nBudget 10k \r\nI have been looking for a Web Developer who will handle all my website and mailing related issues for my new Law firm. To be more specific, I need service like domain buying, hosting, website design and development. If interested, please email me your quotation and link of your previous experience of any law firm website development. Thanks in advance, Mohammad Sohag Corp Lawyer', 'Disqualified', '2021-03-14 16:40:00', '2022-06-18 10:06:50'),
(141, 'Unknown', NULL, '01924898137', NULL, '01614898137', NULL, NULL, 'He need a bulk sms apps.He will call us soon.', 'Contacted', '2021-03-14 23:13:39', '2022-06-05 11:39:01'),
(142, 'Unknown', 'forhad@nclbd.net', '01797184157', NULL, NULL, NULL, NULL, 'App development Proposal Sent.', 'Disqualified', '2021-03-14 23:19:38', '2022-06-05 04:12:49'),
(143, 'Unknown', NULL, '01886550000', NULL, NULL, NULL, NULL, 'business website korabe.. ..Pore Korabe..jkhn need hbe he will call us', 'Disqualified', '2021-03-14 23:34:47', '2022-06-21 10:02:59'),
(144, 'Eshak', 'eshakuddin123@gmail.com', '01991398026', NULL, NULL, NULL, NULL, 'ecommerce website korbe, kichu din por amader knock korbe.. 31/03/2021--Phone Not recived', 'Disqualified', '2021-03-14 23:35:05', '2022-06-18 07:38:07'),
(145, 'unknown', 'it@spacebd.biz', '01611026594', NULL, NULL, 'spacebd.biz', NULL, 'Busy, Next time call him website done by other', 'Disqualified', '2021-03-14 23:42:00', '2022-06-05 07:59:20'),
(146, 'unknown', 'jamanmunir@yahoo.com', '01841340787', NULL, NULL, NULL, NULL, 'kaj  kore felse', 'Disqualified', '2021-03-14 23:45:47', '2022-06-05 07:59:29'),
(147, 'mehedi', 'mehedi.d16@gmail.com', '01833155334', NULL, NULL, NULL, NULL, 'mumber offf', 'Disqualified', '2021-03-15 00:01:51', '2022-06-18 10:05:14'),
(148, 'sumon sajjad', NULL, '01917608330', NULL, NULL, 'https://shahojia.com/', NULL, 'website complete by others company, so i knock him next time for seo. not interested', 'Disqualified', '2021-03-15 00:05:56', '2022-06-18 07:43:17'),
(149, 'Saad Nasim', 'nasim@creativetechpark.com', '01989230820', NULL, NULL, NULL, NULL, 'TEST\r\n18.06.2022-amader Employee', 'Disqualified', '2021-03-15 00:10:02', '2022-06-18 07:06:24'),
(150, 'Jakir', 'jakir@creativetechpark.com', '01703908890', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-03-15 00:30:48', '2022-06-19 08:37:10'),
(151, 'Shifat M. Sadiq', NULL, '01732694156', NULL, NULL, NULL, NULL, 'e-commerce, phone not recived', 'Disqualified', '2021-03-15 03:11:15', '2022-06-18 10:48:34'),
(152, 'mashud parvej', 'mashudparvejechowdhury@gmail.com', '01670979740', NULL, NULL, 'bank asia', NULL, 'website, Phone not recived.. not interested', 'Disqualified', '2021-03-15 03:16:40', '2022-06-18 10:27:45'),
(153, 'unknown', NULL, '01733588444', NULL, NULL, NULL, NULL, 'http://texdealinc.com.bd/ eta redesign korabe, pore khota bolbe. not need now company off', 'Disqualified', '2021-03-15 03:18:27', '2022-06-05 07:58:04'),
(154, 'Dr Salahuddin Mahmud', NULL, '01819292138', NULL, NULL, NULL, NULL, 'Website, number off', 'Disqualified', '2021-03-15 03:20:30', '2022-06-18 10:29:39'),
(155, 'unknown', NULL, '01819161427', NULL, NULL, NULL, NULL, 'ecommerce', 'Disqualified', '2021-03-15 03:21:35', '2022-06-05 07:51:50'),
(156, 'unknown', NULL, '01905409976', NULL, NULL, NULL, NULL, 'website design number off', 'Disqualified', '2021-03-15 03:22:29', '2022-06-05 07:51:41'),
(157, 'unknown', NULL, '01816999946', NULL, NULL, NULL, NULL, 'website,  number off', 'Disqualified', '2021-03-15 03:23:06', '2022-06-05 07:51:32'),
(158, 'Mahjabeen Tabassum', 'Mahjabeen.Tabassum@gmail.com', '01632666600', NULL, NULL, NULL, NULL, 'she need 3D picture .need to give him proposal and some demo.', 'lead', '2021-03-15 03:46:27', '2022-06-19 08:37:10'),
(159, 'DR MD ZAKIR HOSSAIN', 'sheikhrusselsc@gmail.com', '01842585744', NULL, NULL, NULL, 'Road no-3, D I T Project, Merul Badda, Dhaka-1212, Bangladesh', 'the meeting was done by Imtiaj vai .positive \r\nwebsite design pac 3 .', 'Proposal Sent', '2021-03-15 23:00:35', '2021-03-16 01:56:18'),
(160, 'Subbrina Anwar', 'subbrina@gmail.com', '01707619707', NULL, NULL, 'ConsulMatrix', NULL, '20.06.2022-Call receive korsena', 'lead', '2021-03-15 23:55:45', '2022-06-20 11:31:23'),
(161, 'Jony Sir', NULL, '01881594697', NULL, NULL, NULL, NULL, 'https://www.binany24.com/ Romjaner pora koraba\r\nlike this website\r\n20.06.2022-nijer Fnd ke diye koriye niyese.', 'Contacted', '2021-03-16 01:22:13', '2022-06-20 11:29:40'),
(162, 'Mitu ( creative Education)', 'creative.ab21@gmail.com', '01315551358', NULL, NULL, 'creative Education', NULL, 'they are looking for that kind of website which will be similar to this.\r\nhttp://www.studynet.com.au/\r\nhttp://www.apollointl.com.au/', 'Converted to Customer', '2021-03-16 01:26:22', '2021-03-31 04:49:05'),
(163, 'shaikat', 'shaikatkhan033@gmail.com', '01321742061', NULL, NULL, NULL, NULL, 'Digital marketing\r\n20.06.2022-apatoto kono service lagsena . lagle obossoy janabe', 'Contacted', '2021-03-16 04:12:45', '2022-06-20 11:34:26'),
(164, 'Minhajul Hasan Bhuiyan', 'minhaj@knitasia.com', '01755596324', NULL, NULL, 'New Asia Group', '117/A Tejgaon , Dhaka .', 'Website redesign\r\nhttps://newasiabd.com/\r\nhttps://www.masholdings.com/\r\nhttp://aurum.com.bd/\r\n20.06.2022-Mobile off', 'Disqualified', '2021-03-16 04:15:52', '2022-06-20 11:48:41'),
(165, 'Abdur Rob', 'abdurrobsk@gmail.com', '01726750276', NULL, NULL, NULL, NULL, 'Ecommerce Website design proposal sent already please followup.\r\nTell me to call 20 March pore korbe', 'Disqualified', '2021-03-16 12:50:15', '2022-06-18 09:47:08'),
(166, 'Rasel', NULL, '01712458299', NULL, NULL, NULL, NULL, 'Looking for logo\r\n20.06.2022-Rong number', 'Disqualified', '2021-03-17 03:14:27', '2022-06-20 11:51:13'),
(167, 'Ruhul anim', NULL, '01647424701', NULL, NULL, NULL, NULL, 'Ecommerce websites. \r\nWill come tomorrow after 3 pm', 'Disqualified', '2021-03-17 05:55:12', '2022-06-14 08:31:09'),
(168, 'Nur Alamin', NULL, '01818714683', NULL, NULL, NULL, NULL, 'sstech kaj done kore  felse\r\n20.06.2022-ei muhurte website banate chaina.', 'Contacted', '2021-03-17 08:38:27', '2022-06-20 11:54:51'),
(169, 'Parvej', NULL, '01781586793', NULL, NULL, NULL, NULL, 'Redesign...Phone off\r\n20.06.2022-amader kas theke website niyese but ekhon ar business korsena', 'Contacted', '2021-03-17 10:45:57', '2022-06-20 11:58:03'),
(170, 'Sajib', NULL, '01314661875', NULL, NULL, NULL, NULL, 'website done', 'Disqualified', '2021-03-17 10:47:00', '2022-06-18 07:30:45'),
(171, 'Jahidur Rahman', 'mitho330@gmail.com', '01916063321', NULL, NULL, 'Royals BD', '147/3, Joar shahara, Vatara', 'Project  unsuccessful', 'Converted to Customer', '2021-03-17 10:48:46', '2021-07-08 13:56:34'),
(172, 'Sardar Hasan', 'engrhasan23975@gmail.com', '01933078858', NULL, NULL, 'Town Shop BD,', 'A/3, Flat: 5B, Sayabithi,', NULL, 'Disqualified', '2021-03-17 14:42:50', '2022-06-18 07:32:37'),
(173, 'MD Musleuddin', 'fastsellbuy.com@gmail.com', '01714758251', NULL, NULL, NULL, NULL, 'Ecoommerce website korabe.. tar basa banasree net din ashbe office e.. take address text korte bolse...Proposal and Quatetion send', 'Converted to Customer', '2021-03-18 05:05:33', '2021-03-28 01:56:15'),
(174, 'Robiul Islam', 'robiulislam84@gmail.com', '01778358137', NULL, NULL, NULL, NULL, 'hazi soriyat ullah model madrasa  email e requirement pathasie.. email check koren...[kalk office e giye kaj bujhe nite bolse] kaje\r\ndiea desa', 'Proposal Sent', '2021-03-18 05:09:30', '2021-05-29 04:39:26'),
(175, 'tonny', NULL, '01750048058', NULL, NULL, NULL, 'kustia', 'ecommerce website design not intersted', 'Disqualified', '2021-03-18 05:54:17', '2022-06-18 06:57:00'),
(176, 'unknown', NULL, '01724748906', NULL, NULL, NULL, NULL, 'signboar theke alibabar moto site korbe wordpress diye number off', 'Disqualified', '2021-03-18 05:54:54', '2022-06-05 07:51:21'),
(177, 'Unknown', NULL, '01841199535', NULL, NULL, NULL, NULL, 'freelancer e kaj niye amader ke dibe', 'Disqualified', '2021-03-18 05:55:31', '2022-06-05 07:49:58'),
(178, 'adv shazzad', 'adv.shazzad@yahoo.com', '01916002224', NULL, NULL, NULL, NULL, 'if need he will call me. number off', 'Disqualified', '2021-03-18 05:56:08', '2022-05-31 10:03:24'),
(179, 'sumon', NULL, '01688518662', NULL, NULL, NULL, NULL, 'grocery ecommerce pore korabe after eid', 'Disqualified', '2021-03-18 05:56:15', '2022-06-18 08:01:34'),
(180, 'asif', NULL, '01721831809', NULL, NULL, NULL, NULL, 'cotton - himu it 8k fixed', 'Disqualified', '2021-03-18 05:58:46', '2022-06-18 04:35:39'),
(181, 'sam mohiuddin', 'khan2014.business@gmail.com', '01674406142', NULL, NULL, 'Healthy Lifestyle Tips Tv', NULL, 'healthylifestyletipstv.com pore kotha bolbe', 'Converted to Customer', '2021-03-18 05:58:55', '2022-04-18 04:38:52'),
(182, 'palash gazi', NULL, '01710878887', NULL, NULL, NULL, NULL, 'call not received', 'Disqualified', '2021-03-18 06:02:41', '2022-06-18 10:27:52'),
(183, 'hasan', NULL, '01717994067', NULL, NULL, NULL, NULL, 'news portal 14k. not need if need he will call me.', 'Disqualified', '2021-03-18 06:02:54', '2022-06-18 08:36:27'),
(184, 'bdems raju', NULL, '01739456878', NULL, NULL, NULL, NULL, 'bdems raju number off', 'Disqualified', '2021-03-18 06:03:39', '2022-06-16 09:24:07'),
(185, 'Unknown', NULL, '01816043555', NULL, NULL, NULL, NULL, 'news portal korabe. nagarkantha refference e ashce.. busy', 'Disqualified', '2021-03-18 06:04:26', '2022-06-05 07:46:39'),
(186, 'unknown', NULL, '01677307674', NULL, NULL, NULL, NULL, 'website design number off', 'Disqualified', '2021-03-18 06:05:32', '2022-06-05 07:46:30'),
(187, 'Unknown', NULL, '01629002222', NULL, NULL, NULL, NULL, 'e-commerce website banabe call din busy pore kotha bolbe', 'Disqualified', '2021-03-18 06:06:06', '2022-06-05 07:46:19'),
(188, 'Unknown', NULL, '01720448666', NULL, NULL, NULL, NULL, 'ambulance service dey.. Ei related website banabe done by others', 'Disqualified', '2021-03-18 06:06:36', '2022-06-05 07:46:10'),
(189, 'unknown', NULL, '01819273424', NULL, NULL, NULL, NULL, 'business website design  khalil imperial done call not received', 'Disqualified', '2021-03-18 06:06:40', '2022-06-05 07:42:22'),
(190, 'Shahed Azaz Ahmed Razon', NULL, '01788309029', NULL, NULL, NULL, NULL, 'call for gsuite (premiem email service). not need. if need he will call me.', 'Contacted', '2021-03-18 06:07:39', '2022-06-18 07:51:24'),
(191, 'sahil', 'ricengineerings@gmail.com', '01723769633', NULL, NULL, NULL, NULL, 'ecommerce korabe grocery jonno..  ----- proposal send korsi.. followup korte thaken.. ----- booss desher ace boss tai ekhn o kuno result nai... projone call dibe', 'Disqualified', '2021-03-18 06:08:08', '2022-06-16 09:23:32'),
(192, 'unknown', NULL, '01688123817', NULL, '01620009143', NULL, NULL, 'http://www.jafdasunity.com/ garment site redesign indian sala', 'Disqualified', '2021-03-18 06:09:05', '2022-06-05 07:42:10'),
(193, 'monir vaimonir vai', 'moonpowerengineering@gmail.com', '01761810036', NULL, NULL, NULL, NULL, 'moon power engineering grocery website  mirpur 10 e office .. proposal send korsi.. followup korte thaken....number off', 'Disqualified', '2021-03-18 06:09:36', '2022-06-15 10:43:50'),
(194, 'Unknown', NULL, '01844543351', NULL, NULL, NULL, NULL, 'Dhaka colo website redesign or new design  https://www.dhakacolo.com/contact-us/done by others', 'Disqualified', '2021-03-18 06:11:47', '2022-06-05 07:40:18'),
(195, 'swapan bhattacharjee', NULL, '01746733979', NULL, NULL, NULL, NULL, 'shopno er moto uper store er software. not need now. if need he will call me', 'Disqualified', '2021-03-18 06:11:51', '2022-06-18 10:29:33'),
(196, 'rasel sikder', 'srasel87@yahoo.com', '01674481722', NULL, NULL, NULL, NULL, 'number off', 'Disqualified', '2021-03-18 06:12:47', '2022-06-18 10:48:28'),
(197, 'enamul karim', NULL, '01842553391', NULL, NULL, NULL, NULL, 'murgi sell korbe online e. if need he will call me.', 'Disqualified', '2021-03-18 06:12:57', '2022-06-16 09:34:48'),
(198, 'ashraf uddin', NULL, 'chaldal er moto website lagbe..', NULL, NULL, NULL, NULL, 'chaldal er moto website lagbe..', 'Contacted', '2021-03-18 06:14:03', '2022-06-05 11:39:40'),
(199, 'md nuruzzaman', 'brand-dhk@qandqbd.com', '01955508036', NULL, NULL, NULL, NULL, '. brand executive, Q and Q Trading Ltd   high budget laravel site lagbe proposal sent altready..korabe na', 'Contacted', '2021-03-18 06:14:56', '2022-06-05 11:40:07'),
(200, 'Unknown', NULL, '01822219444', NULL, NULL, NULL, NULL, 'chinacampus.com.bd redesign and also admitkard.com new website like this eid er por kotha bolbe', 'Disqualified', '2021-03-18 06:16:16', '2022-06-05 07:40:07'),
(201, 'Kazi Iftakhar Alam', 'iftakhar042@gmail.com', '01672808182', NULL, NULL, NULL, NULL, 'garment webiste .. mailed with sample website ..number off', 'Disqualified', '2021-03-18 06:31:24', '2022-06-16 09:28:46'),
(202, 'shahadathossainshakil', 'shahadathossainshakil12@gmail.com', '01998335108', NULL, NULL, NULL, NULL, 'ecommerce website korabe.. ---------- gulshan 2 e home and appliance er dokan ace ekhn website korabe..  transcom er moto... 20k budget ---busy--------- 14/08 phn disilo..\r\ncall received kore na', 'Disqualified', '2021-03-18 06:33:34', '2022-06-16 08:30:47'),
(203, 'unknown', NULL, '01729438102', NULL, NULL, NULL, NULL, 'horchow.com er moto ecommerce banabe.. wordpress 25k megento 120k laravel 150k asp.net 200k bole disi. if need he will call me done by others', 'Contacted', '2021-03-18 06:34:03', '2022-06-05 11:40:34'),
(204, 'azizur rahman', 'azizurrahmanjohn@yahoo.com', '01719079971', NULL, NULL, NULL, NULL, 'not need.', 'Disqualified', '2021-03-18 06:35:08', '2022-06-16 08:41:58'),
(205, 'Morshed', 'murshidanower2020@gmail.com', '01747200488', NULL, NULL, NULL, NULL, 'Looking for Software/ Web Apps Development', 'Disqualified', '2021-03-18 06:35:56', '2022-06-16 08:30:22'),
(206, 'unknown', NULL, '01575496694', NULL, NULL, NULL, NULL, 'himu it missed call\r\n18.06.2022- Invalid number', 'Disqualified', '2021-03-18 06:36:13', '2022-06-18 07:00:32'),
(207, 'jakieul', 'jakieul@gmail.com', '01914123600', NULL, NULL, NULL, NULL, 'digifish ecommerce website design korabe.. proposal sent kora hoise...', 'Disqualified', '2021-03-18 06:36:52', '2022-06-16 08:32:34'),
(208, 'Unknown', NULL, '01848307358', NULL, NULL, NULL, NULL, 'https://en.sangchaigroup.com/  ecommerce website and mobile apps korabe..-----------------------', 'Contacted', '2021-03-18 06:38:13', '2022-06-05 11:41:17'),
(209, 'sorab saikat', NULL, '01833441114', NULL, NULL, NULL, NULL, 'graphics design monthly package niye chay... fb te page er link and email pathabe proposal sent korte hobe..done by others...', 'Disqualified', '2021-03-18 06:41:43', '2022-06-16 08:38:11'),
(211, 'mehedi hasan', 'mehedihasan1511994@gmail.com', '01550051050', NULL, NULL, NULL, NULL, '- mogbazar -- ecommerce korte cay. demo sent korte hobe. off\r\n26/06/20 number off\r\n18.06.2022-Mobile sob somoy bondo thake', 'Disqualified', '2021-03-18 06:44:50', '2022-06-18 06:58:59'),
(212, 'Imam Vai', NULL, '01720339293', NULL, NULL, NULL, NULL, 'PBL 15k website design korate chay ecommerce.-------------------- satuday ashbe.', 'Disqualified', '2021-03-18 06:46:00', '2022-06-18 10:48:45'),
(213, 'mrs rokeya bari', 'rokeya.bari@yahoo.com', '01711864056', NULL, '01971864056', NULL, NULL, 'mrs rokeya bari gulshan avenue theke ecommerce multivendor website korbe, proposal sent. if need he will call me', 'Disqualified', '2021-03-18 06:46:50', '2022-06-16 07:57:57'),
(214, 'zahid mahamud', NULL, '01730052155', NULL, '01730096613', NULL, NULL, 'ecommecre website design korte chay.. whats appe e already sample website link pathaisi... dekhe janabe...--------------------------- if need he will call me.no response', 'Disqualified', '2021-03-18 06:53:37', '2022-06-16 08:44:47'),
(215, 'khaladur', 'psf.khaladur@gmail.com', '01643394772', NULL, NULL, NULL, NULL, 'website redesign korabe.. non profit oraization er jonno.. psf.micro@gmail.com ---- website done by others\r\n18.06.2022-jekhan theke website baniyese sey khan theke onnanno service nisse', 'Contacted', '2021-03-18 06:53:45', '2022-06-18 06:57:52'),
(216, 'Unknown', NULL, '01810276803', NULL, NULL, NULL, NULL, 'mgt-vegetablefruitsbd.com  website redesign korabe... office jaite bole palton.done by others\r\n18.06.2022-Onk bar call dewa holo but call receive korena', 'Disqualified', '2021-03-18 06:54:20', '2022-06-18 07:14:54'),
(217, 'Sabrina Imam', 'thunderilla@gmail.com', '01793592659', NULL, NULL, NULL, NULL, 'ecommerce erbsite banabe.. proposal pathano hoise...   porshu din 5 tay meeting ----------- no response', 'Disqualified', '2021-03-18 06:55:16', '2022-06-06 11:49:53'),
(218, 'unknown', NULL, '01712111884', NULL, NULL, NULL, NULL, 'shuvo automobile accessories and spare parts ecommerce korabe.. whatsapp e demo sob ecommerce pathaisi... meeting korte chay.. already meeting kore gese and detail niye gese....--------\r\nif need he will call me--- pore  korabe', 'Disqualified', '2021-03-18 06:55:20', '2022-06-05 07:39:47'),
(219, 'Imona Hossain', 'imonahossain@hotmail.com', '01707006401', NULL, NULL, NULL, NULL, 'ecommerce website and fb adverting proposal sent already.number off', 'Disqualified', '2021-03-18 06:56:20', '2022-06-18 10:48:39'),
(220, 'unknown', NULL, '01818315074', NULL, '01812258925', NULL, NULL, 'ali.com.bd mobile apps banabe whats app e demo link pathaisi... if need he will call me ....plan nai akhon', 'Disqualified', '2021-03-18 06:56:35', '2022-06-16 08:52:15'),
(221, 'rana', 'rana@sterlinginternationalgroup.com', '01626400165', NULL, NULL, NULL, NULL, 'ecommerce website korebe woocommerce diye.. payment gateway tar sathe kotha hose.. oni MD sir er sathe kotha bole janbe..... pore korbe\r\n18.06.2022-Ecommerce er website banabe kisudin por but Proposal cheyese.tai Proposal pathano hoilo', 'Proposal Sent', '2021-03-18 06:57:06', '2022-06-18 06:40:55'),
(222, 'km masud', 'kmmasud09@gmail.com', '01976025944', NULL, NULL, NULL, NULL, 'personal website banabe  (web for solution theke kore felse).\r\n16.06.2022-6000tk diye website baniyese ekhon cholena', 'Contacted', '2021-03-18 06:57:40', '2022-06-16 12:00:24'),
(223, 'mr ninmoy', NULL, '01936009009', NULL, NULL, NULL, NULL, 'bengal group er website redesign korbe amadeer ke info@ te requirement send korse .. amader ke dekhe then feedback dite hobe...korle janabe', 'Disqualified', '2021-03-18 06:57:48', '2022-06-16 07:28:55'),
(224, 'Unknown', 'origingadgetbd@gmail.com', '01707400005', NULL, NULL, NULL, NULL, 'ecommerce website korabe.. agge logo koraise amader kach theke... pore korabe\r\n16.06.2022-Number Off', 'Disqualified', '2021-03-18 06:58:40', '2022-06-16 11:51:39'),
(225, 'unknown', 'shommy75@gmail.com', '01977004549', NULL, NULL, NULL, NULL, 'ekta games er website design korbe theme kine dibe customize korte hobe sathe ekta frocery korbe theme kine dibe customize korte hobe..pore call korbe', 'Disqualified', '2021-03-18 06:59:05', '2022-06-05 07:39:26');
INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(226, 'Tareq Masud', 'tmasud9@gmail.com', '01706401667', NULL, NULL, NULL, NULL, 'ecommerce website design package sent', 'Contacted', '2021-03-18 06:59:33', '2022-06-16 06:34:28'),
(227, 'masum', NULL, '01819213842', NULL, NULL, NULL, NULL, 'pharmecy bazar er moto website korbe. ecommerce. onake name phn degignation sms korte hobe. website done', 'Disqualified', '2021-03-18 06:59:51', '2022-06-16 06:34:36'),
(228, 'Abdul kaiyum', 'sunrisei_7@yahoo.com', '01820427429', NULL, NULL, NULL, NULL, 'sunrise international 80, jibon bima bhaban , 4 th floor dhaka 1000, motikheel office trading company and menufacture company informative website korbe.. office jete bole.after eid korabe interested', 'Disqualified', '2021-03-18 07:00:36', '2022-05-31 10:01:35'),
(229, 'Unknown', NULL, '01911348404', NULL, NULL, NULL, NULL, 'news portal korte chay... theme kine dibe.. amader setup kore dite hobe.. 10k fixed bole disi....invalid number\r\n16.06.2022-Number off', 'Disqualified', '2021-03-18 07:03:08', '2022-06-16 11:50:00'),
(230, 'mizan vai', 'updateautomation@gmail.com', '01717438605', NULL, NULL, NULL, NULL, 'update automation ecommerce proposal sent.sat day office ashbe.. 22/03/2021 -- Pore contact korbe.. number off', 'Disqualified', '2021-03-18 07:04:18', '2022-06-16 07:57:16'),
(231, 'abdul kaiyum', NULL, '01626149202', NULL, NULL, NULL, NULL, 'abdul kaiyum grocery ecommerce website korabe proposal and demo sent korsi whatsapp e...number off\r\n16.06.2022-Off Number', 'Disqualified', '2021-03-18 07:06:21', '2022-06-16 11:43:19'),
(232, 'Shafiqul Alam Chowdhury Hemel', NULL, '01766669936', NULL, NULL, NULL, NULL, 'amazecorp.com crm@amazecorp.com logo restoration work.. quote 2k. ora e janabe pore..number invalid\r\n16.06.2022-Number off thake sob somoy', 'Disqualified', '2021-03-18 07:07:36', '2022-06-16 04:06:47'),
(233, 'unknown', NULL, '01923406267', NULL, NULL, NULL, NULL, '30/06/2020\r\napps development korbe wordpress site er jonno.. ecommerce... amader email send kora hoise.. oni details pathabe... Not interested', 'Contacted', '2021-03-18 07:09:11', '2022-06-16 11:41:05'),
(234, 'adi', NULL, '01677057556', NULL, NULL, NULL, NULL, 'smplbd.com redesign korabe.... job chere dise\r\n16.06.2022-pore kotha bolbe', 'Disqualified', '2021-03-18 07:10:09', '2022-06-16 11:40:24'),
(235, 'Unknown', 'it@zadidlabel.com', '01973386880', NULL, NULL, NULL, NULL, 'website design proposal sent it@zadidlabel.com lavel printing company. Call him after 15 days pore call dibe', 'Disqualified', '2021-03-18 07:11:00', '2022-06-05 07:37:50'),
(236, 'unknown', NULL, '01713884423', NULL, NULL, NULL, NULL, 'dont distrub. mc\r\n16.06.2022-Call dewa jabena', 'Disqualified', '2021-03-18 07:11:15', '2022-06-16 11:39:04'),
(237, 'Unknown', NULL, '01821106363', NULL, NULL, NULL, NULL, 'call korse chaldal er moto ekta website lagbe.. almost confirm 30k te confirm kormu.. ---------------- website done by others', 'Disqualified', '2021-03-18 07:11:43', '2022-06-05 07:39:05'),
(238, 'Unknown', NULL, '01986247644', NULL, NULL, NULL, NULL, 'newsportal transfer kore amader kache niye ashbe...pore call dibo', 'Disqualified', '2021-03-18 07:12:33', '2022-06-05 07:37:35'),
(239, 'azharul islam joy', 'mazharuljoy71@gmail.com', '01305844743', NULL, NULL, NULL, NULL, 'ecommerce website design proposal sent. ekhn korbe na pore janabe... number invalid\r\n16.06.2022-NumberOff', 'Disqualified', '2021-03-18 07:13:09', '2022-06-16 11:38:22'),
(240, 'unknown', NULL, '01315327810', NULL, NULL, NULL, NULL, 'himu it 4 times phn...\r\n04/07/2020 number off', 'Disqualified', '2021-03-18 07:15:01', '2022-06-05 07:37:24'),
(241, 'Mahim', NULL, '01811125775', NULL, NULL, NULL, NULL, 'website design. call korbe number off', 'Disqualified', '2021-03-18 07:15:05', '2022-06-05 05:09:13'),
(242, 'Touhid', NULL, '01987009816', NULL, NULL, NULL, NULL, 'website design', 'Disqualified', '2021-03-18 07:15:29', '2022-06-05 09:51:29'),
(243, 'kammrul islam', NULL, '01762009955', NULL, NULL, NULL, NULL, 'website design janabe', 'Disqualified', '2021-03-18 07:15:51', '2022-06-06 11:49:39'),
(244, 'mr. ashis', 'ashisdip@gmail.com', '01711126306', NULL, NULL, NULL, NULL, 'covid 19 8k package nibe... phn dea lagbe na oni pore communicate korbe... if nedd he will call me.\r\n15.06.2022-ekhon website korbena .jokhon korbe nije theke amaderke knock korben', 'Contacted', '2021-03-18 07:16:52', '2022-06-15 11:31:55'),
(245, 'nobin', 'nobin@perfumeworldltd.com', '01711147060', NULL, NULL, NULL, NULL, 'manager perfume world 81/ka. 7th floor, road-11, baridhara diplomatic zone  nobin@perfumeworldltd.com  ecommecre website design proposal sent\r\n16.06.2022-call kete dey', 'Contacted', '2021-03-18 07:17:05', '2022-06-16 11:37:33'),
(246, 'shipon', NULL, '01708884689', NULL, NULL, NULL, NULL, 'website korbe.. management er sathe kotha bole janabe 50k wordpress laravel 8lac. 05/07/2020.  22//03/2021 ---- if need he will call me. website done\r\n15.06.2022 kisu din agey onno ekta company theke niyese but onno kaj dorkar hoile janane', 'Contacted', '2021-03-18 07:17:59', '2022-06-15 08:28:52'),
(247, 'Unknown', 'nationalprinting99@gmail.com', '01841086719', NULL, NULL, NULL, NULL, 'website desihn and ecommerce proposal both sent...no resp\r\n15.06.2022 onno protisthan theke niye use korse but ekhon kisu lagle janabe', 'Contacted', '2021-03-18 07:18:05', '2022-06-16 11:36:07'),
(248, 'unknown', NULL, '01784211721', NULL, NULL, NULL, NULL, 'goldenrose.com.tr  mail korbe requirement.. ekhn o pai nai mail....', 'lead', '2021-03-18 07:18:47', '2021-11-30 09:25:09'),
(249, 'imdnurul', 'imdnurul457@gmail.com', '01724717727', NULL, NULL, NULL, NULL, 'ecommerce website proposal sent.. 4 tarikh phn dite hobe.----------- kal asbe and confirm korbe---number off\r\n15.06.2022 Mobile off', 'Disqualified', '2021-03-18 07:19:03', '2022-06-15 09:10:25'),
(250, 'unknown', NULL, '01711882931', NULL, NULL, NULL, NULL, 'domain hosting renew korte hobe namecheap theke arbnenew korte na parle then new website create korbe..not interested\r\n16.06.2022-kono kisu lagbena thanks', 'Disqualified', '2021-03-18 07:19:12', '2022-06-16 11:35:36'),
(251, 'unknown', NULL, '01721294635', NULL, NULL, NULL, NULL, 'law firm businees page and website design amader email send korsi oni requirement pathabe...invalid number\r\n16.06.2022-Number use hossena', 'Disqualified', '2021-03-18 07:19:58', '2022-06-16 11:34:55'),
(252, 'obaidul rahman', 'Admin@globalstar.com.bd', '01911342308', NULL, NULL, NULL, NULL, 'global star ltd  website banabe 4 ta group of company type emai kora hoise proposaL Admin@globalstar.com.bd\r\n custom quotation', 'Disqualified', '2021-03-18 07:20:28', '2022-06-16 06:50:15'),
(253, 'unknown', NULL, '01722060543', NULL, NULL, NULL, NULL, 'HIMU IT  al amin dokhin badda theke indistrila item ecommerce website design. if need he wil call me', 'Disqualified', '2021-03-18 07:20:42', '2022-06-05 07:29:20'),
(254, 'kochivai', 'kochivai@gmail.com', '01400125127', NULL, NULL, NULL, NULL, 'ecommerce website design korbe.....number off\r\n16.06.2022-bondur jonno ecommerce  er website banate cheyesilo but seta ekhon ar banabena', 'Disqualified', '2021-03-18 07:21:18', '2022-06-16 11:33:21'),
(255, 'unknown', NULL, '01991564939', NULL, NULL, NULL, NULL, 'ecommerce website next din followup. Phone not recive akhon lagbe na', 'Disqualified', '2021-03-18 07:22:01', '2022-06-05 07:29:10'),
(256, 'shah newaz', 's.m.shahnawaz.bd@gmail.com', '01711295618', NULL, NULL, NULL, NULL, 'ecommerce proposal sent oni laravel er kaj korate chay...no response', 'Disqualified', '2021-03-18 07:22:51', '2022-06-16 07:29:19'),
(257, 'Unknown', NULL, '01731679745', NULL, NULL, NULL, NULL, 'domain hosting beattiresbd. afferices  domain name chec and website design', 'Disqualified', '2021-03-18 07:22:57', '2022-06-05 07:26:42'),
(258, 'Sharmin Nahar', 'sharmin.nahar@miaki.co', '01939900086', NULL, NULL, NULL, NULL, 'ecommerce website proposal sent. job chere disee onk bar call  kora hoise ..call na deyar jonno request korse\r\n16.06.2022- madam je office a silo ,sey office a ar nai .tai ar jeno call kora na hoi', 'Disqualified', '2021-03-18 07:23:46', '2022-06-16 11:29:33'),
(259, 'Unknown', NULL, '01785854701', NULL, NULL, NULL, NULL, 'bengol.net and bengolnet.com  website special requirement . kyc form online submission and others forms download iption. 2. online submission and rgistration. 3. news links. 4. location form for offices 5. coverage area 6. major client list. 7. other isp website common options\r\n16.06.2022-Call Receive korsena', 'Contacted', '2021-03-18 07:24:03', '2022-06-16 10:41:27'),
(260, 'saif', 'bestsaif36@gmail.com', '01723512962', NULL, NULL, NULL, NULL, 'grocery ecommerce website korabe niketan basa 12k er ta nite pare..--------------number off\r\n16.06.2022-Bar bar call kete dey', 'Contacted', '2021-03-18 07:24:38', '2022-06-16 10:36:57'),
(261, 'amir', NULL, '01401443101', NULL, NULL, NULL, NULL, 'ecommerce website korabe... phone not recived', 'Disqualified', '2021-03-18 07:24:48', '2022-06-05 10:47:02'),
(262, 'Mohammed Asaduzzaman', 'asad.zaman@entekso.com', '01713039630', NULL, NULL, NULL, NULL, 'Mohammed Asaduzzaman CEO Entekso Edu ecommerce website proposal sent already.... course enroll korbe and payment korbe...... asad.zaman@entekso.com, hasan.amin@entekso.com, ahsan.kabir@entekso.com----------hasan banasree-----------------------------------no response', 'Disqualified', '2021-03-18 07:26:01', '2022-06-18 10:29:46'),
(263, 'ibne hasan', 'ibne_hasan@yahoo.com', '01970058258', NULL, NULL, NULL, NULL, 'ecommerce korabw 12 k package... website e contact korse. proposal sent janabe ...  ekhn o kotha cholese .. hole janabe. If need he will call me no response\r\n16.06.2022-Jomir dalil likhon er jonno Facebook Marketing korabe Proposal Pathano hoyese', 'Proposal Sent', '2021-03-18 07:26:06', '2022-06-16 10:38:25'),
(264, 'Rahat Sami', 'rahatsami27@gmail.com', '01863915901', NULL, NULL, NULL, NULL, 'restaurent er website korbe... proposal sent ...., work by others done', 'Disqualified', '2021-03-18 07:26:36', '2022-06-05 09:51:09'),
(265, 'sajib gaibhandha', 'sojeebsarker72@gmail.com', '01868346683', NULL, NULL, NULL, NULL, '1.25 sajib gaibhandha clipping path er website korte chay.... office ese meeting kore gese... eid er por knock .. number off\r\n16.06.2022-Car Business er jonno ecommerce er website banabe kisudin por but kisu link soho proposal pathate bolesen.pathalam', 'Proposal Sent', '2021-03-18 07:27:12', '2022-06-16 07:18:13'),
(266, 'yeasir', 'bachchuenterprise@yahoo.com', '01726959607', NULL, NULL, NULL, NULL, 'yeasir bac website pos erp nibe.. md sir er sathe kotha bole final korbe... bachchuenterprise@yahoo.com proposal sent...\r\n16.06.2022-meeting ase ektu por phone dite hobe', 'Contacted', '2021-03-18 07:28:17', '2022-06-16 04:28:02'),
(267, 'rased', NULL, '01404047804', NULL, NULL, NULL, NULL, 'green delta investment   website dedesign korabe.. info@ e requirement pathabe.. account creation and and online payment thakbe...  ekta design mok kore pathate hobe... then kaj dibe....\r\n\r\n13/07/2020 korabe pore', 'Disqualified', '2021-03-18 07:29:42', '2022-06-05 09:50:55'),
(268, 'borshaahmed', 'borshaahmedb@gmail.com', '01778890859', NULL, NULL, NULL, NULL, 'Borsha Ahmed Ecommerce multi Vendor Website Korabe... proposal sent ....   borshaahmedb@gmail.com. phone not recived. website done', 'Disqualified', '2021-03-18 07:29:45', '2022-06-16 09:02:45'),
(269, 'salim khan', 'selimvhai@gmail.com', '01710752800', NULL, NULL, NULL, NULL, 'salim khan website create korbe... rat 9 tay khota bolbe. next month call him\r\n15.06.2022-next din kotha bolbe.\r\n16.06.2022-Proposal pathalam', 'Proposal Sent', '2021-03-18 07:30:22', '2022-06-16 06:49:47'),
(270, 'md monowar hossain', 'monowar1968@gmail.com', '01313795640', NULL, NULL, NULL, NULL, 'general manager, tobex group, 4 mohakhali level 3, pubali bank building, jeye kotha bolte hobe... monowar1968@gmail.com 01757331492 tobex group md number off\r\n16.06.2022-Number Off thake sob somoy', 'Disqualified', '2021-03-18 07:31:02', '2022-06-16 04:24:39'),
(271, 'Ujjal Suvecha', NULL, '01313500365', NULL, NULL, NULL, NULL, 'Gift  multivendor ecommerce and pos erp nibe...m------ oni mail address pathabe... ---- phone not recived, akhon korar chinta nai', 'Disqualified', '2021-03-18 07:31:10', '2022-06-15 10:32:18'),
(272, 'prinka tasnuva', NULL, '01716883214', NULL, NULL, NULL, NULL, 'ecommerce website korbe COVID 19 package 15k te...-------------------------------, pore khota bolbe', 'Disqualified', '2021-03-18 07:32:27', '2022-06-05 10:46:52'),
(273, 'Mitu properties', 'mituproperties.ltd@gmail.com', '01761319181', NULL, NULL, NULL, NULL, 'informative website email pathaise.. proposL SEND KORBO.... mituproperties.ltd@gmail.com md sir er sathe kotha bole janabe.. done by others\r\n16.06.2022-Call kete dissi bar bar', 'Contacted', '2021-03-18 07:32:31', '2022-06-16 04:23:07'),
(274, 'ripon', 'ripon102@gmail.com', '01923661003', NULL, NULL, NULL, NULL, 'workshop er jonno website korabe cummilla te email e proposal pathano hoise... dont distrub\r\n15.06.2022- jokhon korbe tokhon knock korbe', 'Contacted', '2021-03-18 07:33:25', '2022-06-15 11:33:50'),
(275, 'pallibiplob', 'pallibiplob1@gmail.com', '01930446747', NULL, NULL, NULL, NULL, 'Metro Furniture  er website redesign korabe... starkul tader factory.. sekhane jete hobe... online e custom furniture make kore tara....  proposal sent korsi already mail ee.....  pallibiplob1@gmail.com   Holdings: 391, Shadhinata Sarani North Badda, Dhaka – 1212    Holdings : 17842, Road : 03, Taltola,Satarkul, North, Dhaka 1212   satarkul brize par hoye samne haater daane...-------------------------------------   kal 11 tay meeting.... number off', 'Disqualified', '2021-03-18 07:33:31', '2022-06-05 05:02:16'),
(276, 'Shafi Abdullah', 'rasultradingcorporation@gmail.com', '01307436136', NULL, '01644415444', NULL, NULL, 'proposal pathate hobe.15/07/2020 no response', 'Disqualified', '2021-03-18 07:34:37', '2022-06-05 05:02:35'),
(277, 'MOHAMMADFAHAD', 'MOHAMMADFAHAD1912@gmail.com', '01999666555', NULL, NULL, NULL, NULL, 'mohammed forhad hossain ovi   MOHAMMADFAHAD1912@gmail.com     business website design proposal and demo sent already...number off', 'Contacted', '2021-03-18 07:34:56', '2022-06-05 11:41:57'),
(278, 'ridwanul haque', 'ridwanulhaque62@gmail.com', '01870662146', NULL, NULL, NULL, NULL, 'online ebook sell korbe,.. ecommerce proposal sent...pore janabe', 'Disqualified', '2021-03-18 07:35:26', '2022-06-16 06:34:19'),
(279, 'unknown', 'arik.enterprise@yahoo.com', '01700933076', NULL, NULL, NULL, NULL, 'ecommer website korbe.. grocery.. proposal sent...  after eid call korte hobe..', 'Disqualified', '2021-03-18 07:36:02', '2022-06-05 07:23:05'),
(280, 'Unknown', 'dreameduapply@gmail.com', '01708520706', NULL, NULL, NULL, NULL, 'dream edu apply ....   dreameduapply@gmail.com     website design nad digital advertisement propoal sent... ---29/05/2021 proposal sent number off', 'Disqualified', '2021-03-18 07:36:10', '2022-06-05 04:51:06'),
(281, 'anwar hossain milon khan', 'shohag360degree@gmail.com', '01626562555', NULL, NULL, NULL, NULL, 'shohag360degree@gmail.com   ecommerce website design proposal sent.. ---------------------------- tamim', 'lead', '2021-03-18 07:36:52', '2022-06-19 08:37:10'),
(282, 'Abul Bashar', 'jbl.bashar@gmail.com', '01728850972', NULL, NULL, 'Sky fashion bd', 'paltan China town', 'ecommerce website korabe... proposal sent already..running work', 'Converted to Customer', '2021-03-18 07:37:08', '2021-05-03 07:05:32'),
(283, 'Mehedi hasan', 'Tusher1199@gmail.com', '01643865109', NULL, NULL, NULL, NULL, 'n   Tusher1199@gmail.com  android app for grocery item sell. You can send me best quote.', 'lead', '2021-03-18 07:37:36', '2022-06-19 08:37:10'),
(284, 'unknown', 'mktg4@bengalcement.com.bd', '01704161882', NULL, NULL, NULL, NULL, 'imu it contact korse bengal cement er website maintenace korabe... proposal pathate bolse... already sent kal phn dibo ...lagbe na\r\n16.06.2022-Mobile off', 'Contacted', '2021-03-18 07:37:42', '2022-06-16 04:21:43'),
(285, 'unknown', NULL, '01778640405', NULL, NULL, NULL, NULL, 'bikroy.com ar moto website krte cay. wordpress na. multibandor - laravel and asp.net ar package 6 and 7 ar prising bole disi. office address send send korte hobe. if need he will call me. pore janabe', 'Disqualified', '2021-03-18 07:38:34', '2022-06-05 07:22:22'),
(286, 'zaif rahman', 'zayfbbs@gmail.com', '01627352598', NULL, NULL, NULL, NULL, 'zayfbbs@gmail.com    radio today ecommerce korbe proposal pathate bolse.. sathe demo....------------------\r\n16.06.2022-derbosor age baniyese website onno kono service oo lagbena eimuhurte', 'Contacted', '2021-03-18 07:38:43', '2022-06-16 04:19:15'),
(287, 'unknown', 'mahfuzulhaque1960@gmail.com', '01716110610', NULL, NULL, NULL, NULL, 'graphic design korte cay. sticker print - package pathate hobe -', 'Disqualified', '2021-03-18 07:39:17', '2022-06-05 04:50:38'),
(288, 'rakibul hassan rassel', 'finelook2021@gmail.com', '01912465110', NULL, NULL, NULL, NULL, 'rakibul hassan rassel  finelook2021@gmail.com   rakhibul.rassal@gmail.com ecommerce website design korabe proposal pathano hoise...[need call him tomorrow]', 'lead', '2021-03-18 07:39:40', '2022-06-19 08:37:10'),
(289, 'jubaer', 'ark.jubaer@gmail.com', '01711156387', NULL, NULL, NULL, NULL, 'sample website http://www.rotarydistrict3282.org/  design proposal and monthly maitence pathano hoise... done by other\r\n15.06.2022-digital marketing er proposal pathate hobe', 'Proposal Sent', '2021-03-18 07:40:13', '2022-06-15 11:53:46'),
(290, 'imam hossain', 'asimitsbd@gmail.com', '01755949191', NULL, NULL, NULL, NULL, 'seo lagbe...after 3 month(producct add)he will call us', 'Proposal Sent', '2021-03-18 07:40:46', '2021-03-28 07:33:42'),
(291, 'madhusudhan bhoumik', NULL, '01731840166', NULL, NULL, NULL, NULL, 'madhusudhan bhoumik    monday phn zoom meetingg orbe seo korabe proposal pathano hoise...', 'lead', '2021-03-18 07:41:25', '2022-06-19 08:37:10'),
(292, 'Motaleb', NULL, '01839696919', NULL, NULL, NULL, NULL, 'Authority wave --  - package 1 bola hoise 20% discount soho - authority r sathe kotha bole janaben\r\n15.06.2022-jeni call dorese uni MD sir er sathe kotha bole janaben', 'Contacted', '2021-03-18 07:41:59', '2022-06-15 12:10:16'),
(293, 'md hasanul haq', NULL, '01734276281', NULL, NULL, NULL, NULL, 'it officer labonno screen print sl dhaka.com garment website banabe.. meeting kore ashce....------', 'lead', '2021-03-18 07:42:29', '2022-06-19 08:37:10'),
(294, 'amir hussain', 'amirhussain2619@gmail.com', '01920648894', NULL, NULL, NULL, NULL, 'ecommerce covid 19 package   send with demo 16 tarikh phn dibo asbe   - 22/03/2021-- Office a asbe.', 'Disqualified', '2021-03-18 07:42:29', '2022-06-05 09:50:27'),
(295, 'reaz', 'nimoco.bd@gmail.com', '01552351199', NULL, NULL, NULL, NULL, 'ecommerce website proposal sent already. if need he will call me ..korbe na website\r\n15.06.2022-ei muhurte dorkar nai tobe kisudin por amk knock kore office visit korbe', 'Contacted', '2021-03-18 07:43:05', '2022-06-15 11:37:20'),
(296, 'Nasir Uddin', 'nasiruddinuro@gmail.com', '01718332367', NULL, NULL, 'National Institute of kidney disease and urilogy.', 'Sher e Bangla Nagar .Dhaka', 'nasiruddinuro.com', 'Converted to Customer', '2021-03-18 07:43:07', '2021-07-07 13:34:23'),
(297, 'Rownu mam', 'tweetup.rounak@gmail.com', '01885999509', NULL, NULL, NULL, NULL, 'need to knock him whats app------\r\n15.06.2022-jini jugajug koresilen se ekhon ney. notun jini join koresen MD sir er sathe kotha bole janaben', 'Contacted', '2021-03-18 07:43:34', '2022-06-15 07:50:28'),
(298, 'washim', 'washim.ruphil60@gmail.com', '01720958550', NULL, NULL, NULL, NULL, 'ecommerce website   proposal sent..kaj korai felse\r\n15.06.2022-ekhon ar lagbena', 'Contacted', '2021-03-18 07:43:41', '2022-06-15 07:34:08'),
(299, 'Unknown', NULL, '01911168767', NULL, NULL, NULL, NULL, 'business website korbe 10k confirmed.. work by others\r\n15.06.2022-software oil tai hosting support korsena. ekhon sobar sathe kotha bole notun kore nibe', 'Contacted', '2021-03-18 07:43:58', '2022-06-15 07:40:19'),
(300, 'Nafiz sir', NULL, '01765903166', NULL, NULL, NULL, NULL, 'ecommerce website then app---need to call him 25 march(not received). 15 din por call dite hobe. busy\r\n15.06.2022-ecommarce er website banate cheyesilo ekhon sey chinta theke sore asse.', 'Contacted', '2021-03-18 07:44:24', '2022-06-15 07:47:21'),
(301, 'unknown', NULL, '01934382420', NULL, NULL, NULL, NULL, 'ecommerce website shahadat office visit kore gese.. partner er sthe kotha bole then janabe....\r\n01.06.2022 Number off\r\n15.06.2022-off', 'Disqualified', '2021-03-18 07:44:40', '2022-06-15 07:32:40'),
(302, 'Unknown', NULL, '01974230111', NULL, NULL, NULL, NULL, 'nc express tourism api\r\n01.06.2022 Call receive korsena\r\n15.06.2022-Call receive korsena ,kete dey bar bar', 'Disqualified', '2021-03-18 07:44:47', '2022-06-15 07:19:29'),
(303, 'ashadduzzaman asad', NULL, '01717290612', NULL, NULL, NULL, NULL, 'school website korabe online e test nite chay..[not received}\r\n01.06.2022 website baniyese but 3 mas jabot inactive . onno kono service dorkar hoile janabe', 'Contacted', '2021-03-18 07:45:20', '2022-06-02 10:02:40'),
(304, 'belayat hossain', NULL, '01847092450', NULL, NULL, NULL, NULL, '.basic website korabe asar agge phn korbe business website korabe.  22/03/2021- eid er por korabe', 'Disqualified', '2021-03-18 07:45:50', '2022-06-16 08:54:43'),
(305, 'azhar uddin bhuiyan', NULL, '01753575569', NULL, NULL, NULL, NULL, 'website design\r\n01.06.2022 onno protisthan theke niyese. tobe jodi onno kono service er proyion hoi janabe', 'Contacted', '2021-03-18 07:46:14', '2022-06-02 09:57:49'),
(306, 'unknown', NULL, '01920920201', NULL, NULL, NULL, NULL, 'server and website reew korabe ore janabe..\r\n01.06.2022 onno protisthan theke niyese but ekhono active koreni kisudiner moddhe bujjhe nibe.', 'Contacted', '2021-03-18 07:46:18', '2022-06-02 09:53:01'),
(307, 'Safayet Abedin Ratin', NULL, '01912652587', NULL, NULL, NULL, NULL, 'Deputy Manager IT ACS Textile kensingtondreams.com ecommerce website korabe...Home Decor\r\n01.06.2022 Call receive korsena\r\n15.06.2022-Call receive korsena', 'Disqualified', '2021-03-18 07:46:39', '2022-06-15 07:17:28'),
(308, 'Jafor Ahmed', 'jafor.irving@gmail.com', '01828022425', NULL, NULL, NULL, NULL, 'BDE https://irving.com.bd/ website redesign korabe  jafor.irving@gmail.com  proposal pathano hoise.. janabe...\r\n01.06.2022 jini jugajug koresilo uni onno protisthane chole aasse tai ar kisu bolte parsena', 'Disqualified', '2021-03-18 07:47:13', '2022-06-02 09:43:53'),
(309, 'Farsan Hossain    Taqi Chowdhury', NULL, '01745833659', NULL, NULL, NULL, NULL, 'Facebook page cover design plus page setup 2500+ 1000 tk bole disi poore janabe..[no need]\r\n01.06.2022 Call receive korsena\r\n15.06.2022-desher baire chole gese', 'Contacted', '2021-03-18 07:47:55', '2022-06-15 07:15:44'),
(310, 'farhan', NULL, '0181921745', NULL, '0181921745 , 01874041345 jahid sir', NULL, NULL, 'amader ekhan theke kaj koriye nise\r\n01.06.2022 Vul number', 'Disqualified', '2021-03-18 07:48:05', '2022-06-02 09:00:35'),
(312, 'unknown', NULL, '01827655150', NULL, NULL, NULL, NULL, 'blog website korabe... proposal pathaisi.. 11min kotha bolsi... sathe fb ads er proposal o pathaisi...Phone not reciveed. if need he will call me\r\n01.06.2022 Number off', 'Contacted', '2021-03-18 07:49:03', '2022-06-02 08:47:15'),
(313, 'Syed Ekram Shibly', 'syedshibly4@gmail.com', '01685671172', NULL, NULL, NULL, NULL, 'Syed Ekram Shibly Indian Oil Corporation Bangladesh Representative Office  syedshibly4@gmail.com proposal and demo sent already...[proposal sent][when need he will call us]. if need he will call me', 'Disqualified', '2021-03-18 07:49:28', '2022-06-05 09:50:38'),
(314, 'miraz uddin', 'mondiul786@gmail.com', '01768788045', NULL, NULL, NULL, NULL, 'east rampura thake business website korate chay mondiul786@gmail.com', 'Disqualified', '2021-03-18 07:49:45', '2022-06-15 11:29:26'),
(315, 'md firoz alam', 'mdfirozalamshikder6565@gmail.com', '01811857434', NULL, NULL, NULL, NULL, 'mdfirozalamshikder6565@gmail.com   buying house website korabe... proposal sent already...[numbr off]\r\n01.06.2022 Number ta off', 'Disqualified', '2021-03-18 07:50:01', '2022-06-02 08:44:34'),
(316, 'unknown', NULL, '01814703432', NULL, NULL, NULL, NULL, 'business website korae..number off', 'Disqualified', '2021-03-18 07:50:16', '2022-06-05 03:55:47'),
(317, 'shishir paul', 'shishirpaul971@gmail.com', '01715023039', NULL, NULL, NULL, NULL, 'owner of muktagacha monda shishirpaul971@gmail.com\r\n01.06.2022 vul kore amader ke knock koresilo.uni asole freelancing sikhte chai kono website banabena.', 'Disqualified', '2021-03-18 07:50:56', '2022-06-02 08:39:17'),
(318, 'Amin', 'evangelarchitectbd@gmail.com', '01796886388', NULL, NULL, NULL, NULL, 'prooposal pathate hobe.. email adress pathabe.... / 22/03/2021- Proposal send. work done', 'Converted to Customer', '2021-03-18 07:51:01', '2021-03-23 00:04:38'),
(319, 'rakib', NULL, '01709145578', NULL, NULL, NULL, NULL, 'ecommerce website korabe proposal pathano hoise.\r\n01.06.2022-Clint bolse website er bepare se kotha boleni kokhono ,tarto website lagbena.', 'Disqualified', '2021-03-18 07:51:25', '2022-06-02 08:34:13'),
(320, 'unknown', 'misuk.ahammed@3ilogistics.com', '01971765432', NULL, NULL, NULL, NULL, 'ecommerce website korate chay...  md sir er sathe meeting korte chay.... not interested. 01844185261 tanvir\r\n01.06.2022 aager protisthane ekhon job korsena. tai janena website tara niyese kina', 'Contacted', '2021-03-18 07:52:06', '2022-06-05 10:28:25'),
(321, 'Unknown', NULL, '01711105228', NULL, NULL, NULL, NULL, 'Limon Realstate company website korabe 24 tarikh er modhe delivery lagbe tai demo and proposal sent already... --- Banano hoye gese\r\n 01-06-2022 koto tarikh tar sathe kotha hoyesilo seta janiye janate hobe .tarpor kotha bolbe\r\n15.06.2022-call korte mana korese', 'Disqualified', '2021-03-18 07:52:10', '2022-06-15 07:13:11'),
(322, 'Mizanur Rahaman', 'mizanurcse1452@gmail.com', '01749969029', 'raihantfp@gmail.com', NULL, 'TFP Solution Bangladesh', NULL, 'E-commerce/ BuySell Website[number off]\r\n01-06-2022 website onno protisthan theke niyese but chasse eksathe 43k manush hit korle jeno problem na hoi .setar jonno 3rd party er help', 'Contacted', '2021-03-18 07:52:46', '2022-06-02 05:28:13'),
(323, 'Sujan khan', NULL, '01675932586', NULL, NULL, NULL, NULL, 'Sujan khan website desin korabe.[done,,not \r\n 01-06-2022 -onno company theke niyese tobe amader onnanno service gulo dekhte chai. whatsapp a pathate hobe', 'Contacted', '2021-03-18 07:53:32', '2022-06-02 04:47:23'),
(324, 'nafiz fuad', 'nafis06fuad@gmail.com', '01533572001', NULL, NULL, 'Gallery Bangladesh', '1/28-5 Nijhum Residential Area', 'ecommerce korae office ashbe..  office e ashce multivendor korbe... 60k janabe pore...Work with Us.', 'Converted to Customer', '2021-03-18 07:53:48', '2021-07-08 11:56:42'),
(325, 'Unknown', NULL, '01838400750', NULL, NULL, NULL, NULL, 'Erp apps.(need to call him 9 tarikh) he will come in our office. busy', 'Contacted', '2021-03-18 07:54:00', '2022-06-02 04:42:49'),
(326, 'mamun mattabar', NULL, '01711548041', NULL, NULL, NULL, NULL, 'laravel ecommerce website pore kotha bolbe after eid', 'Contacted', '2021-03-18 07:54:14', '2022-06-04 10:16:51'),
(327, 'mehedi mb', 'mh_asif01@yahoo.com', '01831119863', NULL, NULL, NULL, NULL, 'traders  Asif    domain: airh2h.com   website and mobile app create korbe...kaj onno jaigai diye dise...if he need he will call us.\r\n15.06.2022-amra naki apps korte chainai ,jar karone onno jaiga theke koresen.', 'Contacted', '2021-03-18 07:54:29', '2022-06-15 07:12:11'),
(328, 'rashed', NULL, '01717648989', NULL, NULL, NULL, NULL, 'apu website desihn 10 almost confirm. if need he will call me\r\n 01-06-2022 ekhon apatoto website niye kaj korsenna. jokhon korte chaiben obossoy amader ke diye koraben', 'Contacted', '2021-03-18 07:54:40', '2022-06-02 04:09:24'),
(329, 'ziaul haque', 'threadxstitchdream@gmail.com', '01913804938', NULL, NULL, NULL, NULL, 'pintu@threadxbd.com threadxstitchdream@gmail.com ecommerce website and mobile apps korabe proposal pathano hoise..[done..if he need he will call us.]\r\n 01-06-2022 Call receive korsena\r\n15.06.2022-ekhon ar proyiojon nai', 'Contacted', '2021-03-18 07:55:15', '2022-06-15 07:08:11'),
(330, 'unknown', NULL, '01975559853', NULL, NULL, NULL, NULL, 'website desihn korabe. nummber off. number off. phone  off\r\n01-02-2022-number off kore rekhese', 'Disqualified', '2021-03-18 07:55:25', '2022-06-02 03:55:30'),
(331, 'hamidur', NULL, '01711532449', NULL, NULL, NULL, NULL, 'facebook ads package nnibe.\r\n01-02-2022-website inactive ase tai ,facebook ads dorkar nai.', 'Contacted', '2021-03-18 07:55:57', '2022-06-02 03:53:47'),
(332, 'al fahad', NULL, '01686728394', NULL, NULL, NULL, NULL, 'website done', 'Disqualified', '2021-03-18 07:56:29', '2022-06-05 05:05:55'),
(333, 'delwar', NULL, '01951177516', NULL, NULL, NULL, NULL, 'colab raintree delwar food brand er jonno website korabe.. sathe seo and graphics design korabe...done..if he need he will call us.\r\n01-02-2022-call receive korsena\r\n15.06.2022-kono website lagbena', 'Disqualified', '2021-03-18 07:56:44', '2022-06-15 07:06:02'),
(334, 'tania', NULL, '01755544167', NULL, NULL, NULL, NULL, 'MPC called for software development..\r\n01-02-2022-Number Off\r\n15.06.2022-kew bolte parsena kisu.je madam jugajug koresilo se 5 bosor age job serediyese', 'Disqualified', '2021-03-18 07:57:20', '2022-06-15 07:02:05'),
(335, 'Sheam', NULL, '01701688601', NULL, NULL, NULL, NULL, 'Ecommerce website proposal sent... rongpur teke office ashbe.[not need now] \r\n05.06.2022- Diver niye ekta website khulte chai .jekhane knock kore diver pawa jabe', 'Contacted', '2021-03-18 07:57:48', '2022-06-05 09:01:22'),
(336, 'nuruzzaman', 'nuruzzaman_001@yahoo.com', '01914984785', NULL, NULL, NULL, NULL, 'NewsPortal/ Newspaper Website  15000 TK - 20000 TK   pore janabe. 21/03/2021 -- interested for seo. if need he will call me.', 'Qualified', '2021-03-18 07:58:04', '2022-06-05 09:50:16'),
(337, 'farhana', 'farhana@prime-insurance.net', '01794116503', NULL, NULL, NULL, NULL, 'prime insurance  business website proposal sent korte hobe... farhana@prime-insurance.net ---[done from anoher place]\r\n01-02-2022-onno company theke website niyese & sey company sob doroner support disse.', 'Contacted', '2021-03-18 07:58:33', '2022-06-02 03:42:22'),
(338, 'ashraful', 'ashrafulhoque003@gmail.com', '01675846336', NULL, NULL, NULL, NULL, 'E-commerce/ BuySell Website   Less Than 10000 TK. Phone not recived korbe na\r\n01-02-2022-Domain kina ase amader kas theke ,ekhon kisu somossar jonno website korsena.kisu somoy lagbe', 'Contacted', '2021-03-18 07:58:47', '2022-06-02 03:36:17'),
(339, 'oudidur rahman', 'mtouhid1971@gmail.com', '01794342424', NULL, NULL, NULL, NULL, 'mtouhid1971@gmail.com  https://futureexpressisp.blogspot.com/ mtouhid toudidur rahman ujjol bishas blogspot website theke wordpress e convert korbe and new design korbe.... corporate informative website hobe...[not need now]\r\n01-02-2022-bar bar call kete disse', 'Contacted', '2021-03-18 07:59:26', '2022-06-02 03:29:42'),
(340, 'Harunur Rashid', 'hrashid_bd@outlook.com', '01819465270', NULL, NULL, 'Aviation.com.bd', 'Navana Johura Square 22,Mymensingh road, Dhaka', 'Corporate/ Company Website   10000 TK - 15000 TK.  Work with us.', 'Converted to Customer', '2021-03-18 07:59:28', '2021-07-08 11:50:10'),
(341, 'Wadud', 'abdulwadud989@gmail.com', '01709516316', NULL, NULL, NULL, NULL, 'abdulwadud989@gmail.com    business website design .... [numbber off]\r\n01-02-2022-Number off thake sob somoy', 'Disqualified', '2021-03-18 08:00:00', '2022-06-02 03:24:39'),
(342, 'obaidul', 'obaidul.dpi@gmail.com', '01785768679', NULL, NULL, NULL, NULL, '-- parfect packaging ltd. -- company website banabe -- gazipur -- proposal and sample website sent[osusto,lagle call dibe]', 'Disqualified', '2021-03-18 08:00:44', '2022-06-15 10:26:36'),
(343, 'unknown', 'alaminfarazi@gmail.com', '01912679289', NULL, NULL, NULL, NULL, 'al amin iub website design p4  alaminfarazi@gmail.com  proposal sent. 21/03/21 work done by others  company, not need\r\n01-06-2022 office a meeting korse. ses kore kotha bolbe', 'Contacted', '2021-03-18 08:00:44', '2022-06-02 03:20:53'),
(344, 'Unknown', NULL, '01626676045', NULL, NULL, NULL, NULL, 'DATABASE MANAGEMENT SYSTEM - personal paitance ar jonne - imran --- uni bade ar keo dekhbe na.', 'Disqualified', '2021-03-18 08:01:06', '2022-06-04 07:21:25'),
(345, 'Engr Syed Hasan Expert Group', 'eeicbd@gmail.com', '01717672242', NULL, NULL, NULL, NULL, 'business website design poragst@gmail.com cc: eeicbd@gmail.com   proposal sent. website make with others . i knock him g suite', 'Disqualified', '2021-03-18 08:01:26', '2022-06-16 09:02:15'),
(346, 'Unknown', 'shahrior.kabir94@gmail.com', '01747445733', NULL, '0257164480', NULL, NULL, 'Company: website new electric -- 158 nowabpur   --  sob kisu ok hole payment diye dibe --[need to call next month 1st weak]. next week call him. Eid er por kaj korbe', 'Disqualified', '2021-03-18 08:01:52', '2022-06-05 08:00:13'),
(347, 'Kamel Biswas', 'contact@kamelbiswas.com', '01744529630', NULL, NULL, NULL, NULL, 'SEO proposal sent contact@kamelbiswas.com\r\n01-02-2022-onno protisthan theke niyese.apatoto kisu lagbena ,majhe majhe phone dewa hoi.kono help dorkar hoile nischoy janaben.tai ar phone na dile valo hoi bolese.', 'Disqualified', '2021-03-18 08:02:21', '2022-06-02 03:13:39'),
(348, 'Course Enroll 05/06/2022', 'ittext940.bd@gmail.com', '01623301572', NULL, NULL, NULL, NULL, 'online e course enroll website korabe then people online e course buy korbe and watch online... 30000tk bolben..  p3 or 4 nite hobe... Raat e Call Korbe..', 'Contacted', '2021-03-18 08:02:27', '2022-06-05 04:24:18'),
(349, 'Rony', NULL, '01819399577', NULL, NULL, NULL, NULL, 'Uttra business website design korabe proposal sent...-(not  talking)...Phone off', 'Disqualified', '2021-03-18 08:02:50', '2022-06-16 06:47:58'),
(350, 'ayesha', 'ayeshanigar6@gmail.com', '01816350031', NULL, NULL, NULL, NULL, 'eliance shipping multivendor website       ---------------------------- next week sunday phn korbe......21/03/2021 not interested\r\n01-02-2022-apatoto stop rekhese , abar jokhon korbe amader kas thekey korbe.', 'Contacted', '2021-03-18 08:03:10', '2022-06-02 03:04:49'),
(351, 'Reza Tanvir', 'reza.tanvir02@gmail.com', '01670735611', NULL, NULL, NULL, NULL, 'House: 17, Road: 33, Pallabi, Dhaka   reza.tanvir02@gmail.com  .If he need any service .He will call us.', 'Disqualified', '2021-03-18 08:03:29', '2022-06-15 10:28:01'),
(352, 'Rony', 'hotovaga451046@gmail.com', '01774446494', NULL, NULL, NULL, NULL, 'Ecommerce website design kkorabe..[he need  another website.He will call us.When it need}', 'Disqualified', '2021-03-18 08:04:12', '2022-06-15 10:20:56'),
(353, 'mithun', 'mithun@microtradegroup.com', '01867460396', NULL, NULL, NULL, NULL, 'business website pore contact ekhn o order pay nai.. janabe...\r\n21/10/2020.  ... 22/03/2021--- If need he will call me no response\r\n05.06.2022-ekhon korbena but ekhn theke nio mito jugajug kore jabe .onk kisu somporke jante thakbe .tarpor korbe. accounts related website banate chai. \r\n02-06-2022-Call Receive korsena.', 'Contacted', '2021-03-18 08:04:13', '2022-06-05 08:26:09'),
(354, 'unknown', 'marriagesolutionbd@gmmail.com', '01308244295', NULL, NULL, NULL, NULL, 'number invalid', 'Disqualified', '2021-03-18 08:04:36', '2022-06-01 12:00:02'),
(355, 'BHUIYAN MD MASUM', 'mdmasumbhuiyan@gmail.com', '01785831387', NULL, NULL, NULL, NULL, 'need to send him Proposal....H  ask.mdmasumbhuiyan@gmail.com  Corporate/ Company Website  30000 TK - 50000 TK...work done by others .', 'Disqualified', '2021-03-18 08:04:46', '2022-06-15 09:24:18'),
(356, 'hanif kamal', NULL, '01921347043', NULL, NULL, NULL, NULL, 'garments business website...done not need now anything', 'Disqualified', '2021-03-18 08:05:54', '2022-06-06 11:47:19'),
(357, 'Kamrul', 'kamrulislam.k2019@gmail.com', '01743527411', NULL, NULL, NULL, NULL, 'mail address pathabe then proposal pathate hobe -------------   business website 2 nibe invoice pathano hoise..---------------------------------------------\r\n24/10/2020', 'Converted to Customer', '2021-03-18 08:05:55', '2021-07-07 14:35:49'),
(358, 'rabbani', 'mgr.abbbd@gmail.com', '01678011127', NULL, NULL, NULL, NULL, 'business website p2 korabe... 15k fixed..but ekhn domain hosting er tk dibe pore baki tk dibe...------------------ confirm  ---- number not in service', 'Disqualified', '2021-03-18 08:06:54', '2022-06-05 04:25:13'),
(359, 'masudur rahman', NULL, '01718360657', NULL, NULL, NULL, NULL, 'grand nawab   restaurent er jonno website design korbe...  unicornbd@gmail.com business website korabe.. demo and proposal already sent korsi..after eid', 'Contacted', '2021-03-19 10:17:27', '2022-06-16 08:53:42'),
(360, 'asif munim', NULL, '01719359827', NULL, NULL, NULL, NULL, 'business informative website korabe 12k bolsi pore janabe.. 21/03/2021', 'Disqualified', '2021-03-19 10:19:55', '2022-06-15 11:58:08'),
(361, 'Arefin', 'arefin.farabi@gmail.com', '01971051997', 'Noorzina.prome@gmail.com', '01312131453', NULL, NULL, 'lucky builders  er website design korabe email pathabe.. thn proposal sent... number not in service,\r\n01-06-22 number off', 'Disqualified', '2021-03-19 10:22:58', '2022-06-01 11:59:16'),
(362, 'Farzana', NULL, '01302689369', NULL, NULL, NULL, NULL, 'ecommerce website korabe 15k covid package.. number off', 'Disqualified', '2021-03-19 10:24:00', '2022-06-18 10:29:20'),
(363, 'Lutfar Dhali', NULL, '01703939777', NULL, NULL, NULL, NULL, 'Nochimon panorama documentary  office ashce then 11k fixed.. proposal niye gese.-----------  \r\nnumber off\r\n28/10/2020', 'Disqualified', '2021-03-19 10:25:06', '2022-06-05 08:58:16'),
(364, 'saikat', 'nfsforbd@gmail.com', '01707011669', NULL, NULL, NULL, NULL, 'informative business website... prposal sent .... 21/03/2021. Busy', 'Disqualified', '2021-03-19 10:26:33', '2022-06-15 10:50:00'),
(365, 'Amit Debnath', 'amitdebnath.31@gmail.com', '01754636797', NULL, NULL, NULL, NULL, 'garment website proposal sent and gsuite sent demo link sent.... ------------------------------------------\r\n number off\r\n29/10/2020', 'Disqualified', '2021-03-19 10:45:02', '2022-06-05 10:17:41'),
(366, 'babby zahidul', 'zahiddiu250@gmail.com', '01575186624', NULL, NULL, NULL, NULL, 'book sell korbe ecommerce website office e meeting kore gese....------  2-3 din por \r\njanabe...number off\r\n01-06-22 number off', 'Disqualified', '2021-03-19 10:47:14', '2022-06-01 11:57:23'),
(367, 'mehedi sojol', NULL, '01707008328', NULL, NULL, NULL, NULL, 'website design next week phn... 21/03/2021---pore khota বলবে\r\n০১-০৬-২০২২ নাম্বার পরিবর্তন হয়েছে। তার কাছ থেকে নাম্বার নিয়ে কথা বললে, অন্য দিন কল দিতে বলেন।আর এখন ব্যবহার কারি আরেক টা কাজ দিবে।', 'Contacted', '2021-03-19 10:48:35', '2022-06-01 11:50:29'),
(368, 'Unknown', 'ruksanakadir13@gmail.com', '01703991881', NULL, NULL, NULL, NULL, 'ksana kadir   COO  dahmashi corporation   ecommerce website proposal sent ..-----website done', 'Disqualified', '2021-03-19 10:49:49', '2022-06-05 05:05:24'),
(369, 'Unknown', NULL, '01319344949', NULL, NULL, NULL, NULL, 'website new hosting e transfer korbe... oni hosting kine dibe amra migrate kore dibo... php te website kora.. https://www.aarte.com.bd/ no response', 'Disqualified', '2021-03-19 10:50:24', '2022-06-04 05:38:08'),
(370, 'Abdullah-Al-Shafi', NULL, '01611620720', NULL, NULL, NULL, NULL, 'n.zcompany@yahoo.com  dynamic basic website with cpanel or CMS. 10k fixed... proposal sent already....-----22/03/2021-- if need he will call me. pore janbe', 'Disqualified', '2021-03-19 10:50:50', '2022-06-05 08:01:31'),
(371, 'Raju Ahmed', 'bizline.raju@gmail.com', '01676346318', NULL, NULL, NULL, NULL, 'Website design business proposal sent.. bizline.raju@gmail.com ---- ---- ----  sunday or onay asbe...\r\ninterested. next time call him. number off', 'Disqualified', '2021-03-19 10:51:26', '2022-06-15 09:29:02'),
(372, 'moinul islam', 'moinulpatoary@gmail.com', '01886204086', NULL, NULL, NULL, NULL, 'jhenaidah  moinulpatoary@gmail.com   exm site lazada.com.my   exm site dekhe then proposal patho... 21/03/2021 - send proposal .num অফফ\r\n০১-০৬-২০২২ website অন্য প্রতিষ্ঠান থেকে নিয়েছেন কিন্তু এখনো শুরু করেন নাই।', 'Contacted', '2021-03-19 10:52:24', '2022-06-01 11:21:12'),
(373, 'Unknown', 'info@megatechdhaka.com', '01534303674', NULL, NULL, NULL, NULL, 'House: 16, Road: 140, apt A2, Behind old pizza hut gulshan 1,    business wwebsite proposal sent already...birokto hocche', 'Disqualified', '2021-03-19 10:53:06', '2022-06-04 05:37:41'),
(374, 'Unknown', 'tanvir.scholarszone@gmail.com', '01714076481', NULL, NULL, NULL, NULL, 'ecommerce website design korabbe... number অফফ\r\n০১-০৬-২০২২ মোবাইল অফ\r\n05.06.2022-Number Off thake', 'Disqualified', '2021-03-19 10:55:28', '2022-06-05 08:00:37'),
(375, 'Unknown', NULL, '01401122221', NULL, NULL, NULL, NULL, 'banasree mobile apps banate chay.. setate screenshort upload korbe.. num off', 'Disqualified', '2021-03-19 10:56:53', '2022-06-04 05:37:25'),
(376, 'maeesha mitul', NULL, '01408485369', NULL, NULL, NULL, NULL, 'ecommerce website korabe .... laravel..number off', 'Disqualified', '2021-03-19 10:57:42', '2022-06-15 09:30:53'),
(377, 'Abdur Tutul', NULL, '01787662386', NULL, NULL, NULL, NULL, 'Municipal Association of Bangladesh-MAB!  mab.org.bd Redesign korte hobe...no \r\nরেস্পন্সে\r\n০১-০৬-২০২২,  অন্য প্রতিষ্ঠান থেকে নিয়েছেন কিন্তু মন মতো হইনি তাই আমাদেরকে দিতে পারে।', 'Contacted', '2021-03-19 10:58:26', '2022-06-01 11:09:46'),
(378, 'rafi bokhari', 'rafi.bokhari@gmail.com', '01742568655', NULL, NULL, NULL, NULL, 'website design korabe... zafar. 22/03/2021-- Tar MD r shate khota bole janabe', 'Disqualified', '2021-03-19 10:59:37', '2022-06-15 10:24:07'),
(379, 'Unknown', 'chair.patronas@gmail.com', '01777666600', NULL, NULL, NULL, NULL, 'news portal korabe... amader basic proposal pathano hoise... dhaka sena nibash thake... \r\nonar kach theke detail requirement niye then kaj done korte hobe.... no রেস্পন্সে\r\n৩০-০৫-২২ কল রিসিভ করছেনা\r\n09/01/21 uni jevabe korate chasse ,thik oivabe hossena . bananite ekta group kaj korse .but bujhanur por amader ke diye dekhte chai .ekhon meeting a 1 hour por call korte hobe .', 'Contacted', '2021-03-19 11:41:21', '2022-06-05 07:48:48'),
(380, 'Raysa Jashim', 'raysa@innoweb.co', '01776535644', NULL, NULL, NULL, NULL, 'Require Company Website for a Software development company. Want the look of the website to be like www.newscred.com  budget 20000tk   oni amader website e contact korse.. kotha bole then detail requiement nen then quote koren.. website kora hoise', 'Disqualified', '2021-03-19 11:42:14', '2022-06-05 10:17:27'),
(381, 'Rakib Ahmed dis', NULL, '01672073070', NULL, NULL, NULL, NULL, 'rakib@itn-buet.org  We have needed to redesign https://itn.buet.ac.bd/web/ ourwebsite like the website offering similar functionalities mentioned below:  https://www.sei.org/     buet er website agbe jeta demo dise same to same...call tomorrow', 'Disqualified', '2021-03-19 11:43:12', '2022-06-18 03:36:00'),
(382, 'shahajan alam', 'iamkhandhaka@yahoo.com', '01972726068', NULL, NULL, NULL, NULL, 'one blog site and one ecommerce website design korbe.... email text korbe proposal pathate hobe.... number off\r\n05.06.2022-Number off', 'Contacted', '2021-03-19 11:43:46', '2022-06-05 08:27:49'),
(383, 'Nahid Ahmed', 'nahidahammed000@gmail.com', '01636696632', NULL, NULL, NULL, NULL, 'Clipping Path er website korabe...      prposal pathiye followup korte hobe..  amader kora demo website eta dekhaben.. http://photoexpertsbd.com/. not response number off', 'Disqualified', '2021-03-19 11:44:35', '2022-06-01 10:06:31'),
(384, 'Unknown', NULL, '01708408898', NULL, NULL, NULL, NULL, 'Nafees Shop  website design korabe... number off', 'Disqualified', '2021-03-19 11:45:15', '2022-06-04 05:37:09'),
(385, 'Jahir Uddin Shamim', NULL, '01515652791', NULL, NULL, NULL, NULL, 'IT Officer Reaching People in Need (RPN) We need an attractive website. Accounts Software:including   Accounts Management Soft. Job chere dise, akhon ar lagbe na.\r\n০১-০৬-২০২২ অন্য প্রতিষ্ঠান এ চাকরি করার সময় কল দিয়েছিল কিন্তু এখন লাগবে না।', 'Disqualified', '2021-03-19 11:46:26', '2022-06-01 10:05:29'),
(386, 'Shah Alam', NULL, '01819454892', NULL, NULL, NULL, NULL, 'Website Design, 20/03/2021 interested . Dont call him.  if need he will call me', 'Disqualified', '2021-03-19 11:48:30', '2022-06-01 10:12:06'),
(387, 'Unknown', NULL, '01952671935', NULL, NULL, NULL, NULL, 'website design. work done with others comapnay. দনে\r\n৩০-০৫-২২, অন্য প্রতিষ্ঠান থেকে নিয়েছেন।', 'Disqualified', '2021-03-19 11:48:50', '2022-06-01 11:20:26'),
(388, 'Abdur Barik', NULL, '01792807782', NULL, NULL, NULL, NULL, 'Website design Fb number অফফ\r\n০১-০৬-২০২২ কল রিসিভ করছেনা।\r\n05.06.2022-Mobile Off', 'Disqualified', '2021-03-19 11:49:25', '2022-06-05 07:36:55'),
(389, 'Unknown', NULL, '01886662926', NULL, NULL, NULL, NULL, 'Swing Chair Bangladesh number অফফ\r\n৩০-০৫-২২ নাম্বার বন্ধ।', 'Disqualified', '2021-03-19 11:50:09', '2022-06-01 09:58:14'),
(390, 'Unknown', NULL, '01686440588', NULL, NULL, NULL, NULL, 'shaan issfar impulse\r\n৩০-০৫-২২, অন্য প্রতিষ্ঠান থেকে নিয়েছেন আর কিছু লাগবে না।', 'Contacted', '2021-03-19 11:50:29', '2022-06-01 10:11:13'),
(391, 'Nazrul', NULL, '01712847384', NULL, NULL, NULL, NULL, 'Computer Clinic,after eid', 'Disqualified', '2021-03-19 11:50:59', '2022-06-15 10:17:16'),
(392, 'Rafi', NULL, '01882082272', NULL, NULL, NULL, NULL, 'oversead number off', 'Disqualified', '2021-03-19 11:51:22', '2022-06-15 10:23:26'),
(393, 'Unknown', NULL, '01637555262', NULL, NULL, NULL, NULL, 'Capital Oxygen Alami office number off', 'Disqualified', '2021-03-19 11:52:03', '2022-06-04 05:37:00'),
(394, 'Unknown', NULL, '01994807111', NULL, NULL, NULL, NULL, 'training united it... number off\r\n৩০-০৫-২২ number off', 'Disqualified', '2021-03-19 11:53:26', '2022-06-01 09:57:05'),
(395, 'Unknown', 'sanjana.orora06@gmail.com', '01720600857', NULL, NULL, NULL, NULL, 'sanjana.orora06@gmail.com biplop- 01718667689   3/4 tarikh ecommerce kaj dibe..------ number off-', 'Disqualified', '2021-03-19 11:54:00', '2022-06-04 05:36:46'),
(396, 'sohel rana', NULL, '01826674269', NULL, NULL, NULL, NULL, 'korbe na\r\n05.06.2022- Number Busy\r\n15.06.2022-Call receive korsena', 'Disqualified', '2021-03-19 11:54:35', '2022-06-15 06:56:43'),
(397, 'Unknown', NULL, '01303350980', NULL, NULL, NULL, NULL, 'Gce arka sarker laravel e website korabe... meeting kore ashce... quotation pathano hoise..----website done', 'Disqualified', '2021-03-19 11:54:56', '2022-06-04 05:36:32'),
(398, 'nafis khan', NULL, '01771303404', NULL, NULL, NULL, NULL, 'number off', 'Disqualified', '2021-03-19 11:58:23', '2022-06-15 10:18:31'),
(399, 'MC Baha F', NULL, '01996421123', NULL, NULL, NULL, NULL, 'website design by us', 'Disqualified', '2021-03-19 11:58:47', '2022-06-15 10:24:21'),
(400, 'Rony', 'rony@reliance-bd.com', '01730700153', NULL, NULL, NULL, NULL, 'rony@reliance.com.bd   rony@reliance-bd.com  fast loading business website redesiggn korabe insurance company website....20/03/20221 website fast korbe.', 'Proposal Sent', '2021-03-19 11:59:52', '2022-06-04 04:16:55'),
(401, 'Unknown', NULL, '01724237546', NULL, NULL, NULL, NULL, 'whatsapp e contact korse.. miraz dadu green ------------------ecommerce website. innterested 20/03/2021. if need he will call us. akhon dorkar nei', 'Disqualified', '2021-03-19 12:00:15', '2022-06-04 05:35:58'),
(402, 'tanvir', NULL, '01617263826', NULL, NULL, NULL, NULL, 'smart kids number off', 'Disqualified', '2021-03-19 12:02:13', '2022-06-15 10:13:34'),
(403, 'Unknown', 'julhas86miah@gmail.com', '018216666027', NULL, NULL, NULL, NULL, 'laravel 60k package no response \r\n৩০-০৫-২২ কল রিসিভ করছেনা\r\n05.06.2022-rong number bolse', 'Disqualified', '2021-03-19 12:06:49', '2022-06-05 07:34:12'),
(404, 'Rupak', 'paper21ltd.bd@gmail.com', '01407051934', NULL, NULL, NULL, NULL, 'paper21ltd.bd@gmail.com    paper21bd.com website redesign korabe... number off', 'Disqualified', '2021-03-19 12:09:32', '2022-06-02 10:22:38'),
(405, 'md nazrul islam', 'hazicourier@gmail.com', '01684685443', NULL, NULL, NULL, NULL, 'website redesign korabe.. emaile  requirement pathabe.. whats app e contact \r\nkorse... amader service e khusi na . website done by others\r\n4/01/2021. 20/03/2021- No response. Onar sir er shate khota bole janabe. not need\r\n০১-০৬-২২ কল রিসিভ করছেনা।\r\n05.06.2022-apatoto kisu lagbena amader ekhan theke .number ase proyiojon hole call dibe .amader call dite hobena.', 'Contacted', '2021-03-19 12:10:15', '2022-06-05 07:30:36'),
(406, 'Mujahid', 'mujahidul2014@gmail.com', '01727554825', NULL, NULL, NULL, NULL, 'training center er jonno web apps create korbe.. onar requirement mail ore patha be admission and online e payment nibe... etc../ pore Khota  bolbe. Akhon projon nei, projon hole amake call korbe 20/03/2021. completed by others', 'Proposal Sent', '2021-03-19 12:10:52', '2022-06-01 09:48:58'),
(407, 'rasid sarat', NULL, '01711108236', NULL, NULL, NULL, NULL, 'matchine imput korar jonno ekta input website and ekta pdf company profile create korbe business website 14k company profile 15k. call him after 1hour. korbe na\r\n ০১-০৬-২২ --informative website নিবে কিছু দিন পর। এখন কিছু ঝামেলা আছে।', 'Contacted', '2021-03-19 12:11:31', '2022-06-01 08:10:39'),
(408, 'Arif Hossain', 'Support@patwarygroup.com', '01755674960,01917284831-yasin arafat', NULL, NULL, 'patwary group', NULL, 'info.arafat.pmc@gmail.com', 'Proposal Sent', '2021-03-20 03:13:59', '2022-05-31 10:27:40'),
(409, 'multi Level', NULL, '01860534881', NULL, NULL, NULL, NULL, 'app and Website korbe না\r\n০১-০৬-২২- অন্য প্রতিষ্ঠান থেকে নিয়েছেন আর কিছু লাগলে আমাদের কে জানাবে।', 'Contacted', '2021-03-20 03:18:03', '2022-06-01 04:00:51');
INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(410, 'Musa', 'arefurrahman1976@gmail.com', '01716865999', NULL, NULL, NULL, NULL, 'Ecommerce number off', 'Disqualified', '2021-03-20 03:19:26', '2022-06-16 08:58:22'),
(411, 'imtiaj', NULL, '0 1715444538', NULL, NULL, NULL, NULL, 'PHYSIOTHERAPIST . \r\nOur price is very high. \r\nThat\'s why he gave the project to another company', 'Disqualified', '2021-03-20 07:18:34', '2022-06-18 10:49:26'),
(412, 'Aviators', NULL, '+380667176575', NULL, NULL, NULL, NULL, 'https://www.ruseducation.in/\r\neducation consultancy website korabe... whatsapp e knock koren.. no response', 'Disqualified', '2021-03-21 05:21:20', '2022-06-05 05:02:52'),
(413, 'KS Alam', 'Texaidcorp@gmail.com', '01714112384', NULL, NULL, NULL, NULL, 'Want to develop a website for my company. Can you help me for this. Positive , Proposal send kora hoise. Proposal check kore amake janabe. business start korar por website korabe. Next month a kaj korbe', 'Disqualified', '2021-03-21 05:25:27', '2022-06-06 11:23:51'),
(414, 'Partha Protim Sarkar', 'parthaprotimsarkar1@gmail.com', '01712026119', NULL, NULL, NULL, NULL, 'We have already developed a Website for our Company Amenity Property Management & Services by an individual. But at this moment he is unavailable. We want to include more contents, upgrade graphics & presentations and Testimonials Section. Anticipating your kind response, Partha Protim Sarkar Managing Director..Budget tmn nei[ https://www.amenitybd.org/ ]need to call him 29 th march.', 'Converted to Customer', '2021-03-21 05:32:05', '2021-06-16 04:05:17'),
(415, 'Arghya Shrabon', 'arghyavivo@gmail.com', '01611975869', NULL, NULL, NULL, NULL, 'Facebook e contact korse... e-commerce website design korabe...[he will come in our office for order]. next month call him', 'Disqualified', '2021-03-21 09:21:17', '2022-06-05 10:21:52'),
(416, 'Masudul Hoque', 'info@excelfes.com', '01796070022', NULL, '01916572737', NULL, NULL, 'excelfes.com This my web address. I need to add more contents in my page, to buy 5GB host and upgrade my official email. Give me your email address to show my contents what I want to add. Please inform me total price/cost . 21/03/2021-- phone off. Phone off. Phone not recive', 'Disqualified', '2021-03-21 09:26:01', '2022-06-06 11:23:30'),
(417, 'Md. Khalilur Rahman', 'akandbetbari@yahoo.com', '01710855510', NULL, NULL, 'e', 'commerce website..phone off', NULL, 'Disqualified', '2021-03-22 02:36:03', '2022-06-15 11:39:35'),
(418, 'Sanjana Ahmed', 'godot5bd@gmail.com', '01616461723', NULL, NULL, NULL, NULL, 'Ecommerce Website and Android Apps. work by others\r\n০১-০৬-২২, এই খানে যে নাম্বার  আছে সে শুধু আমাদের address    দিয়েছে। website অন্য প্রতিষ্ঠান থেকে নিয়েছেন।', 'Disqualified', '2021-03-22 03:03:27', '2022-06-01 07:26:41'),
(419, 'unknown', NULL, '01966774422', NULL, NULL, NULL, NULL, 'poran klind kalka asba', 'Disqualified', '2021-03-22 03:12:28', '2022-06-05 04:15:22'),
(420, 'Safkat Sakib', 'safkatdrmc@gmail.com', '01794699957', NULL, NULL, NULL, NULL, 'Reference websites: shantaholdings.com, btibd.com . number off', 'Disqualified', '2021-03-22 05:00:25', '2022-06-02 10:16:58'),
(421, 'Sazadul Islam', 'info@maanstechbd.com', '01869414443', NULL, NULL, NULL, NULL, 'Whatsapp e contact korse ..22/03/2021 zoom mettting korb done. need to call him Saturday. call him afer 2 hours. Call him to night. next months call him,  23/05/21. dhaka ase call korbe\r\n01-06-22- techno BD theke koriyesen.orai sob service disse', 'Disqualified', '2021-03-22 05:13:06', '2022-06-01 07:02:18'),
(422, 'Security', NULL, '01729229832', NULL, NULL, NULL, NULL, 'business website-securite and digital advisting.', 'Contacted', '2021-03-22 23:05:20', '2022-06-04 04:10:47'),
(423, 'Md Masum', 'housnaura.my@gmail.com', '01715779757', NULL, NULL, NULL, NULL, 'Ecommerce website', 'Disqualified', '2021-03-22 23:06:57', '2022-06-16 10:44:47'),
(424, 'Khaled Redwan', 'redwan@impetuslounge.com', '01309354159', NULL, NULL, NULL, NULL, 'SEO KORABA-Presention detha hoba', 'Disqualified', '2021-03-23 05:19:07', '2022-06-05 10:21:27'),
(425, 'unknown', NULL, '01868995239', NULL, NULL, NULL, NULL, 'Number off', 'Disqualified', '2021-03-23 08:10:01', '2022-06-04 05:31:32'),
(426, 'Jewel Chowdhury', 'silkysecret2020@gmail.com', '01814473515', NULL, NULL, NULL, NULL, 'ERP proposal sent', 'Disqualified', '2021-03-23 23:57:44', '2022-06-18 10:27:38'),
(427, 'unknown', NULL, '01734446149', NULL, NULL, NULL, NULL, 'no response', 'Disqualified', '2021-03-24 02:37:14', '2022-06-05 08:01:49'),
(428, 'Sazadul', 'maanstech@gmail.com', '01869-414443', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-03-24 05:21:21', '2022-06-02 10:13:15'),
(429, 'Shanto islam', NULL, '01999309879', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-03-24 05:21:48', '2022-06-02 08:10:39'),
(430, 'unknown', 'khanpropertieskp81@gmail.com', '01616248504', NULL, NULL, NULL, 'Mirpur', 'Business Website no response', 'Disqualified', '2021-03-24 22:11:21', '2022-06-05 08:01:57'),
(432, 'Mosaraf Hossien', NULL, '0177-1853797', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-03-25 02:52:33', '2022-06-05 10:19:36'),
(433, 'Arafat Hossain', 's.anowaroverseasltd2015@gmail.com', '01627000300', NULL, NULL, 's.anowar overseas ltd', '22 DIT II Cir, Dhaka 1212.', 'Greetings from S. Anowar Overseas Ltd !! Thank you for visiting our Gulshan office. As per the brief discussion we had, I have gathered some of the requirements you have proposed. 1. The focus of the Website shall be purely based on Travel and Tourism. 2. The website should be user-friendly, welcoming and must have language options for the most common languages initially. 3. We also require the best and secure gateway for receiving payments. 4. The website should have multiplatform payment options as such, all major international and local outlets. The aim is to be as flexible as possible. 5. The website should have google Adsense support. 6. There must be an end-to-end secure encryption/decryption barrier to receive credentials and sensitive information from customers. 7. The website should be linked with the GDS ticketing system. 8. Travel booking options along with booking for hotels and transportation. 9. SEO and Analytics are required for the website to be on the search engines. The above mentioned are our primary objectives, We hope you can provide us the most feasible quote for our consideration. We hope your cooperation at the earliest.\r\nProject Budget	100000 TK - 200000 TK', 'Disqualified', '2021-03-25 07:06:38', '2022-06-15 11:22:14'),
(434, 'Masudur Hoque', 'Masudurhoque@gmail.com', '01884164016', NULL, NULL, NULL, NULL, 'Software banate chay. whatsapp e contact korse.. 25/03/2021 proposal send korte hobe. No response,busy', 'Disqualified', '2021-03-25 07:54:59', '2022-06-16 08:14:12'),
(435, 'Harunur Rashid', 'hrashid_bd@outlook.com', '018-19465270', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'lead', '2021-03-27 00:36:41', '2022-06-19 08:37:10'),
(436, 'Saiful Islam', 'tutorprovide@gmail.com', '01832522405', NULL, NULL, NULL, NULL, 'Proposal sennd...pore korbe ..unar project atke ache\r\n01-06-22 নিজেদের developing company ase.', 'Disqualified', '2021-03-27 05:09:09', '2022-06-01 06:57:38'),
(437, 'Md. Mostafa Kamal', 'mostafa.win@gmail.com', '01758779826', NULL, NULL, NULL, NULL, 'My website will be SEO friendly Multivendor E-commerce website with apps by laravel format.\r\nLooking for	E-commerce/ BuySell Website\r\nProject Budget	500000 TK - 1000000 TK', 'lead', '2021-03-27 06:42:12', '2022-06-19 08:37:10'),
(438, 'Mizan Sarkar', NULL, '01711245932', NULL, NULL, 'Fabric Care BD', NULL, 'He will come in our office. Phone off .', 'lead', '2021-03-28 06:56:25', '2022-06-19 08:37:10'),
(439, 'Shamim Vhai', 'safecarebd42@gmail.com', '01958082607', NULL, NULL, NULL, NULL, 'web+app, pore  janabe , pore kaj korbe', 'lead', '2021-03-28 23:07:43', '2022-06-19 08:37:10'),
(440, 'Kazi Islam', 'kazi.islam@crossline-apparelgroup.com', '01711567334', NULL, NULL, NULL, NULL, 'Business website  package-4, Proposal send. Sonibar final meeting\r\n  ০১-০৬-২২ Busy number\r\n05.06.2022-Call receive korsena\r\n15.06.2022-Call receive korsena', 'Disqualified', '2021-03-28 23:29:27', '2022-06-15 06:55:10'),
(441, 'Muzbul Islam Faruque', 'aup@sambd.com', '01721563952', NULL, NULL, NULL, NULL, 'Business Website Proposal and Damo Padiease.', 'lead', '2021-03-28 23:38:29', '2022-06-19 08:37:10'),
(442, 'Maruf Sir', NULL, '01847127222', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-03-29 01:45:15', '2021-07-08 16:34:19'),
(443, 'Sajid Solaiman', 'solaiman.sajid@gmail.com', '01712603552', NULL, NULL, 'Shahabuddin Textlies', NULL, NULL, 'Converted to Customer', '2021-03-31 22:59:50', '2021-04-10 04:14:57'),
(444, 'josim uddin', NULL, '01790034549', NULL, NULL, NULL, 'mirpur', 'a website for nursing  service\r\nbudget 5000/=', 'lead', '2021-04-03 14:25:39', '2022-06-19 08:37:10'),
(445, 'Mr. Rasel', NULL, '01759050151', NULL, NULL, NULL, NULL, 'looking for car service website.. done bye others', 'Disqualified', '2021-04-03 14:27:04', '2022-06-02 04:09:36'),
(446, 'MYEN Uddin (Akaash)', 'bdmanager@intlgeo.com', '01313483485', NULL, NULL, 'Geo Oversees Service Ltd', 'House# 84 (6th Floor), R# 11, Block# D Banani, Dhaka - 1213', NULL, 'Converted to Customer', '2021-04-03 23:08:36', '2021-04-03 23:08:36'),
(447, 'unknown', NULL, '01755555870', NULL, NULL, NULL, NULL, 'Call Creative tech park.', 'lead', '2021-04-03 23:15:27', '2022-06-19 08:37:10'),
(448, 'Evan', NULL, '01313734203', NULL, NULL, 'Evan International .', NULL, 'I told 10000/= bt he got cheaper than us.', 'lead', '2021-04-05 07:25:10', '2022-06-19 08:37:10'),
(449, 'Mijanur Rahman', NULL, '01300028869', NULL, NULL, NULL, NULL, 'Quize', 'lead', '2021-04-06 02:39:13', '2022-06-19 08:37:10'),
(450, 'MR. Shafiq Alam.', 'alam@acctaxltd.co.uk', '+44 7907 123123', NULL, NULL, 'AccTax Accountants Limited', NULL, NULL, 'lead', '2021-04-07 02:17:59', '2022-06-19 08:37:10'),
(451, 'MD. Murad', 'mdmuradlive@gmail.com', '01742909939', NULL, '01536454503', NULL, 'sunamgong', 'calcified Website \r\n\r\nhttps://www.kctcvisualcenter.com/\r\ncall me for counseling .', 'Disqualified', '2021-04-08 01:03:23', '2022-06-16 08:09:06'),
(452, 'Bulbul', NULL, '01971391655', NULL, NULL, NULL, NULL, 'domain hosting soho akta small website design. kom budgett. realsttaate. phone kkorrbee 1 week er ভিইতর\r\n০১-০৬-২২-অন্য প্রতিষ্ঠান থেকে নিয়েছেন।', 'Contacted', '2021-04-08 04:45:19', '2022-06-01 06:39:07'),
(453, 'Naveed Sultan', 'naveedsultant14@gmail.com', '01979680761', NULL, NULL, NULL, NULL, 'Business Website Proposal', 'lead', '2021-04-09 23:27:32', '2022-06-19 08:37:10'),
(454, 'Family Plastic Ltd.', 'mdanwarislam@gmail.com', '01721868571', NULL, NULL, 'Family Plastic Ltd.', 'House # 431/3, Flat-B4, Senpara parbata, Mirpur, Dhaka', 'website design korabe. CEO er shate kal metting korte hobe. Proposal sent. Lockdown er pore kaj korbe. 12/04/2021. busy', 'Converted to Customer', '2021-04-10 01:30:41', '2021-07-10 03:59:43'),
(455, 'Pritam', 'cardinalcareltd@gmail.com', '01847363805', NULL, NULL, 'Cardinal Care Ltd', NULL, 'Dear Concern, Please share a price quotation for E-Commerce Web Development (Health & Beauty Shop). Company Name: Cardinal Care Ltd. Facebook page: www.facebook.com/cardinalcarebd/ Type of Business: Healthcare & Beauty Shop. Looking forward to your feedback.  \r\nLooking for	E-commerce/ BuySell Website.\r\nNumber off. Proposal send kora hoise. Tara nejerai sitte deveelop  korbe', 'lead', '2021-04-10 01:46:20', '2022-06-19 08:37:10'),
(456, 'Ns sakib', NULL, '01310468270', NULL, NULL, NULL, NULL, 'Looking for Search Engine Optimization (SEO). Onno jagay hire kore felse.', 'Disqualified', '2021-04-10 01:47:20', '2022-06-16 06:34:09'),
(457, 'Mohammed abu sayed', 'sales.holidayexpert21@gmail.com', '01730718087', 'canadasayed@gmail.com', NULL, 'Holiday Expert', NULL, 'Looking for	Corporate/ Company Website. after one our call. Proposal phatate hhobe, canadasayed@gmail.com. Lockdown er por office khulle kaj korbe. 08/05/21. flight on hole kaj korabe.', 'Converted to Customer', '2021-04-10 01:48:09', '2022-04-20 07:14:30'),
(458, 'Ashraful Imran', NULL, '01883469206', NULL, NULL, NULL, NULL, 'Looking for E-commerce/ BuySell Website  preference site demo : https://www.meenaclick.com. Onno  jaga  theke kaj koraisee.', 'lead', '2021-04-10 01:49:54', '2022-06-19 08:37:10'),
(459, 'Iftekhar Ansari', 'ansarii.iftekhar@gmail.com', '+91 97664 98585', NULL, NULL, NULL, 'India', NULL, 'lead', '2021-04-10 04:09:56', '2022-06-19 08:37:10'),
(460, 'Unknown', NULL, '01946654289', NULL, NULL, NULL, NULL, 'it class a vorte hota chie', 'lead', '2021-04-10 06:39:55', '2022-06-19 08:37:10'),
(461, 'Monir', NULL, '01710114316', NULL, NULL, 'Image Editing House', NULL, NULL, 'lead', '2021-04-13 08:14:57', '2022-06-19 08:37:10'),
(462, 'Balal Parvas', 'nordicprinting@gmail.com', '01964144579', NULL, '029511384', 'Nordic Group of company', NULL, 'Business Website-proposal and damo patate hoba', 'lead', '2021-04-15 06:28:52', '2022-06-19 08:37:10'),
(463, 'Saad Sir', 'saad@alencs.com', '01713171817', NULL, NULL, NULL, NULL, 'E commerce Website-Laraval website done by others', 'Disqualified', '2021-04-15 06:29:33', '2022-06-18 10:48:56'),
(464, 'Unknown', 'info@fagooba.com', '01552630785', NULL, NULL, NULL, NULL, 'Business Website proposal and damo debo', 'lead', '2021-04-15 06:31:01', '2022-06-19 08:37:10'),
(465, 'Md Tanvir Siddiquee', 'neerob01@gmail.com', '01818663606', NULL, NULL, NULL, NULL, 'Looking for	E-commerce/ BuySell Website\r\nwant to develop an online clothing store like Raw nation: https://www.rawnation.net/ Please submit the Quotation by mail. 2-1 din por phone dite hobe.\r\nnumber off', 'lead', '2021-04-15 07:48:33', '2022-06-19 08:37:10'),
(466, 'Akhtaruzzaman', 'aktarjp2014@gmail.com', '01716586926', NULL, NULL, NULL, NULL, 'Looking for	Digital Advertising (Facebook/ Google)\r\nI will buy a link to www.visitsite.bravesites.com subdomain where a simple ad and bkash payment gateway works. Price nego. Email communni pref. like letter. 17/04/2021 Quotation Phatate hobe\r\n০১-০৬-২২- অফিস এ মিটিং  করছেন শেষ করে কথা বলবে।', 'Contacted', '2021-04-15 07:53:22', '2022-06-01 06:31:15'),
(467, 'kamrul', 'arch.kamrul85@gmail.com', '01686635989', NULL, NULL, 'Interior Design', NULL, 'demo and proposal sent', 'Disqualified', '2021-04-15 12:05:49', '2022-06-14 09:24:43'),
(468, 'Hoque Sadad', 'sadad@ribbons.com.bd', '0 1789544716', NULL, NULL, 'RIBBONS COMMUNICATION LTD', NULL, NULL, 'Converted to Customer', '2021-04-15 12:08:49', '2021-05-02 04:11:36'),
(469, 'Advanced Consultency', NULL, '01611531383', NULL, NULL, NULL, NULL, '০১-০৬-২২--online যে ব্যবসা ছিলো সেটা বাদ দিয়েছে।', 'Contacted', '2021-04-15 12:13:05', '2022-06-01 05:28:01'),
(470, 'Mosarofe Hosain', NULL, '01629427932', NULL, NULL, NULL, NULL, 'Ecommerce Website. whatsapp a proposal phatano hoise. Phone not received. tar md \r\nonnno jagay  kaj koray  felse.\r\n০১-০৬-২২- যে প্রতিষ্ঠান থেকে website নিয়েছেন তারা সব ধরনের support  দিচ্ছে।', 'Contacted', '2021-04-16 07:03:27', '2022-06-01 05:28:27'),
(471, 'Rakib Ahmed', 'dbcof65432111@gmail.com', '01974324221', NULL, NULL, NULL, NULL, 'business website. Proposal send,Phone not recived', 'lead', '2021-04-16 11:31:53', '2022-06-19 08:37:10'),
(472, 'Abdus Samad', 'holoplus@dhaka.net', '01611106630', NULL, NULL, 'Holoplus Techno Systems Ltd', '79 Shiddeshwary Circular Road, (Opposite to SB & CID Office) Shanti Nagar, Ramna', 'business website-domain hosting asa. Proposal phatano hoise. 2 website korbe. All done, Ajke Payment korbe.Done', 'Converted to Customer', '2021-04-17 02:56:28', '2021-07-07 11:32:24'),
(473, 'Lalon', NULL, '01908257312', NULL, NULL, NULL, NULL, 'dedicate carver niva and vps. Site customize korbe laravel.', 'Disqualified', '2021-04-18 04:24:05', '2022-06-05 08:56:05'),
(474, 'Tarque  sir', 'martghat@gmail.com', '01913005050', NULL, NULL, NULL, NULL, 'Ecommerce website proposal and damo send', 'Proposal Sent', '2021-04-19 04:16:05', '2021-04-19 04:19:38'),
(475, 'golam mustofa', 'mostafa.pust@gmail.com', '01739981122', NULL, '01730318989', 'Universal Food Ltd', NULL, 'business website redesign korabe.. proposal pathan..', 'lead', '2021-04-19 11:36:08', '2022-03-03 09:26:56'),
(476, 'Saiful munna Sir', 'saifulmunna28@gmail.com', '01799782388', NULL, NULL, NULL, NULL, 'Ecommerce website korabe na\r\n০১-০৬-২২- website বানাতে ছেয়েছিল কিন্তু এখন আপাতত বানাবেনা', 'Contacted', '2021-04-19 11:39:06', '2022-06-01 05:04:57'),
(477, 'Yeamin', 'yeamin.a03@gmail.com', '01711082681', NULL, NULL, NULL, NULL, 'Dropshiping site korbe, C2b.com.bd, chinabazarb2b.com er moto site korbe\r\n05.06.2022-Meeting a asen meeting  ses kore call diben', 'Contacted', '2021-04-20 03:26:40', '2022-06-05 07:26:24'),
(478, 'Nishad Ahmed', 'nishadahmed249827@gmail.com', '01733249827', NULL, NULL, NULL, NULL, 'business website-domain hosting asa', 'lead', '2021-04-21 12:08:38', '2022-06-19 08:37:10'),
(479, 'Rofikul Islam', NULL, '01710564085', NULL, NULL, NULL, NULL, 'business website- Domine Hosting asa kage debba maga kotha bolta hoba\r\n10 page  sabbir', 'lead', '2021-04-22 02:40:48', '2022-06-19 08:37:10'),
(480, 'unknown', NULL, '09642615615', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-04-22 06:12:43', '2022-06-19 08:37:10'),
(481, 'Bilasi.com', 'roni3790@gmail.com', '01717246527', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-04-24 09:05:40', '2021-07-07 14:37:40'),
(482, 'Alamgir', 'alamgirpfile@gmail.com', '09611677418', NULL, NULL, NULL, NULL, 'www.quickusd.com er moto site korbe. proposal sent. if need  he  will call মে\r\nকল ঢুকে না।', 'Disqualified', '2021-04-25 07:14:55', '2022-06-01 04:17:21'),
(483, 'Sohel rana', 'sohelrana77086@gmail.com', '01688159181', NULL, NULL, NULL, NULL, 'Looking for	E-commerce /  BuySell Website', 'lead', '2021-04-26 04:29:47', '2022-06-19 08:37:10'),
(484, 'Abdul Alim', 'sabziplusbd@gmail.com', '01311160119', NULL, NULL, 'Sabzi Plus', '24 Station Road , Tejgaon', 'Looking for	E-commerce/ BuySell Website    Project Budget	30000 TK . Almost done \r\nto make an eCommerce website on a low-cost budget within a short time.', 'Converted to Customer', '2021-04-27 03:24:36', '2021-07-07 11:30:47'),
(485, 'mostafa', 'mostafa.pust@gmail.com', '01730318989', NULL, '01739981122', NULL, NULL, 'business Website Package-1 quotation demo', 'Quote Sent', '2021-04-27 04:29:06', '2021-04-27 08:51:30'),
(486, 'Rony', NULL, '01732218628', NULL, NULL, NULL, NULL, 'Whatsapp e contact korse. ecommerce website package ..', 'lead', '2021-04-27 08:37:36', '2022-06-19 08:37:10'),
(487, 'Md. ShahabUddin Ahmed', 'sustsiblu@gmail.com', '01712435436', NULL, NULL, NULL, NULL, 'For Online book shop of my wife. We are planning to have another Website for Graphic design service as my wife wants to provide graphic solutions to future clients. Please assist us so that we can have a good service within an affordable budget. Thanks With best regards Engr, Md.Shahabuddin Ahmed PAC 1 18000/= till last of this month', 'Converted to Customer', '2021-04-28 03:54:53', '2021-06-01 03:56:00'),
(488, 'Md. Tutul', 'tutulmy@gmail.com', '0191-4225356', NULL, NULL, 'www.cacaoworldltd.com', NULL, 'he will change the panel others to us. and maintenance pore call korte hove', 'Disqualified', '2021-04-28 04:11:25', '2022-06-04 03:49:44'),
(489, 'Toma', 'assessment@movesbd.com', '01929792888', NULL, NULL, NULL, NULL, 'graphics Design Proposal padiase', 'Disqualified', '2021-04-28 06:15:13', '2022-06-15 11:11:04'),
(490, 'yasin rashid', 'yaasin.rashid@gmail.com', '01303867357', NULL, NULL, NULL, NULL, 'budget is too low, CZ we give him 7 lac bt he expects 3 to 3.5 lac Phone diban না\r\n০১-০৬-২২ আগে যে প্রতিষ্ঠান এ চাকরি করতেন, সেই প্রতিষ্ঠানের জন্য website এর ব্যাপারে কথা বলেছিলেন কিন্তু এখন সেখানে নেই।তাই আর কল দেওয়া যাবেনা।', 'Disqualified', '2021-04-28 06:18:16', '2022-06-01 04:14:55'),
(491, 'HM Shahriar', 'shahriar.hm1985@gmail.com', '+82 10-7742-4872', NULL, NULL, NULL, 'south Korea', 'Almost Done, i am sending Quotation', 'Converted to Customer', '2021-04-29 03:37:15', '2021-05-18 02:49:05'),
(492, 'Nur Alam', 'N.alam305020@gmail.com', '01633972548', NULL, NULL, NULL, NULL, 'neef to build an Ecommerce site like that\r\nhttp://finepharmaltd.com/\r\n\r\nKindly send the details. Proposal Send. Partner er shate khota bole janabe. 09/055/2021\r\nbusy', 'lead', '2021-04-29 06:38:16', '2022-06-19 08:37:10'),
(493, 'Unknown', NULL, '01750960984', NULL, NULL, NULL, NULL, 'flat kinba', 'lead', '2021-04-29 07:49:50', '2022-06-19 08:37:10'),
(494, 'Faisal Sir', 'uzumakifahim@gmail.com', '01833038006', NULL, NULL, NULL, NULL, 'Ecommerch Website-Package-4 Proposal and Demo send', 'Proposal Sent', '2021-05-01 05:16:23', '2021-05-01 06:16:15'),
(495, 'mehedi', NULL, '01712251009', NULL, NULL, NULL, NULL, 'Basic apps. 5k বলে\r\n০১-০৬-২২ হাসপাতালে আছে ফ্রী হয়ে কল করবেন', 'Contacted', '2021-05-01 08:42:44', '2022-06-01 04:05:49'),
(496, 'Masuk', 'masrukur.masuk@gmail.com', '01910801029', NULL, '019977898520', NULL, NULL, 'Web development and apps make korbe. toffee er apps korbe. number off', 'Disqualified', '2021-05-01 08:48:26', '2022-06-04 03:49:12'),
(497, 'Canada Bangladesh', NULL, '01963637814', NULL, NULL, NULL, NULL, 'amaka kag deba', 'Qualified', '2021-05-02 03:57:12', '2021-05-21 06:30:26'),
(498, 'showen sir', NULL, '01769696185', NULL, NULL, NULL, NULL, 'graphic design.number bhul', 'lead', '2021-05-02 06:07:38', '2022-06-19 08:37:10'),
(499, 'Kawsar Mridha', 'mridha.mic@gmail.com', '01552633055', NULL, NULL, 'Mridha Group', 'BH Plaza, 50-ka, Shohid Abdul Aziz Sarak, Nodda, Vatara, Dhaka-1 229,Bangladesh,', NULL, 'Converted to Customer', '2021-05-02 06:48:44', '2021-05-02 06:48:44'),
(500, 'Humiun Kabir', NULL, '01709639671', NULL, NULL, NULL, NULL, 'sirk phone korta hoba', 'lead', '2021-05-03 04:14:28', '2022-06-19 08:37:10'),
(501, 'unknown', NULL, '01764403628', NULL, NULL, NULL, NULL, 'business website and Ecommerce website proposal and damo pathobo. 5 tar somoy call korte hobe', 'Disqualified', '2021-05-04 04:12:50', '2022-06-04 05:35:38'),
(502, 'Nur Islam', 'nur.islam03@gmail.com', '01580702833', 'sakib.flossyleather@gmail.com', '01725439775   Sakib sir', NULL, NULL, 'business website pakage -1   Domain Hosting asa', 'lead', '2021-05-04 06:59:27', '2022-06-19 08:37:10'),
(503, 'Imon Sir', 'redwanfarhan07@gmail.com', '01644983178', NULL, NULL, NULL, NULL, 'kfc er moto website. 20 tarek er pore janabe', 'lead', '2021-05-05 02:25:42', '2022-06-19 08:37:10'),
(504, 'Shajib  sir', 'sh261214@gmail.com', '01535223789', NULL, NULL, NULL, NULL, 'Ecommerce website proposal pada ta te hoba', 'Converted to Customer', '2021-05-05 09:29:11', '2022-01-04 05:35:46'),
(505, 'Saiful Alam', NULL, '01759285956', NULL, NULL, NULL, NULL, 'B2B লিড জেনারেশনের ওয়েবসাইট \r\nhttps://d7leadfinder.com.', 'Disqualified', '2021-05-06 03:08:03', '2022-06-04 03:45:31'),
(506, 'Sojol Ahmed MD. Fakharuddin', 'ayonahammed92@gmail.com', '01970036285', NULL, NULL, 'Fish Basket', 'DIT Project, Road 04', 'Ecommerce-fishbucketbd.com/ office a asbe. done', 'Converted to Customer', '2021-05-06 03:24:37', '2021-07-07 11:28:45'),
(507, 'unknown', NULL, '01625062015', NULL, NULL, NULL, NULL, 'Kag kora falsa', 'lead', '2021-05-06 14:30:22', '2022-06-19 08:37:10'),
(508, 'Sajjad Rahman', 'sajjader@gmail.com', '+46704864745', NULL, NULL, NULL, NULL, 'email id  pathaba Ecommerce Website. quotation phatate hobe.', 'Disqualified', '2021-05-06 14:38:29', '2022-06-15 08:46:27'),
(509, 'Shuvo sarkar', 'shuvosarkar401@gmail.com', '01935826270', NULL, NULL, NULL, NULL, 'business website proposal send', 'lead', '2021-05-07 19:01:15', '2022-06-19 08:37:10'),
(510, 'Saddam Hossain', 'hasemicomputer@gmail.com', '01511993330', NULL, NULL, 'www.hasemi.org', NULL, 'আমি আমার কম্পিউটার ট্রেনিং সেন্টারের জন্য একটি সাইট বানাতে চাচ্ছি। যেখানে সকল কোর্স ও মূল্য, অনলাইন এডমিশন, প্রদানকৃত সনদের এর রেজাল্ট চেক, প্রতিষ্ঠানের পরিচিতি, প্রতিষ্ঠানে বিক্রিত সকল পণ্যের লিস্ট ও কিনার সুবিধা সহ অন্যান্য প্রয়োজনীয় ফিচার থাকবে। কত খরচ হবে আর কি কি জানানোর আছে জানাবেন। nije করেছে\r\n০১-০৬-২২ নিজে করেছে।', 'Contacted', '2021-05-08 04:14:31', '2022-06-01 04:00:22'),
(511, 'Monju Mia', NULL, '01711871128', NULL, NULL, NULL, 'bhoirob', 'Electronics Product Ecommerce Website Design and Development. \r\nProposal and demo send', 'lead', '2021-05-08 04:54:13', '2022-06-19 08:37:10'),
(512, 'Arafat Hossen', 'info@tnsgroup.com.bd', '01313096404', NULL, NULL, NULL, NULL, 'business website\r\n01-06-22 -    ১মাস যাবত অসুস্থ, সুস্থ হলে জানাবে।', 'Contacted', '2021-05-09 03:42:47', '2022-06-01 03:39:22'),
(513, 'Hasanuzaman sir', 'ghzshagor@gmail.com', '01400893232', NULL, NULL, 'beliefbd.com', 'House-15,Road-07,sector-01,uttara', 'Ecommerce  Website package -1', 'Converted to Customer', '2021-05-10 03:12:33', '2021-07-07 12:58:05'),
(514, 'S.M. Mahbubur Rahma', 'bslubricantsltd@gmail.com', '01313354303', NULL, NULL, 'BS Group', 'H:15, Road:17, Uttara Model Town', 'Ecommerce website package-2', 'Converted to Customer', '2021-05-10 03:22:53', '2021-07-07 12:59:50'),
(515, 'maisha', 'maisha.ananna@northsouth.edu', '01846962630', NULL, NULL, NULL, NULL, 'Digital advertising proposal pathte hoba', 'lead', '2021-05-10 16:01:05', '2022-06-19 08:37:10'),
(516, 'Molik sir', 'orbitbiochemicals@gmail.com', '01829133058', NULL, NULL, NULL, NULL, 'business Website Proposal send', 'Proposal Sent', '2021-05-13 06:13:22', '2021-05-21 06:28:55'),
(517, 'Ali Emtias', 'aliemtias016@gmail.com', '+460761044526', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-05-13 08:36:37', '2021-05-13 08:36:37'),
(518, 'MOHAMMAD HAQUE', 'mhaque18@gmail.com', '01937504879', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-05-13 12:53:49', '2021-05-13 12:53:49'),
(519, 'unknown', NULL, '01630364497', NULL, NULL, NULL, NULL, 'Phone dora na', 'lead', '2021-05-17 06:44:33', '2022-06-19 08:37:10'),
(520, 'Md. Sayed Jonaed', 'jonaed213359@islamibankbd.com', '01912196099', 'jonaed.sayed@gmail.com', NULL, 'Islami Bank Bangladesh Limited', NULL, 'Php-Sunday jabo-3pm(meeting) \r\n01-06-22-No Answer\r\n05.06.2022-Call Receive Korsena\r\n15.06.2022-Call receive korsena', 'Disqualified', '2021-05-18 08:43:32', '2022-06-15 06:58:11'),
(521, 'Ahmed', 'arcadeoxygen@gmail.com', '01322355707', NULL, NULL, NULL, NULL, 'after eid', 'Disqualified', '2021-05-19 04:09:55', '2022-06-04 03:46:39'),
(522, 'Mohiuddin Bhuiyan', 'mainuddinbh@gmail.com', '01831563999', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-05-19 04:58:25', '2022-03-03 09:26:56'),
(523, 'Md. Shafiqul Islam', 'islam.shafiq@escapebd.com', '01318319638', NULL, '01761492234', 'Escape Bangladesh Ltd.', 'House # 56 , Road # 13, Sector # 12, Uttara, Dhaka –1230, Bangladesh', 'https://www.escapebd.com/ for SEO', 'Converted to Customer', '2021-05-20 05:16:21', '2021-06-21 07:30:29'),
(524, 'Anam', 'Creativefantasy9@gmail.com', '01711943567', NULL, NULL, NULL, NULL, 'Course Enrollment.', 'lead', '2021-05-20 05:17:34', '2022-06-19 08:37:10'),
(525, 'Md Serajul', 'mdserajul1593@gmail.com', '01779086199', NULL, NULL, NULL, NULL, 'diagnostic center er jonno website korabe', 'lead', '2021-05-20 05:20:35', '2022-03-03 09:26:56'),
(526, 'unknown', NULL, '01571388565', NULL, NULL, NULL, NULL, 'Phone dora na', 'lead', '2021-05-21 06:24:23', '2022-06-19 08:37:10'),
(527, 'Tanzim', 'tanzimhsn971@gmail.com', '01925949411', NULL, NULL, NULL, NULL, 'Looking for	E-commerce/ BuySell Website\r\nProject Budget	30000 TK - 50000 TK\r\nIt will be a website for a restaurant Usual restaurant website How much would it cost and how many days it could take to make a website? With hosting and domain included Thank you.', 'lead', '2021-05-22 02:31:54', '2022-06-19 08:37:10'),
(528, 'Mohiuddin', 'mohiuddinmoaz@gmail.com', '01790739623', NULL, NULL, NULL, NULL, 'intorior o city pore korbe', 'Proposal Sent', '2021-05-24 03:31:35', '2022-06-04 04:22:17'),
(529, 'Md Armia Fakir', 'arfakir@gmail.com', '01754905065', NULL, NULL, 'Three Angle Marine Limited', 'Level 14, 114 Motijheel C/A Dhaka 1000', 'Website redesign', 'Disqualified', '2021-05-24 05:00:14', '2022-06-14 08:32:30'),
(530, 'imtiaj', NULL, '01771803754', NULL, NULL, NULL, NULL, 'Online pdf book sell korabe. business plan kore janabe.', 'Disqualified', '2021-05-24 05:02:58', '2022-06-02 09:48:14'),
(531, 'Sumon', NULL, '01756701412', NULL, NULL, NULL, NULL, 'ecommerce website korabe.. \r\ngarment product er sample website link dite hobe...', 'Disqualified', '2021-05-24 08:41:10', '2022-06-15 09:29:46'),
(532, 'Mamun Sir', 'mamun.rana@haier.com.bd', '01958537895', NULL, NULL, NULL, NULL, 'seo proposal send', 'lead', '2021-05-25 06:38:03', '2022-06-19 08:37:10'),
(533, 'unknown', NULL, '01716730126', NULL, NULL, NULL, NULL, 'website ar kage shikta chie', 'lead', '2021-05-26 02:50:59', '2022-06-19 08:37:10'),
(534, 'unknown', NULL, '01551244065', NULL, NULL, NULL, NULL, 'phone dora na', 'lead', '2021-05-26 02:52:12', '2022-06-19 08:37:10'),
(535, 'jisan sir', 'azaharuly@gmail.com', '01303182115', NULL, NULL, NULL, NULL, 'Business Website proposal sent joa ar site tie korbo na', 'lead', '2021-05-26 14:16:22', '2022-06-19 08:37:10'),
(536, 'Alliance Leather Goods and Footwear Ltd.', 'hasib@affootwear.com', '01764255508', NULL, NULL, 'Alliance Leather Goods and Footwear Ltd.', NULL, 'Please send me website development package quotation for a company (Website+Gallery Photo (Product Photography)', 'Converted to Customer', '2021-05-27 04:17:55', '2021-06-15 08:57:01'),
(537, 'Malinda Amarasuriya', 'Malinda@westknit.com', '+880 1910-930930', NULL, NULL, 'West Knitwear limited', 'House no 104 Park road, Baridhara', 'the service we need from you is\r\n1/ content creating\r\n2/ photography \r\n3/ Design development & branding guideline\r\ngive me separate quotation for\r\nA) Company Brochure\r\n B) Website', 'Converted to Customer', '2021-05-29 02:37:59', '2021-06-03 07:16:03'),
(538, 'shafkwat', 'shafkwat22@gmail.com', '01621710383', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-05-29 07:20:10', '2022-03-03 09:26:56'),
(539, 'Foysal Ahmed', 'amfoysal@gmail.com', '01755673848', NULL, NULL, 'BiddinGO Limited', NULL, 'Business Website Proposal Padate hoba', 'lead', '2021-05-30 03:53:14', '2022-06-19 08:37:10'),
(540, 'Iftekhar Bashar', NULL, '01788997725', NULL, NULL, NULL, NULL, 'qoutation pathaise', 'lead', '2021-05-30 03:56:52', '2022-06-19 08:37:10'),
(541, 'Majhar', 'yogistan.bd@gmail.com', '01714071030', NULL, NULL, NULL, NULL, 'website design, office : rampura, Office asbe.', 'lead', '2021-05-30 04:10:20', '2022-06-19 08:37:10'),
(542, 'prantosh', 'prantosh@dsmcom.net', '01711303430', NULL, NULL, NULL, NULL, 'Dmcom\r\ndsmcom.net\r\nprantosh@dsmcom.net\r\nRegistration Service Provided By: A.K. KHAN TELECOM LIMITED\r\naddress: Jobber tower, 9th floor, gulsan 1 done by ohers\r\n01-06-22 -under develop website', 'Contacted', '2021-05-30 12:47:26', '2022-06-01 03:27:48'),
(543, 'Nazrul Islam', 'nazrulislam.mp10@gmail.com', '01701028404', NULL, NULL, NULL, NULL, 'Business website  kalka asba', 'lead', '2021-06-01 06:15:00', '2022-06-19 08:37:10'),
(544, 'jaman sir', 'mazedafabrics.ltd@gmail.com', '01956644165', NULL, NULL, NULL, NULL, 'Business Website Proposal send', 'lead', '2021-06-01 09:09:41', '2022-06-19 08:37:10'),
(545, 'Md. Sanzidur Rahman', 'sanzidur.swwtnt@gmail.com', '01876181910', 'shipa.wwtnt@gmail.com', NULL, 'Shipsa World Wide Tours Travels', 'Hashem Mansion (3rd Floor),48,Kazi  Nazrul Islam Avenue,Kawran Bazar,Tejgaon, Dhaka-1215', 'digital markting(Poran Klind)', 'Converted to Customer', '2021-06-02 06:17:00', '2021-07-07 14:34:25'),
(546, 'S.M Jahangir Alam', 'jmtex.bd@gmail.com', '01671449648', 'jalam@jmtbd.com', '01552311995', 'JMT Express', '33,Kazi Nazrul Islam Avenue,Kawran Bazar,Tejgaon, Dhaka-1215', 'customize coraba(new client)reference Shipsa', 'Contacted', '2021-06-02 06:30:32', '2022-06-05 08:49:07'),
(547, 'unknown', 'salesarzucorp@gmail.com', '01719218795', NULL, NULL, NULL, NULL, 'Ecommerce website Proposal done....unar office theke ekhono kichu janai ni', 'Disqualified', '2021-06-03 02:57:20', '2022-06-04 05:35:02'),
(548, 'Rahian Sir', 'rayhanhowlader068@gmail.com', '01820912164', NULL, NULL, NULL, NULL, 'Ecommerce Website pries quotation pathata hoba (poran cliend)Reference porra aps koraba', 'lead', '2021-06-05 04:35:14', '2022-06-19 08:37:10'),
(549, 'Md. Jakieul Hassan', 'nstarmotivation@gmail.com', '01914-123600', NULL, NULL, NULL, NULL, 'laravel website no resp\r\n01-06-22- No Answer\r\n05.06.2022-Number Off', 'Disqualified', '2021-06-06 08:13:18', '2022-06-16 04:15:46'),
(550, 'Md. Asrafuzzaman', 'ndpsep@gmail.com', '01793-323207', NULL, NULL, 'National Development Programme-NDP', NULL, NULL, 'lead', '2021-06-06 11:29:15', '2022-06-19 08:37:10'),
(552, 'Talent Care Education', 'tcedhaka@talentcareedu.com', '01682425124', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-06-09 05:42:52', '2021-06-09 10:29:56'),
(553, 'Vortech Limited', 'mrhbilturaj@gmail.com', '01672080207', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-06-09 06:04:53', '2022-06-14 08:33:52'),
(554, 'Md Mohiuddin Shajal', 'godot5bd@gmail.com', '01616461721', NULL, NULL, 'DOT5', 'Valentine Castle (5th Floor), House No#83, Road No#23, Gulshan-1, Dhaka-1212', NULL, 'lead', '2021-06-09 06:21:54', '2022-03-03 09:24:24'),
(555, 'FACE OF ASIA BANGLADESH', 'hanifshekh783@gmail.com', '01534303696', NULL, NULL, 'AMF Multimedia International Ltd', 'Road 35A, House 37, Level 5, Gulshan 2, Dhaka 1212', NULL, 'lead', '2021-06-09 09:02:11', '2021-06-09 17:43:59'),
(556, 'Saiful isalm', 'saiful-islam@bg.com.bd', '01608222031', NULL, NULL, NULL, NULL, 'Ecommerce', 'Disqualified', '2021-06-09 10:18:37', '2022-06-05 08:54:39'),
(557, 'Rajeev', 'rajeev@geopolits.com', '01317805891', NULL, NULL, 'geopolits.com', NULL, 'paid blog website', 'lead', '2021-06-09 10:22:24', '2022-06-19 08:37:10'),
(558, 'Somiah Islam', NULL, '01755629753', NULL, NULL, NULL, NULL, 'logo', 'Converted to Customer', '2021-06-09 10:34:51', '2021-06-26 07:20:13'),
(559, 'Riyad Hasan', 'riyad.hasan@biffl.org.bd', '+880-1844221661', NULL, '01841655321', 'Bangladesh Infrastructure Finance Fund Limited', 'Unique Heights (Level-3), 117, Kazi Nazrul Islam Avenue, Eskaton Garden, Dhaka-1217', NULL, 'lead', '2021-06-09 10:50:56', '2022-03-03 09:24:24'),
(560, 'Russell Ibn Basher', 'playrq@gmail.com', '01721-404101', NULL, NULL, 'ilooly - Online  shoping', NULL, NULL, 'Qualified', '2021-06-17 03:29:10', '2021-06-17 05:54:18'),
(561, 'jasim sir', NULL, '01671835645', NULL, NULL, NULL, NULL, 'Business Website  and aps kotha bolbo saturday', 'lead', '2021-06-18 11:19:09', '2022-06-19 08:37:10'),
(562, 'K.M Subbirul Inam', 'subbirlgedae@yahoo.com', '01818031706', NULL, '01746167716', NULL, NULL, 'Redigine Ecommerce website kalka proposal debo and demo', 'Converted to Customer', '2021-06-18 11:27:13', '2021-07-07 11:10:01'),
(563, 'Russell Ibn Basher sir', 'playrq@gmail.com', '01721-404-101', NULL, NULL, 'ilooly online shopping', 'House-77(First floor)Road-3 Block-g,Banasree,Rampura Dhaka,Bangladesh', 'custimage larabel and ready larabel informative koraba', 'lead', '2021-06-18 11:47:30', '2022-06-19 08:37:10'),
(564, 'Farial Mahtab', 'farialmahtab1@gmail.com', '+880 1674-568179', NULL, NULL, 'Silk Design Ltd .', '152/3-B, Firoz Tower, Green Road, Panthapath, Dhaka 1205', 'http://silkroutedesignltd.com/\r\nsite redesign with SEO and media customization and photography', 'lead', '2021-06-20 11:20:59', '2022-03-03 09:24:24'),
(565, 'Harnur Rushed', 'tulirparash86@gmail.com', '01682190624', NULL, NULL, NULL, NULL, 'Ecommerce Website  proposal pathata hoba', 'lead', '2021-06-21 03:27:41', '2022-06-19 08:37:10'),
(566, 'Tanvir Ahmed', 'tanvirahmedekh@gmail.com', '01727124886', NULL, NULL, NULL, NULL, 'kalka asba', 'lead', '2021-06-21 04:52:31', '2022-06-19 08:37:10'),
(567, 'M K ornob', 'arnob6654@gmail.com', '01625790949', NULL, NULL, 'Brand Hall', NULL, NULL, 'Converted to Customer', '2021-06-21 08:21:57', '2021-07-07 11:07:37'),
(568, 'Kazi Rafiqul Islam', 'coronagroup@live.com', '01834078295', NULL, NULL, 'Corona Group', 'House # 94/2, Road # 10, Block # D Niketon (2nd Floor) ,Gulshan-1', 'Business Website Package-1 him it kotha bolta asba', 'Converted to Customer', '2021-06-21 09:51:26', '2021-07-07 10:55:35'),
(569, 'Saiful Islam', 'saiful.islam@cdzlogistics.com', '01730345181', NULL, NULL, 'CDZ Global Logistics Ltd.', 'Loma Centre, 204-B (5th Floor), Tejgaon Gulshan Link Road, Tejgaon, Dhaka- 1208, Bangladesh.', 'Looking for	Corporate/ Company Website\r\nProject Budget	15000 TK - 20000 TK\r\nWe are a freight forwarding & logistics company having global partners globally. our product is Freight, Customs Brokerage, Transport, Warehousing, and distribution. If you have expertise in this industry to develop a Company website with SEO, please feel free to send your offer along with a dummy web design. Thanks, Saiful', 'Disqualified', '2021-06-21 10:00:47', '2022-06-14 09:20:19'),
(570, 'Tohidul islam', 'jahangiralom70142@gmail.com', '01926631597', NULL, '01841982281', NULL, NULL, 'Ecommerce Website proposal send package - 1', 'Proposal Sent', '2021-06-22 02:52:06', '2021-07-30 06:48:56'),
(571, 'MD. Zillur  Rahman ( Zibon )', 'zibonkhan01725@gmail.com', '01725568718', NULL, NULL, 'Qian Xin Group', 'Uttara Sector 13, Road 3 , house 57&59 .', NULL, 'lead', '2021-06-22 07:43:41', '2022-03-03 09:24:24'),
(572, 'Shahin Hossain', 'shahin.safetypower@gmail.com', '01711432812', NULL, NULL, NULL, NULL, 'Business information site. laravel diye korbe proposal send', 'Proposal Sent', '2021-06-22 10:16:55', '2022-03-28 04:09:46'),
(573, 'MD. shahin', 'shahin.safetypower@gmail.com', '+8801711432812', NULL, NULL, 'Safety Power', NULL, 'Business Website Design after eid', 'Disqualified', '2021-06-22 11:35:26', '2022-06-16 08:29:07'),
(574, 'Rezowanullah Chowdhury', NULL, '+880 1925-752161', NULL, NULL, NULL, NULL, 'Ecommerce Website Design. demo send', 'lead', '2021-06-22 11:36:54', '2022-06-19 08:37:10'),
(575, 'Mollick Abul Hossain', 'mollikabulhossen@gmail.com', '01643349308', NULL, NULL, NULL, NULL, 'ecommerce....Kalk office asbe', 'lead', '2021-06-23 05:30:53', '2022-06-19 08:37:10'),
(576, 'Raihan', 'raihan.dhaka2010@gmail.com', '09696443114', NULL, NULL, NULL, NULL, 'Ecommerce with requrement (Number off)', 'Disqualified', '2021-06-23 05:31:52', '2022-05-31 10:27:13'),
(577, 'Imam Hossain', 'thanqroomsworld@gmail.com', '01951863103', NULL, NULL, NULL, NULL, 'SEO korbe', 'lead', '2021-06-23 11:44:58', '2022-06-19 08:37:10'),
(578, 'Salman Shamim', 'salman.shamim1988@gmail.com', '01810066624', NULL, NULL, NULL, NULL, 'Ecommerce website korbe number busy\r\n05.06.2022-Call receive korsena\r\n15.06.2022-Call receive korsena', 'Disqualified', '2021-06-23 11:48:42', '2022-06-15 04:54:14'),
(579, 'Eng. anis ahmed', 'anispolychem@gmail.com', '01313493979', NULL, NULL, NULL, NULL, 'Job switch koreche', 'Disqualified', '2021-06-23 11:53:44', '2022-06-02 09:40:50'),
(580, 'Md. Faruk Khalil', 'youthsteel@gmail.com', '01678400222', 'masud512@gmail.com', NULL, NULL, NULL, NULL, 'lead', '2021-06-24 07:40:30', '2022-03-03 09:33:16'),
(581, 'Faisal Ahmed Shakil', '38batch@gmail.com', '01911120744', NULL, NULL, NULL, '23/15 Pallabi, Mirpur, Dhaka - 1216.', 'Ecommerce', 'lead', '2021-06-24 07:48:13', '2022-03-03 09:26:56'),
(582, 'anamul', 'anamul@skyviewonlineltd.com', '+8801538389200', NULL, '+8809614310310', 'skyview online ltd', 'amina tower, dhaka,38 JatraBari, Dhaka 1204', NULL, 'lead', '2021-06-24 09:55:54', '2022-03-03 09:33:27'),
(583, 'Sojib', 'fboysojeeb@gmail.com', '01876072591', NULL, NULL, NULL, NULL, 'mlm software...done by others', 'lead', '2021-06-26 04:23:07', '2022-06-19 08:37:10'),
(584, 'Muhammed Hossain', 'u.hossainbmsc2014@gmail.com', '+880 1732-337376', NULL, NULL, NULL, NULL, 'Jute product', 'lead', '2021-06-26 07:07:24', '2022-03-03 09:26:56'),
(585, 'Raz Ahmed', '71miraz@gmail.com', '+880 1914-693404', NULL, NULL, NULL, NULL, 'Ecommerce', 'lead', '2021-06-26 07:08:40', '2022-03-03 09:26:56'),
(586, 'Sobuj', 's4sobuj@gmail.com', '01810002333', NULL, NULL, NULL, NULL, 'Hosting', 'lead', '2021-06-26 07:19:09', '2022-03-03 09:26:56'),
(587, 'Tamzid islam', 'Support@unitibd.com', '01580399361', 'tamz870@gmail.com', NULL, NULL, NULL, 'Auction website3. demo dite hobe', 'Converted to Customer', '2021-06-27 12:06:50', '2021-07-25 02:33:45'),
(588, 'MD. Intajur Rahman', 'novoenergy3384@gmail.com', '01711338454', NULL, '02-48318293', 'NovoEnergy engineering limited', '58/1,Shanthi Nibash,Shanti Nagar,VashaniGoli,Dhaka-1217', 'Ecommerce website Package-1  quotationdita hoba done by others\r\n05.06.2022-je company er kas theke niyese tarai sob doroner service disse', 'Contacted', '2021-06-28 04:41:02', '2022-06-05 07:07:27'),
(589, 'Anika', 'hossainanika979@gmail.com', '01973010207', NULL, NULL, NULL, NULL, 'Ecommerce Website pakage-1 proposal patata hoba', 'lead', '2021-06-28 04:46:14', '2022-06-19 08:37:10'),
(590, 'Balal', 'it@akijmotors.com', '01730781718', NULL, NULL, 'Akij Motors', NULL, 'Business Website', 'Disqualified', '2021-06-29 03:58:51', '2022-06-16 06:27:15'),
(591, 'Jaman munir', 'jamanmunir@yahoo.com', '018413-40787', NULL, NULL, NULL, NULL, 'Business Website demo and proposal debo', 'lead', '2021-06-29 08:34:36', '2022-06-19 08:37:10'),
(592, 'Niaz Mahmud', 'niazmahmud222@gmail.com', '01797871672', NULL, '+880 1988-806808', NULL, 'Flat-9E,  Radiant Shapla,   3/2 Bhuiyan Bari Masjid Road, Ananda Nagar,  Badda', NULL, 'Converted to Customer', '2021-06-30 14:58:55', '2021-07-12 10:08:26'),
(593, 'Shadat  hossain', 'mssojol0@gmail.com', '01321155371', NULL, NULL, NULL, NULL, 'Ecommerce website proposal send', 'lead', '2021-07-03 02:32:29', '2022-06-19 08:37:10'),
(594, 'Mustafa', 'zim.mustafa14@gmail.com', '01775505979', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal and demo  send korbo', 'Quote Sent', '2021-07-03 07:55:37', '2021-07-17 07:07:57'),
(595, 'SHEIKH FAZAL MUHAMMAD', 'fazal0123@hotmail.com', '01616468656', NULL, NULL, 'EXPORT TRADER ASSOCIATE', '129/4/1 DISTILARY ROAD, GANDARIA, 1ST FLOOR, DHAKA-1204, BANGLADES', 'Business website proposal sent', 'lead', '2021-07-05 06:33:45', '2022-06-19 08:37:10'),
(596, 'Rafikul Islam', 'liton.ministerbd@gmail.com', '01966607007', NULL, NULL, NULL, NULL, 'Ecommerce Website package-1\r\n22.06.2022-Mobile off', 'Disqualified', '2021-07-07 04:32:17', '2022-06-22 11:41:40'),
(597, 'Gias uddin', 'btcgias@gmail.com', '01700616589', NULL, NULL, NULL, NULL, 'Real state company business website seo aps\r\n05.06.2022-Call receive korsena\r\n15.06.2022-Call receive korsena', 'Disqualified', '2021-07-07 04:58:15', '2022-06-15 04:52:23'),
(598, 'Gias Uddin Ahmed', 'guahmed117@gmail.com', '01713100985', NULL, NULL, NULL, NULL, 'logo and website', 'Converted to Customer', '2021-07-07 09:10:46', '2021-07-12 12:55:20'),
(599, 'Hafizuddin Ahmed (Shamim)', 'aassociates28@gmail.com', '01713018358', NULL, NULL, 'Paramount Super shop', 'Jamuna Future Park, Level-1, Progoti Shoroni 1229 Dhaka, Dhaka Division, Bangladesh', NULL, 'Converted to Customer', '2021-07-07 09:15:38', '2021-10-11 09:47:42'),
(600, 'Salman Soharwardi', 'salman@rupashigroup.com', '01942000123', NULL, NULL, 'Rupashi Group of Industries Ltd', 'Rupashi Rd, Fatullah Narayanganj', NULL, 'Converted to Customer', '2021-07-07 10:38:31', '2021-08-08 04:54:42'),
(601, 'Forgotten', NULL, '01686307909', NULL, NULL, NULL, NULL, 'no response', 'Disqualified', '2021-07-07 10:42:58', '2022-06-06 07:45:38'),
(602, 'A Hossain', 'a.hossaincobd@gmail.com', '01755605917', NULL, NULL, 'A. Hossain & Co', 'Paramount Heights (Level-5), 65/2/1 Box Culvert Road, Purana Paltan', 'ahossainco.com', 'Converted to Customer', '2021-07-07 10:52:22', '2021-07-07 10:52:22'),
(603, 'Anwarul Islam', 'mdanwarislam@gmail.com', '01711328336', NULL, NULL, 'Family Plastic Ltd.', 'House # 431/3, Flat-B4, Senpara parbata, Mirpur, Dhaka', 'familyplasticltd.com', 'Converted to Customer', '2021-07-07 10:59:22', '2021-07-07 10:59:22'),
(604, 'Md. Mehedi Masum', 'czibangla@gmail.com', '01713177110', NULL, NULL, 'High Tech Bricks', 'House-30, Road-20, Nikunja-2, Dhaka-1229', 'hightechbricks.com', 'Converted to Customer', '2021-07-07 11:01:49', '2021-07-07 11:01:49'),
(605, 'Md. Saiful Islam', 'dhakaaeratorint6@gmail.com', '01915431229', NULL, NULL, 'Dhaka Aerator International', 'House:10,Road: 03, Sector: o6, Uttara, Dhaka: 1230', 'dhakaaeratorint.com', 'Converted to Customer', '2021-07-07 11:13:20', '2021-07-07 11:13:20'),
(606, 'MD Moniujjaman', 'blackbeedot@gmail.com', '01711928657', NULL, NULL, 'Black bee', 'Narayanganj , siddirgonj', 'blackbee.com.bd', 'Converted to Customer', '2021-07-07 11:19:07', '2021-07-07 11:19:07'),
(607, 'Gopal Modak', 'xoombazar365@gmail.com', '01713114762', NULL, NULL, 'Xoombazar', '51, Mudi Patti Road', 'xoombazar.com', 'Converted to Customer', '2021-07-07 11:21:27', '2021-07-07 11:21:27'),
(608, 'H M Shahriar Shahriar', 'malihadelwar@gmail.com', '01985867138', NULL, NULL, 'reneewme', 'Block #C, House #19, Road#4, Banasree', 'reneewme.com', 'Converted to Customer', '2021-07-07 11:27:11', '2021-07-07 11:27:11'),
(609, 'Md.Mirza Golam', 'suraiyaaktermitu@gmail.com', '01844483222', NULL, NULL, 'creative education service', 'PLOT-1136/A, JXC BUSINESS TOWER', 'creativeducationservice.com', 'Converted to Customer', '2021-07-07 11:34:06', '2021-07-07 11:34:06'),
(610, 'Muzibul Islam', 'aup@sambd.com', '01712204473', NULL, NULL, 'AUP (Association for Under Previleged People)', 'Middle Badda ,Holding -Kha (4th Floor )', 'aupbd.org', 'Converted to Customer', '2021-07-07 11:35:33', '2021-07-07 11:35:33'),
(611, 'Ishita Ferdous', 'ishita136@gmail.com', '01847173347', NULL, NULL, 'Ishita\'s Choice', '360 Free School Street, Hatirpool, Dhaka-1205', '22.06.2022-unar husband amader ekhan theke website niyesen ,arekta ecommerce website lagbe but ekhonna', 'Contacted', '2021-07-07 11:40:43', '2022-06-22 11:40:25'),
(612, 'A.K.M Edl Amin', 'evangelarchitectbd@gmail.com', '01713261711', NULL, NULL, 'interiorbazarbd.com', '44/14 west panthapoth 4th Floor, kolabagan,', NULL, 'Converted to Customer', '2021-07-07 11:42:20', '2021-07-07 11:42:20'),
(613, 'MD Mosleuddin', 'Fastsellbuy.com@gmail.com', '01715521452', NULL, NULL, 'MUM Consortium ltd', 'horihorpara,enayet nagor , fotulla.', NULL, 'Converted to Customer', '2021-07-07 11:43:51', '2021-07-07 11:43:51'),
(614, 'MD.Ruhul Amin', 'ruhulamin90909@gmail.com', '01865319555', NULL, NULL, 'Sunnah Bazar', 'Vill: shakdi panch Gon', '22.06.2022-Mobile Off', 'Disqualified', '2021-07-07 11:47:30', '2022-06-22 11:36:35'),
(616, 'Tanveer H Chowdhury', 'chowdhurytanveerhossain@gmail.com', '+1.6462023622', NULL, NULL, 'Perfume Club Inc', '210 Andover Street, Store # 215', NULL, 'Converted to Customer', '2021-07-07 11:58:53', '2021-07-07 11:58:53'),
(617, 'Isabella Binte', 'rosepastry13@gmail.com', '01320680449', NULL, NULL, 'Rose Pastry Studio', 'Flat 5A, Ka 34 Chowdhury Bari, South Badda', 'rosepastrystudio.com', 'Converted to Customer', '2021-07-07 12:00:15', '2021-07-07 12:00:15'),
(618, 'Md. Asaduzzaman', 'mdasaduzzamanit@gmail.com', '01717198799', NULL, NULL, 'techguybd.com', 'House# 49, Road#12, Merul Badda', 'techguybd.com', 'Converted to Customer', '2021-07-07 12:01:47', '2021-07-07 12:01:47'),
(619, 'MD. Rafiqul Islam', 'shiblu.lrb@gmail.com', '01678704964', NULL, NULL, 'SAS Label & Accessories', '57/4, Pallabi 2nd Phase, Ring Road Eastern Housing, Mirpur', 'saslabelnaccessories.com', 'Converted to Customer', '2021-07-07 12:03:45', '2021-07-07 12:03:45'),
(620, 'Ejaz Rasul', 'ejazrasul2007@yahoo.com', '01819777723', NULL, NULL, 'Padma Oxygen Limited', 'House 11, Road 9, Block C, Section 6, Mirpur', 'padmaoxygenltd.com', 'Converted to Customer', '2021-07-07 12:05:14', '2021-07-07 12:05:14'),
(621, 'Md. Houmayoun Kabir', 'rpn.bd.org@gmail.com', '01712062897', NULL, NULL, 'reaching people in need (rpnbd.org) and Atlastoiletriesltd.com', 'house # 3, flat A-4 Nikunjo -2', 'rpnbd.org', 'Converted to Customer', '2021-07-07 12:07:54', '2021-07-07 12:10:41'),
(622, 'Md Ekramul Kabir', 'mdekramulkabir.bd@gmail.com', '+60.104251825', NULL, NULL, 'Md Ekramul Kabir', 'No 38, Jalan Klang Sentral 3/KU5', NULL, 'lead', '2021-07-07 12:30:53', '2021-07-07 12:30:53'),
(623, 'Alamgir Hossain', 'anniprs@yahoo.com', '01771653918', NULL, NULL, 'Anni Printing Press', '34, Amarbagh, Motijheel', 'anniprintingpress.com', 'Converted to Customer', '2021-07-07 12:32:17', '2021-07-07 12:32:17'),
(624, 'Raju Khan', 'raju.khan01923@gmail.com', '+60.1124298252', NULL, NULL, 'peskel.com', 'Chinashukhania, Bhawal Rajabari, Sreepur', NULL, 'Converted to Customer', '2021-07-07 13:04:47', '2021-07-07 13:04:47'),
(625, 'Qazi Rubayet', 'rubayet97@gmail.com', '01970716180', NULL, NULL, 'Proshika Organic', 'House 50, Road 3, Sec 12, Block: B, Mirpur', NULL, 'Converted to Customer', '2021-07-07 13:06:48', '2021-07-07 13:06:48'),
(626, 'A Rahim Hawlader', 'mrktngteams@gmail.com', '01785054820', NULL, NULL, 'CutOutPix', '421/2, Pabna Coloney Road, Gulbug', NULL, 'Converted to Customer', '2021-07-07 13:09:44', '2021-07-07 13:09:44'),
(627, 'Md Nazmul Islam', 'nstarmotivation@gmail.com', '01672777779', NULL, NULL, 'NSTAR GROUP', 'H#66,R#08,Block#C ,Apt-A3,Niketon ,Gulshan-1,', 'nstarrgroup.com and fabriclagbe.com and fabricslagbe.com', 'Converted to Customer', '2021-07-07 13:13:26', '2021-07-07 13:13:26'),
(628, 'Mahboob Mosaddeq', 'necsourcebd@gmail.com', '01755599467', NULL, NULL, 'Nec', '158,Nawabpur Road, Depa Market, Dhaka-1100', 'necsourcebd.com', 'Converted to Customer', '2021-07-07 13:21:26', '2021-07-07 13:21:26'),
(629, 'Sk. Hashibur Rahman', 'sk.hashibur.rahman@outlook.com', '01756433433', NULL, NULL, 'lawcookies.com', 'C/O Adv. Sk. Zillur Rahman; House - 03, Road - 09, Ward - 01, Katia (Narikel Tola More), Satkhira Sadar', NULL, 'Converted to Customer', '2021-07-07 13:23:19', '2021-07-07 13:23:19'),
(630, 'Ashraful Hoque', 'idealprotection65@gmail.com', '01773408098', NULL, NULL, 'ideal protection & logistics services limited', 'Dhanmondi', 'idealprotectionbd.com', 'Converted to Customer', '2021-07-07 13:24:58', '2021-07-07 13:24:58');
INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(631, 'Md. Dalower Hossain', 'glasscoscientific@gmail.com', '01917613068', NULL, NULL, 'GLASSCO SCIENTIFIC & ANALYTICAL COMPANY', NULL, NULL, 'Converted to Customer', '2021-07-07 13:29:17', '2021-07-07 13:29:17'),
(632, 'Atiqur Rahman', 'heritageassetsltd@gmail.com', '01889975802', NULL, NULL, 'Heritage Assets LTD', '29, RAJUK AVENUE, SARKER MANSION (1ST FLOOR), MOTIJHEEL COMMERCIAL AREA', NULL, 'Converted to Customer', '2021-07-07 13:45:59', '2021-07-07 13:45:59'),
(633, 'Abu Kawsar', '1881abukawsar1882@gmail.com', '01618122951', NULL, NULL, 'Global Product BD', 'House 32, Road 11, Block G, Banani', 'globalproductbd.com', 'Converted to Customer', '2021-07-07 13:47:29', '2021-07-07 13:47:29'),
(634, 'Golam M Sayeem', 'golam.sayeem@gmail.com', '01711298899', NULL, NULL, 'Kartix Limited', 'Holding No: 72, Mohakhali Wireless Gate', 'Website Design Package 3 - kartixworld.com', 'Converted to Customer', '2021-07-07 13:50:17', '2021-07-07 13:50:17'),
(635, 'Hanif Ahmed', 'hanifshekh783@gmail.com', '01877715222', NULL, NULL, 'Japan Global Solution BD Ltd.', 'Road: 4, Block: F, House: 29, Banasree, Rampura', 'japanglobalsolutionbdltd.com', 'Converted to Customer', '2021-07-07 13:52:10', '2021-07-07 13:52:10'),
(636, 'Md. Mosharaf Hossain', 'blcbdltd@gmail.com', '01874041340', NULL, NULL, 'BLC ENGINEER', 'Flat: B4, 42-F, Indira Road, Tejgaon,', 'blcengr.com', 'Converted to Customer', '2021-07-07 14:25:59', '2021-07-07 14:25:59'),
(637, 'Md Raf', 'sheikhmohammedrafiqulislam@gmail.com', '+1.5876545055', NULL, NULL, 'Alright Tex Inc', NULL, 'alrighttexinc.ca and 	canadalabourpoolinginc.ca', 'Converted to Customer', '2021-07-07 14:27:55', '2021-07-07 14:27:55'),
(638, 'MD. Helal Mollik', 'mollikagrofood07@gmail.co', '01716118082', NULL, NULL, 'Mollik Food & Beverage Limited', NULL, NULL, 'Converted to Customer', '2021-07-07 14:30:05', '2021-07-07 14:30:05'),
(639, 'Papal Gosh', 'papalghose882@gmail.com', '01711198788', NULL, NULL, 'R.B. Jewellers', NULL, 'rbjewellersbd.com', 'Converted to Customer', '2021-07-07 14:39:09', '2021-07-07 14:39:09'),
(640, 'Md. Asaduzzaman', 'asad.it@hameemdenim.com', '01977198799', NULL, NULL, 'Ha-Meem Group', NULL, NULL, 'Converted to Customer', '2021-07-07 14:40:27', '2021-07-07 14:40:27'),
(641, 'unknown', NULL, '01722101040', NULL, NULL, NULL, NULL, 'Ecommerce website proposal padata hoba', 'Disqualified', '2021-07-08 08:03:10', '2022-06-04 05:34:51'),
(642, 'Md. Abdul Aziz', 'aziz65366@gmail.com', '01737765366', NULL, NULL, 'Baba.com.bd', '322, Gulbag, Malibag', NULL, 'Converted to Customer', '2021-07-08 11:52:06', '2021-07-08 11:52:06'),
(643, 'A B M Samsur Rahman', 'samsur.rahman@live.co.uk', '+44.7508700951', NULL, NULL, 'Mr Fabric Ltd', '39 Tiverton Road, Edmonton,', 'mrfabric.co.uk', 'Converted to Customer', '2021-07-08 11:59:10', '2021-07-08 11:59:10'),
(644, 'Fayz ur Rahaman', 'fayzu.rahaman@gmail.com', '01626822150', NULL, NULL, 'Rage trading co.', 'House :2 ,Road -5 ,Block a,Chad uddan , Mohammadpur', 'emonihari.com', 'Converted to Customer', '2021-07-08 12:22:40', '2021-07-08 12:22:40'),
(645, 'Abdus Sattar Badal', 'global.dhaka.bd@gmail.com', '01752820042', NULL, NULL, 'Global Trading Company', NULL, 'spice-n-organics.com', 'Converted to Customer', '2021-07-08 12:24:12', '2021-07-08 12:24:12'),
(646, 'Engr. Walid Hossain', 'utilitycorporationwalid@gmail.com', '01914530192', NULL, NULL, 'Utility Corporation', NULL, 'steamboilerbd.com', 'Converted to Customer', '2021-07-08 12:25:44', '2021-07-08 12:25:44'),
(647, 'Md. Akter Hossain', 'AkterHossain2310@gmail.com', '01763721985', NULL, NULL, 'Re Fresh Limited', '55 Islamabad, Lalbagh, Chawkbazar Dhaka', 'refreshlimited.com', 'Converted to Customer', '2021-07-08 12:41:31', '2021-07-08 12:41:31'),
(648, 'Mr. Abdullah', 'abdullah.du.bd317@gmail.com', '01626320330', NULL, NULL, 'Vape Dubai Online', NULL, 'vapedubaionline.com', 'Converted to Customer', '2021-07-08 12:43:07', '2021-07-08 12:43:07'),
(649, 'Md Based Miah', 'bighandequip@gmail.com', '01716582844', NULL, NULL, 'Giant Step Bangladesh', '446, Shaheen Bagh, Tejgaon', 'giantstepbd.com and 	emestc.com', 'Converted to Customer', '2021-07-08 12:47:33', '2021-07-08 12:47:33'),
(650, 'Wahida Jasmin', 'valanciassecretmirpur@gmail.com', '01746790529', NULL, NULL, 'Valancias Secret', 'Main road 01, section - 6, Opposite of Swimming pool, Mirpur,', 'valanciassecret.com', 'Converted to Customer', '2021-07-08 12:49:08', '2021-07-08 12:49:08'),
(651, 'Ayaan Faysal Patoary', 'alsin.08.20@gmail.com', '01306873663', NULL, NULL, 'Al Easin', 'Dhanmondi 32, Road: 03, House: 64', 'aleasin.com', 'Converted to Customer', '2021-07-08 12:50:28', '2021-07-08 12:50:28'),
(652, 'Ratul Mahamud', 'www.ratulmahamudshopnil.com@gmail.com', '01873869324', NULL, NULL, 'Royal Popular Trust Market', 'Rajendrapur Cantonment Gazipura, Bangladesh 1742', 'royalpopulartrustmarket.com', 'Converted to Customer', '2021-07-08 12:58:00', '2021-07-08 12:58:00'),
(653, 'Ashaduzzaman Rasel', 'asadrasel720@gmail.com', '01319569287', NULL, NULL, 'Photo Experts BD', NULL, 'photoexpertsbd.com', 'Converted to Customer', '2021-07-08 13:17:01', '2021-07-08 13:17:01'),
(654, 'Md Belal Ahmed', 'artfurnishers1@gmail.com', '01833557788', NULL, NULL, 'Art Furnishers', NULL, 'artfurnishersbd.com', 'Converted to Customer', '2021-07-08 13:18:19', '2021-07-08 13:18:19'),
(655, 'Md Jamat', 'md.jamat12@gmail.com', '01738603012', NULL, NULL, 'Paradise Scientific Company Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 13:26:31', '2021-07-08 13:26:31'),
(656, 'Zulquar Nain', 'bintazbd@gmail.com', '01711110732', NULL, NULL, 'Bintaz', NULL, 'sureseba.com and 	readyassetbd.com', 'Converted to Customer', '2021-07-08 13:28:07', '2021-07-08 13:28:07'),
(657, 'Md. Mainuddin Sheikh', 'mdminuddinshikh344@gmail.com', '01762577910', NULL, NULL, 'Tanim Enterprise', NULL, 'tanimenterprise.com', 'Converted to Customer', '2021-07-08 13:29:25', '2021-07-08 13:29:25'),
(658, 'Mohammed Razaul Karim', 'mrkarim.chalmers@gmail.com', '+46.769308117', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 13:31:07', '2021-07-08 13:31:07'),
(659, 'Ahad Parvez', 'ahadparvez3@gmail.com', '01681366780', NULL, NULL, 'Rakhalini', NULL, 'rakhalini.com', 'Converted to Customer', '2021-07-08 13:32:13', '2021-07-08 13:32:13'),
(660, 'Mizanur Rahman', 'mrahman.development@gmail.com', '01712048119', NULL, NULL, 'ICGD Ltd.', NULL, NULL, 'Converted to Customer', '2021-07-08 13:33:34', '2021-07-08 13:33:34'),
(661, 'Mr Syed Repon', 'zamangroup16@gmail.com', '01761886347', NULL, NULL, 'Zaman Motors', NULL, NULL, 'Converted to Customer', '2021-07-08 13:34:49', '2021-07-08 13:34:49'),
(662, 'Sohag Mallik', 'malliksohag4@gmail.com', '01785001179', NULL, NULL, 'S.A. Enterprise', NULL, 'saenterprisebd.com', 'Converted to Customer', '2021-07-08 13:35:58', '2021-07-08 13:35:58'),
(663, 'Adhora Islam Toma', 'adhoraislamtoma@gmail.com', '01765897225', NULL, NULL, 'Princess Gallery', NULL, NULL, 'Converted to Customer', '2021-07-08 13:37:06', '2021-07-08 13:37:06'),
(664, 'Muhammad Shaheen', 'shaheen104@yahoo.com', '01300643579', NULL, NULL, 'JNS Sourcing Point', NULL, 'jnssourcing.com', 'Converted to Customer', '2021-07-08 13:54:32', '2021-07-08 13:54:32'),
(665, 'Md Sohel Rana', 'rbrothers2015@gmail.com', '01718187678', NULL, NULL, 'Haaat Bazar', NULL, 'haaatbazar.com', 'Converted to Customer', '2021-07-08 13:55:38', '2021-07-08 13:55:38'),
(666, 'Sharma Suman', 'masum088816@gmail.com', '+48.660888122', NULL, NULL, 'Bangla Bazaar . Pl', NULL, 'banglabazaar.pl', 'Converted to Customer', '2021-07-08 13:59:10', '2021-07-08 13:59:10'),
(667, 'SM Arif', 'info@merchantoverseas.org', '01711072649', NULL, NULL, 'Merchant Overseas', NULL, NULL, 'Converted to Customer', '2021-07-08 14:00:15', '2021-07-08 14:00:15'),
(668, 'Mr. Shajib', 'dwlbd.arch@gmail.com', '01733400054', NULL, NULL, 'Dwl Architecture & Consultant', NULL, NULL, 'Converted to Customer', '2021-07-08 14:01:25', '2021-07-08 14:01:25'),
(669, 'Enamul Kabir', 'ekrazu@yahoo.com', '+44.7903493819', NULL, NULL, 'Imperial Trading Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 14:02:35', '2021-07-08 14:02:35'),
(670, 'Ariful Hasan', 'mhdarifulhasan@hotmail.com', '01708140957', NULL, NULL, 'GTech Solution Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 14:03:41', '2021-07-08 14:03:41'),
(671, 'Zafor Ullah', 'zaforu18@gmail.com', '01777764158', NULL, NULL, 'Basay Delivery', NULL, NULL, 'Converted to Customer', '2021-07-08 14:04:49', '2021-07-08 14:04:49'),
(672, 'Badsha Hossain', 'it@thearistocratgroup.com', '01984488010', NULL, NULL, 'The Aristocrat Group', NULL, NULL, 'Converted to Customer', '2021-07-08 14:07:07', '2021-07-08 14:07:07'),
(673, 'Al Amin', 'climaxgarments5@gmail.com', '01685030361', NULL, NULL, 'Climax Garb Limited', NULL, 'climaxgarblimited.com', 'Converted to Customer', '2021-07-08 14:08:47', '2021-07-08 14:08:47'),
(674, 'Mr. Raihan', 'styleproho2017@gmail.com', '01747578222', NULL, NULL, 'StylePro', NULL, NULL, 'Converted to Customer', '2021-07-08 14:09:50', '2021-07-08 14:09:50'),
(675, 'MD BIPUL Sarkar', 'sarkartour1@gmail.com', '01923529810', NULL, NULL, 'Sarkar Tour & Travels', NULL, NULL, 'Converted to Customer', '2021-07-08 14:10:45', '2021-07-08 14:10:45'),
(676, 'Shuvangkar Dey', 'sd08877@gmail.com', '01616921277', NULL, NULL, 'Digitech Business Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 14:26:50', '2021-07-08 14:26:50'),
(677, 'Sadek Raihan', 'sadekislam100@gmail.com', '01763525829', NULL, NULL, 'Azosro', NULL, NULL, 'Converted to Customer', '2021-07-08 14:27:44', '2021-07-08 14:27:44'),
(678, 'Mr. Zahid Morshed', 'zahid.morshed@gmail.com', '01534405947', NULL, NULL, 'YM Traders', NULL, NULL, 'Converted to Customer', '2021-07-08 14:28:38', '2021-07-08 14:28:38'),
(679, 'Md Asadujjaman', 'asad_acp@yahoo.com', '01892575426', NULL, NULL, 'Yellow Moon Property Services Ltd.', NULL, NULL, 'Converted to Customer', '2021-07-08 14:29:32', '2021-07-08 14:29:32'),
(680, 'Musharaf Mahin', 'assess_00005@yahoo.com', '01841077845', NULL, '01611551233', 'Assess Developments Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 14:51:14', '2021-11-09 11:35:30'),
(681, 'A.K.M Kamruzzaman', 'jm.engineering@yahoo.com', '01911310241', NULL, NULL, 'JM ENGINEERING', NULL, NULL, 'Converted to Customer', '2021-07-08 14:54:16', '2021-07-08 14:54:16'),
(682, 'Mahabubul Islam', 'fatihahhalalfood@gmail.com', '01648376867', NULL, NULL, 'Fatihah Halal Food', NULL, NULL, 'Converted to Customer', '2021-07-08 14:56:44', '2021-07-08 14:56:44'),
(683, 'Mr. Mahedi', 'mahedi@enamtrims.com', '01847424852', NULL, NULL, 'Enam Trim', NULL, NULL, 'Converted to Customer', '2021-07-08 14:58:11', '2021-07-08 14:58:11'),
(684, 'Adv. Mokbul Hossain', 'bds.bogra@gmail.com', '01711372864', NULL, NULL, 'Bogra Diabetic Somity', NULL, NULL, 'Converted to Customer', '2021-07-08 14:59:15', '2021-07-08 14:59:15'),
(685, 'Md Hafizur Rahman', 'bossshaheen1984@gmail.com', '01870728980', NULL, NULL, 'Urbar Group', NULL, NULL, 'Converted to Customer', '2021-07-08 15:00:28', '2021-07-08 15:00:28'),
(686, 'Mr. Kamal Hossain', 'info.zannath18@gmail.com', '01869858704', NULL, NULL, 'ZANNATH POLYMER & PACKAGING (PVT) LTD', NULL, NULL, 'Converted to Customer', '2021-07-08 15:15:58', '2021-07-08 15:15:58'),
(687, 'Nuruzzaman Sagar', 'nuruzzaman.sagar12@gmail.com', '01715669113', NULL, NULL, 'Hi Five Play Zone', NULL, NULL, 'Converted to Customer', '2021-07-08 15:17:45', '2021-07-08 15:17:45'),
(688, 'Mr. Hemel', 'info@mimgroupbd.com', '01719597654', NULL, NULL, 'MIM SWEATERS LTD', NULL, NULL, 'Converted to Customer', '2021-07-08 15:19:19', '2021-07-08 15:19:19'),
(689, 'Shah Jahan', 'shahjahan2357@gmail.com', '01819011372', NULL, NULL, 'Euro Tex intl', NULL, NULL, 'Converted to Customer', '2021-07-08 15:20:19', '2021-07-08 15:20:19'),
(690, 'Ahasan Habib', 'habibgiebd@gmail.com', '01750726079', NULL, NULL, 'GIE PTE Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 15:38:21', '2021-07-08 15:38:21'),
(691, 'Sakura Saber', 'beautyfacejapan2019@gmail.com', '01911774855', NULL, NULL, 'Beauty Face Japan', NULL, NULL, 'Converted to Customer', '2021-07-08 15:40:14', '2021-07-08 15:40:14'),
(692, 'Sayed Ishak Miah', 'discover.thai@gmail.com', '+66.904017468', NULL, NULL, 'DISCOVER THAILAND CO., LTD.', NULL, NULL, 'Converted to Customer', '2021-07-08 15:42:07', '2021-07-08 15:42:07'),
(693, 'Bijoy Das', 'bijoydaskabbo@gmail.com', '01811347378', NULL, NULL, 'Samprity Barta', NULL, NULL, 'Converted to Customer', '2021-07-08 15:43:16', '2021-07-08 15:43:16'),
(694, 'Md. Ziaul Hasan', 'nexalimited@gmail.com', '01777666777', NULL, NULL, 'NEXA LIMITED', NULL, NULL, 'Converted to Customer', '2021-07-08 15:44:21', '2021-07-08 15:44:21'),
(695, 'Rayhan Howlader', 'RayhanHowlader068@gmail.com', '01924118195', NULL, NULL, 'Ridge Security bd', NULL, NULL, 'Converted to Customer', '2021-07-08 15:45:51', '2021-07-08 15:45:51'),
(696, 'Arafat Zakarea', 'zakareaarafat7890@gmail.com', '01942779816', NULL, NULL, 'Clipping graphics', NULL, NULL, 'Converted to Customer', '2021-07-08 15:46:46', '2021-07-08 15:46:46'),
(697, 'Md. Faizul Islam', 'jony5064@gmail.com', '01791646568', NULL, NULL, 'updatebdnews24.com', NULL, NULL, 'Converted to Customer', '2021-07-08 15:53:14', '2021-07-08 15:53:14'),
(698, 'Emran Ali Khan', 'emran@choicebd.com', '01716236392', NULL, NULL, 'CHOICE INT.', NULL, NULL, 'Converted to Customer', '2021-07-08 15:54:08', '2021-07-08 15:54:08'),
(699, 'Mr Maswood Alam', 'adil.itofficer@gmail.com', '01977225332', NULL, NULL, 'Southern Multi Products Ltd.', NULL, NULL, 'Converted to Customer', '2021-07-08 15:56:32', '2021-07-08 15:56:32'),
(700, 'M Alam Telot', 'hr.redistrada@gmail.com', '01675106053', NULL, NULL, 'Re Di Strada', NULL, NULL, 'Converted to Customer', '2021-07-08 15:57:38', '2021-07-08 15:57:38'),
(701, 'Mr Fuad', 'planetfuad@gmail.com', '01711430994', NULL, NULL, 'Paragon Chemical', NULL, NULL, 'Converted to Customer', '2021-07-08 15:58:30', '2021-07-08 15:58:30'),
(702, 'Niman Ahmed', 'nimanlive@gmail.com', '01516148428', NULL, NULL, 'Tuntuni IT', NULL, NULL, 'Converted to Customer', '2021-07-08 15:59:36', '2021-07-08 15:59:36'),
(703, 'Md Shahid Ullah', 'msum864@gmail.com', '01715123864', NULL, NULL, NULL, NULL, 'mdshahidullah.com and garmentsconsultingltd.com', 'Converted to Customer', '2021-07-08 16:01:10', '2021-07-08 16:01:10'),
(704, 'Jwel Arif', 'mdjewelmridha95932@gmail.com', '01731139999', NULL, NULL, 'DBP NEWS', NULL, NULL, 'Converted to Customer', '2021-07-08 16:02:08', '2021-07-08 16:02:08'),
(705, 'Hasan Ali Majumder', 'computerhomeltd@gmail.com', '01717887711', NULL, NULL, 'Computer Home Ltd.', NULL, NULL, 'Converted to Customer', '2021-07-08 16:03:17', '2021-07-08 16:03:17'),
(706, 'MD Islam', 'amunna34675@gmail.com', '+1.2142006916', NULL, NULL, 'AM PM TAXI', NULL, NULL, 'Converted to Customer', '2021-07-08 16:04:44', '2021-07-08 16:04:44'),
(707, 'Tanvir Ahmed', 'ahmedtanin85@gmail.com', '01762717163', NULL, NULL, 'Smart Kidz Corporation', NULL, 'smartkidzcorporation.com', 'Converted to Customer', '2021-07-08 16:06:08', '2021-07-08 16:06:08'),
(708, 'Kazi Kabir', 'kaysaradvanced@gmail.com', '01711531383', NULL, NULL, 'Advanced Consultency', NULL, NULL, 'Converted to Customer', '2021-07-08 16:07:15', '2021-07-08 16:07:15'),
(709, 'Mustak Ahmed', 'mustaq1602@yahoo.com', '+61.412634358', NULL, NULL, 'Eagle Eye Security', NULL, NULL, 'Converted to Customer', '2021-07-08 16:08:38', '2021-07-08 16:08:38'),
(710, 'Md. Shariful Islam', 'shariftito@gmail.com', '01715695700', NULL, NULL, 'Capella Marine Services', NULL, NULL, 'Converted to Customer', '2021-07-08 16:09:34', '2021-07-08 16:09:34'),
(711, 'HM Dhali', 'hmdhali97@gmail.com', '01720429156', NULL, NULL, 'Dhali\'s Apparels Ltd', NULL, 'dhalisbd.com', 'Converted to Customer', '2021-07-08 16:10:50', '2021-07-08 16:10:50'),
(712, 'Amit Kunda', 'amitkunda94@gmail.com', '01844051917', NULL, NULL, 'Nikhad Endeavour Limited', NULL, NULL, 'Converted to Customer', '2021-07-08 16:11:53', '2021-07-08 16:11:53'),
(713, 'Dr. Md. Zia Hayder', 'zhbosunia@gmail.com', '01737424910', NULL, NULL, 'Specialized Liver Care and Endoscopic Therapy', NULL, NULL, 'Converted to Customer', '2021-07-08 16:12:47', '2021-07-08 16:12:47'),
(714, 'Imran Ahmed', 'mh.neshad39@gmail.com', '01771704439', NULL, NULL, 'eBazar Ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 16:28:52', '2021-07-08 16:28:52'),
(715, 'A.S.M Shahriar Rahman', 'snp.shoyeb@gmail.com', '01715145523', NULL, NULL, 'Santi IT Farm', NULL, NULL, 'Converted to Customer', '2021-07-08 16:29:56', '2021-07-08 16:29:56'),
(716, 'Anower Hossain', 'maisasornali121@gmail.com', '01877715214', NULL, NULL, 'IPLE Electronics', NULL, NULL, 'Converted to Customer', '2021-07-08 16:32:29', '2021-07-08 16:32:29'),
(717, 'Mr. Kamal Hossain', 'technogroup@creativetechpark.com', '01619817171', NULL, NULL, 'Techno Group', NULL, NULL, 'Converted to Customer', '2021-07-08 16:33:49', '2021-07-08 16:33:49'),
(718, 'Mr. Shajjad', 'jewel@truetexbd.com', '01933221122', NULL, NULL, 'TrueTex Limited', NULL, NULL, 'Converted to Customer', '2021-07-08 16:35:48', '2021-07-08 16:35:48'),
(719, 'Mr. Shamim Mia', 'nagarkantha@creativetechpark.com', '01713999000', NULL, NULL, 'Nagarkantha', NULL, NULL, 'Converted to Customer', '2021-07-08 16:36:54', '2021-07-08 16:36:54'),
(720, 'Niloy Sarwer', 'niloysarwer94@gmail.com', '01722575388', NULL, NULL, 'Tutorsheba.com', NULL, NULL, 'Converted to Customer', '2021-07-08 16:38:43', '2021-07-08 16:38:43'),
(721, 'Bappi Bhandari', 'habib7000@gmail.com', '01733321390', NULL, NULL, 'Pioneer Filtration ltd.', NULL, NULL, 'Converted to Customer', '2021-07-08 16:39:45', '2021-07-08 16:39:45'),
(722, 'Syed Mohsin', 'taxidfwcity@gmail.com', '+1.9724006556', NULL, NULL, 'Yellow Cab Dfw', NULL, NULL, 'Converted to Customer', '2021-07-08 16:40:37', '2021-07-08 16:40:37'),
(723, 'Mehedi Hasan', 'hasanenterprise21@gmail.com', '01715615191', NULL, NULL, 'Hasan Enterprise', NULL, NULL, 'Converted to Customer', '2021-07-08 16:41:51', '2021-07-08 16:41:51'),
(724, 'Md Aminul Islam Nirob', 'ail@dtlbd.com', '01777706916', NULL, NULL, 'APPAREL INDUSTRY LTD.', NULL, NULL, 'Converted to Customer', '2021-07-08 16:42:39', '2021-07-08 16:42:39'),
(725, 'Motaleb Hossain', 'motalebhossain9338@gmail.com', '01759539338', NULL, NULL, 'Skylark BD', NULL, NULL, 'Converted to Customer', '2021-07-08 16:43:41', '2021-07-08 16:43:41'),
(726, 'Reaz Ahmed', 'reaz@outreachbd.com', '01713068444', NULL, NULL, 'Outreach BD', NULL, NULL, 'Converted to Customer', '2021-07-08 16:44:27', '2021-07-08 16:44:27'),
(727, 'Md Nasimuddowla Hiru', 'mdnasimuddowlahiru@gmail.com', '01715464352', NULL, NULL, 'Family BD', NULL, NULL, 'Converted to Customer', '2021-07-08 16:45:14', '2021-07-08 16:45:14'),
(728, 'Mr. Rajib Tusher', NULL, '01711112767', NULL, NULL, NULL, NULL, 'ecostitchltd.com', 'Converted to Customer', '2021-07-08 16:48:30', '2021-07-08 16:48:30'),
(729, 'Kazi Mamunur Rashid', 'kazimamunurrashid@gmail.com', '01713257800', NULL, NULL, 'third point ltd', NULL, NULL, 'Converted to Customer', '2021-07-08 17:30:13', '2021-07-08 17:30:13'),
(730, 'Mostak Ahmed', 'phoenixsoftbd@gmail.com', '01743056775', NULL, NULL, 'Phoenix Software', NULL, NULL, 'Converted to Customer', '2021-07-08 17:31:11', '2021-07-08 17:31:11'),
(731, 'Alif ahmed', 'inexco.bd@gmail.com', '01877700082', NULL, NULL, 'inexinterior', NULL, NULL, 'Converted to Customer', '2021-07-08 17:32:08', '2021-07-08 17:32:08'),
(732, 'Mahmudul Hasan John', 'john@mh-hk.com', '01771007172', NULL, NULL, 'MH HK', NULL, NULL, 'Converted to Customer', '2021-07-08 17:33:02', '2021-07-08 17:33:02'),
(733, 'SYED TANVIR YOUSUF', 'yousuftanvir@hotmail.com', '01972224027', NULL, NULL, 'DHAKA EYE SECURITY SERVICES', NULL, NULL, 'Converted to Customer', '2021-07-08 17:33:51', '2021-07-08 17:33:51'),
(734, 'SUREN MONDAL', 'albertmondal@yahoo.com', '01713037156', NULL, NULL, 'Guardwell Bangladesh', NULL, NULL, 'Converted to Customer', '2021-07-08 17:34:47', '2021-07-08 17:34:47'),
(735, 'Mosharef Hossain', 'singaporegroup662@gmail.com', '01908367426', NULL, NULL, 'Modern Group', NULL, NULL, 'Converted to Customer', '2021-07-08 17:36:21', '2021-07-08 17:36:21'),
(736, 'Meeta Mannan', 'meetamannan@aol.com', '+1.2488602498', NULL, NULL, 'Meetas Collection', NULL, NULL, 'Converted to Customer', '2021-07-08 17:37:25', '2021-07-08 17:37:25'),
(737, 'Md Somsur Rahman', 'rahman.mdsomsur@gmail.com', '01305079903', NULL, NULL, 'Sayef trade International', NULL, NULL, 'Converted to Customer', '2021-07-08 17:39:59', '2021-07-08 17:39:59'),
(738, 'MD NUR ALAM', 'mnrony@gmail.com', '01717697918', NULL, NULL, 'IRABD', NULL, NULL, 'Converted to Customer', '2021-07-08 17:40:58', '2021-07-08 17:40:58'),
(739, 'Sayeed Mahmood', 'globalfinancingconsultant@gmail.con', '01704956744', NULL, NULL, 'Grouprmg', NULL, NULL, 'Converted to Customer', '2021-07-08 17:42:57', '2021-07-08 17:42:57'),
(740, 'Abdullah Al Galib', 'algalib00@gmail.com', '01723058459', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:43:33', '2021-07-08 17:43:33'),
(741, 'Habib Rahman', 'jhone_albert@yahoo.co.in', '01715301920', NULL, NULL, 'Dress Exporter BD.', NULL, NULL, 'Converted to Customer', '2021-07-08 17:44:29', '2021-07-08 17:44:29'),
(742, 'Shahalam Ashique', 'shinetexltd.bd02@gmail.com', '01968949948', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:45:42', '2021-07-08 17:45:42'),
(743, 'MD. MUKTER HOSSAIN', 'info.shahanoorgroupdhakabd@gmail.com', '01717500223', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:46:35', '2021-07-08 17:46:35'),
(744, 'MURAD AHMED', 'muradahmed1349@gmail.com', '01711175343', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:47:18', '2021-07-08 17:47:18'),
(745, 'Shaheed Zaman', 'rydehostbd@gmail.com', '01980272464', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:48:08', '2021-07-08 17:48:08'),
(746, 'md.nizam uddin', 'nizamuddin2447@gmail.com', '01727342447', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:49:05', '2021-07-08 17:49:05'),
(747, 'Mohin Uddin Mamun', 'perfect.acc@live.com', '01717923478', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:49:46', '2021-07-08 17:49:46'),
(748, 'Washim Mohammed', 'biddut.mohammed@yahoo.com', '+44.7459008757', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:50:28', '2021-07-08 17:50:28'),
(749, 's m ali sarphoraj', 'porag016@gmail.com', '01672687780', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:51:20', '2021-07-08 17:51:20'),
(750, 'Farhad Hossain', 'farhad.hossain79@gmail.com', '01716622726', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:52:46', '2021-07-08 17:52:46'),
(751, 'Kazi Jesin', NULL, '01855747474', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:53:36', '2021-07-08 17:53:36'),
(752, 'Syed Kamrul Islam', 'quicktaxiandlimo@gmail.com', '+1.9723693128', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:54:22', '2021-07-08 17:54:22'),
(753, 'Borhan Kabir chowdhury', NULL, '+971.559079310', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:54:54', '2021-07-08 17:54:54'),
(754, 'Raju Ahmed', NULL, '01717505807', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:55:27', '2021-07-08 17:55:27'),
(755, 'Md. Osman Gani', NULL, '01820147066', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:57:16', '2021-07-08 17:57:16'),
(756, 'Jaber Ahmed', 'amrdesh05@gmail.com', '01681189700', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:58:07', '2021-07-08 17:58:07'),
(757, 'Mohammad Nadim Eqbul', NULL, '01913747075', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:58:48', '2021-07-08 17:58:48'),
(758, 'Rasheduzzaman Khan', NULL, '01717753113', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:59:22', '2021-07-08 17:59:22'),
(759, 'Ariful Haque', NULL, '01715054545', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 17:59:49', '2021-07-08 17:59:49'),
(760, 'Mohammed faisal Ahsan ullah', 'faisal@outreachlimited.com', '01678288888', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:00:33', '2021-07-08 18:00:33'),
(761, 'Mohammad Samir Miah', 'stenterprise2000@gmail.com', '01785604847', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:01:13', '2021-07-08 18:01:13'),
(762, 'md jaidul kabir', 'sistechbd@gmail.com', '01914695285', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:02:36', '2021-07-08 18:02:36'),
(763, 'Md nur Islam', 'allionbiz@gmail.com', '01717109209', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:03:17', '2021-07-08 18:03:17'),
(764, 'Imtiaz Akil', 'imtiaz.akil@softbd.com', '01826323538', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:03:57', '2021-07-08 18:03:57'),
(765, 'Shafiul Islam', 'shafi.babu.my@gmail.com', '01711540989', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:04:36', '2021-07-08 18:04:36'),
(766, 'Peal Hossain', 'pealhossainny@gmail.com', '01779199770', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:05:17', '2021-07-08 18:05:17'),
(767, 'Misbah Uddin', 'visa.supremeholidays@gmail.com', '01788254525', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:06:17', '2021-07-08 18:06:17'),
(768, 'Syed Hasan', 'dbtbd7@gmail.com', '01716011453', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:06:57', '2021-07-08 18:06:57'),
(769, 'Rifat Ullah', NULL, '01713461234', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:07:31', '2021-07-08 18:07:31'),
(770, 'Azhar Uddin', 'azurony2014@gmail.com', '01817534785', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-07-08 18:08:07', '2022-06-07 12:00:32'),
(771, 'kiyash rahman', 'kiyashrahman@ezma.org', '01886408478', NULL, NULL, 'Ezma', NULL, 'business website redesine and proposal patha ta hoba    ezma.org', 'Converted to Customer', '2021-07-10 04:27:59', '2021-08-16 09:44:02'),
(772, 'Rahman Abanti Hemica', 'hemica.rahman@one-ict.com', '01951631100', NULL, NULL, 'No Chinta', NULL, NULL, 'Converted to Customer', '2021-07-10 05:43:54', '2021-07-13 05:22:08'),
(773, 'Rashad sir', 'somessorynews24@gmail.com', '01946957896', NULL, NULL, NULL, NULL, 'news protal\r\n22.06.2022-Call receive korsena', 'lead', '2021-07-11 02:53:58', '2022-06-22 11:35:19'),
(774, 'Md Nazmul Islam', 'nstarmotivation@gmail.com', '016-727-77779', NULL, NULL, 'Nstar Group', NULL, 'hosting-5GB', 'Qualified', '2021-07-11 08:32:54', '2021-07-26 03:07:50'),
(775, 'jonika', 'naishacustomerservice1@gmail.com', '01703407270', NULL, '028431872', NULL, NULL, 'business website proposal padabo\r\n22.06.2022-Call kete disse', 'lead', '2021-07-12 04:54:06', '2022-06-22 11:33:51'),
(776, 'MD. Shamsur Rahman Sajid', 'shamsur.northendcoffee@gmail.com', '01313361630', NULL, NULL, 'North End Coffee', 'kha-47/1 pragati sharani shahzadpur Dhaka-1212', 'wants like this https://parkrdcoffee.com/\r\n22.06.2022-ekhon apatoto sthogit ase. tai dorkar nai', 'Contacted', '2021-07-13 04:29:33', '2022-06-22 11:32:17'),
(777, 'Nurujjaman', NULL, '01738240548', NULL, NULL, 'Alif auto mobile', 'Asulia', '22.06.2022-jekhan theke website niyese , sekhan theke service o nisse', 'Contacted', '2021-07-13 08:40:23', '2022-06-22 11:29:13'),
(778, 'Jessy', 'jcpc3333@gmail.com', '01812450845', NULL, NULL, NULL, NULL, 'Newpaper like allbanglanewspaper.xyz no response', 'Disqualified', '2021-07-14 10:46:52', '2022-06-15 11:53:12'),
(779, 'Md. Milon Khalifa', 'milongravity@gmail.com', '01869521397', 'mssojolo@gmail.com', '01321155371', 'Gravity fashion', '31/A, 5/B(5Th floor)Centre Point  Concort Tejkunipara ,Tejgaoon,Farmgate Dhaka-1215.korle janabe', 'Website like sheba.xyz', 'Contacted', '2021-07-16 07:08:14', '2022-06-02 04:29:36'),
(780, 'Rejwan Tashrif', NULL, '01754919544', NULL, NULL, NULL, NULL, 'work by others\r\n22.06.2022-ekhon apatoto kisu lagsena karon ,jekhan theke website niyese tara sob kore disse', 'Contacted', '2021-07-16 08:29:45', '2022-06-22 10:12:44'),
(781, 'Towfiq Islam', 'towfiq386@gmail.com', '01751366327', NULL, NULL, NULL, NULL, 'Bikroy.com er moto website', 'Disqualified', '2021-07-16 15:11:05', '2022-06-02 09:06:16'),
(782, 'MD . Rasel', 'info@rasel.my', '01568075904', NULL, NULL, NULL, NULL, 'laravel', 'Disqualified', '2021-07-17 05:46:41', '2022-06-16 08:09:00'),
(783, 'Md. Shahabul Alam', 'shahabul@radissonal.com', '01612293514', NULL, NULL, 'Hilton Apparels Ltd', NULL, NULL, 'Converted to Customer', '2021-07-26 05:56:48', '2021-10-11 09:47:55'),
(784, 'Ballal Hossain', NULL, '01756542078', NULL, '01925108855', NULL, NULL, 'new ecommerce website larabel kotha bolta hoba\r\n22.06.2022-Budget khub kom tai korbena .', 'Disqualified', '2021-07-29 10:35:41', '2022-06-22 10:06:52'),
(785, 'Moniruzzaman Rupom', 'rupom.kh@gmail.com', '01765272527', NULL, NULL, NULL, NULL, 'New Ecommerce Website larabel khota bolta hoba', 'lead', '2021-07-29 10:38:44', '2022-06-19 08:37:10'),
(786, 'Asadullah Al Mahmud', 'bd.asad.a.m@gmail.com', '01558039882', NULL, NULL, NULL, NULL, 'New Ecommerce Website larabel niea kotha bolta hoba,    Proposal send', 'lead', '2021-07-29 10:43:17', '2022-06-19 08:37:10'),
(787, 'Khorshed Alam', 'movexcourierbd@gmail.com', '01610175620', NULL, NULL, NULL, NULL, 'New Ecommerce Website niea kotha bolta hoba (larabal)', 'lead', '2021-07-29 10:46:33', '2022-06-19 08:37:10'),
(788, 'Saif Khan', NULL, '01726738689', NULL, NULL, NULL, NULL, 'New Ecommerce Website Larabal niea kotha bolta hoba', 'Disqualified', '2021-07-29 10:49:26', '2022-06-16 08:41:29'),
(789, 'Md. Asad Ullah', 'm.asad.ullah@hotmail.com', '01678-069010', NULL, NULL, NULL, 'House-19, Road-01, Block-B, Dhaka Uddan Housing, Adabor, Mohammadpur, Dhaka-1207.', 'Website Name: www.pearlartistry.com', 'Converted to Customer', '2021-07-29 12:37:46', '2021-08-18 04:06:56'),
(790, 'Tusher Ferdoush', 'tusherferdoush@yahoo.com', '01620202021', NULL, NULL, NULL, NULL, 'Number Off', 'Disqualified', '2021-07-29 14:24:22', '2022-06-02 10:07:12'),
(791, 'S Rahman Rasel', 'srrasel3@gmail.com', '01811286288', NULL, NULL, NULL, NULL, 'Ecommerce Website Larabel  proposal and demo send', 'lead', '2021-07-30 17:05:17', '2022-06-19 08:37:10'),
(792, 'Rudro Raj', NULL, '01312017858', NULL, NULL, NULL, NULL, 'Ecommerce Website Larabal niea khota bolta hoba', 'lead', '2021-07-30 17:08:19', '2022-06-19 08:37:10'),
(793, 'Md Jihed Hassain', NULL, '01626972980', NULL, NULL, NULL, NULL, 'Ecommerce Website larabel send korta hob', 'lead', '2021-07-31 10:50:48', '2022-06-19 08:37:10'),
(794, 'Md Jihed Hassain', NULL, '016-26-972980', NULL, NULL, NULL, NULL, 'Ecommerce Website larabel send korta hob', 'lead', '2021-07-31 10:51:37', '2022-06-19 08:37:10'),
(795, 'Md Jihed Hassain', NULL, '016-26-972-98-0', NULL, NULL, NULL, NULL, 'Ecommerce Website larabel send korta hob', 'lead', '2021-07-31 10:52:10', '2022-06-19 08:37:10'),
(796, 'Kabir', 'kabircna@gmail.com', '01911413088', NULL, NULL, NULL, NULL, 'Ecommerce Website Larabal roosal send', 'lead', '2021-07-31 11:58:56', '2022-06-19 08:37:10'),
(797, 'Fayez Ahmed', 'fasabuj@gmail.com', '01743599177', NULL, NULL, NULL, NULL, 'E-commerce website larabal pora Kotha bolba.', 'Disqualified', '2021-08-02 07:04:15', '2022-06-09 03:49:46'),
(798, 'Saao Syed Fahim', 'fmgbus.bsl@gmail.com', '01306775035', NULL, NULL, NULL, NULL, 'Ecommerce Website Larabel phython e kora লাগবে\r\n৩১-০৫-২২- python দিয়ে করাতে চায়। odoo.com এ e-commerce যুক্ত করতে চায় python diye.& kisu page বাড়াতে চায়।\r\n05.06.2022- odoo.com  nijey ekjon website development company', 'Contacted', '2021-08-02 13:20:34', '2022-06-05 05:04:25'),
(799, 'Shaj', 'nishofashion@gmail.com', '01886350007', NULL, NULL, NULL, NULL, 'Ecommerce website proposal send', 'Disqualified', '2021-08-03 03:55:17', '2022-06-20 08:58:50'),
(800, 'M T Bazari', 'alersalmamun@gmail.com', '01687261936', NULL, NULL, NULL, NULL, 'Bulk SMS service cheyeche', 'Disqualified', '2021-08-03 04:08:42', '2022-06-02 05:15:02'),
(801, 'Khandker Shahed', NULL, '01754348949', NULL, NULL, NULL, NULL, 'E-Commerce , Partner er shate kotha bole janabe || Qualified.', 'Qualified', '2021-08-03 06:00:04', '2021-08-03 06:00:04'),
(802, 'Nayeem Bin Alam-rajib', NULL, '01919010159', NULL, NULL, NULL, NULL, 'Pore call dite hobe, Demo phatano hoise, Dekhe janabe|| 30k Bole দিসে\r\n৩১-০৫-২২--apps বানাতে চায়, আজকে রাতে কথা বলবে।\r\n05.06.2022-Call receive korsena', 'Contacted', '2021-08-03 06:00:43', '2022-06-05 04:59:15'),
(803, 'MD. Mostakim Ahmed Rafi', 'mostakim@rivello.com.bd', '01829276856', NULL, NULL, 'https://rivello.com.bd/', NULL, 'Ecommerce,  || Qualified|| Google meet', 'lead', '2021-08-03 06:01:27', '2022-03-03 09:26:56'),
(804, 'MD Ainul Haque', NULL, '01736516866', NULL, NULL, NULL, NULL, 'Demo send, Dekhe janabe||ainulhaque0207@gmail.com|| Proposal send\r\nJanabe uni ...Laravel diye korabe', 'lead', '2021-08-03 06:19:26', '2022-04-14 04:44:52'),
(805, 'Masudur Rahman', NULL, '01615128101', NULL, NULL, NULL, NULL, 'Google meeting rat 9 tay|| Budge nai|| Wordpress || Himu IT (Website done)\r\n31-05-2022-plan cancel  করে দিয়েছে।', 'Disqualified', '2021-08-03 06:44:22', '2022-06-05 04:55:19'),
(806, 'Ashiquzzaman Sohel', NULL, '01924-225555', NULL, NULL, NULL, NULL, 'Google meeting bikal 5tay', 'lead', '2021-08-03 06:45:02', '2022-06-19 08:37:10'),
(807, 'Mohammad Fahad', NULL, '01710375885', NULL, NULL, NULL, 'Wordpress package - 1', NULL, 'lead', '2021-08-03 06:45:57', '2022-06-19 08:37:10'),
(808, 'Md. Minhazul Islam', NULL, '01999040257', NULL, NULL, NULL, NULL, 'mdrony.bd711@gmail.com, Proposal send.  8 tarek jete bole, kochu khet. kal 10 tay meeting.notun business korte chay', 'Disqualified', '2021-08-03 06:46:38', '2022-06-18 10:48:52'),
(809, 'Rezaul', 'rkarim_bd77@yahoo.com', '01687092335', NULL, NULL, NULL, NULL, 'laravel e-commerce. Proposal send. 70k Quotation send. google meeting kortehobe..korbe না\r\n৩১-০৫-২০২২--website বানাবেনা,যদি বানায় তবে জানাবে।', 'Contacted', '2021-08-03 06:48:05', '2022-06-05 04:54:00'),
(810, 'Imon', NULL, '0 1793267514', NULL, NULL, NULL, NULL, '*Hotel Management. whatsapp a recurement dibe .Number off', 'Disqualified', '2021-08-03 10:43:13', '2022-06-05 08:54:23'),
(811, 'Uttam Day', 'matrichayagroup2020@Gmail.com', '+880 1870-884445', NULL, NULL, 'Matrichaya All Service', 'Barishal Sador, Barishal Himel Cotez, Notullhabad, Barishal.', 'masbsl.com', 'Converted to Customer', '2021-08-04 04:10:54', '2021-09-26 06:16:35'),
(812, 'Raju Mia', 'shagormd886@gmail.com', '01611414133', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal Deta Hoba (Laravel) meeting asa', 'lead', '2021-08-04 13:20:15', '2022-06-19 08:37:10'),
(813, 'Md Sohanur Rahman', NULL, '01765678926', NULL, NULL, NULL, NULL, 'Ecommerce Website Larabal Proposal padata hoba', 'lead', '2021-08-05 02:11:37', '2022-06-19 08:37:10'),
(814, 'Sheikh Farid', 'islamicshopbangladesh@gmail.com', '01730718719', NULL, NULL, 'Islamic Shop Bangladesh', 'Motijheel, Dhaka, Bangladesh', NULL, 'Converted to Customer', '2021-08-05 03:58:47', '2021-10-11 09:48:04'),
(815, 'Mohammed Farid Uddin (Midul)', 'midul.lifespring@gmail.com', '01611332743', NULL, NULL, 'LifeSpring Limited', 'Level #6 -Union Heights  55/2 Panthapath.', NULL, 'lead', '2021-08-05 05:44:35', '2022-06-19 08:37:10'),
(816, 'Md Arif Hossain', 'ceodhakaboss@gmail.com', '01745550525', NULL, NULL, NULL, NULL, 'Node js+ react', 'Quote Sent', '2021-08-06 08:58:54', '2021-08-08 09:58:35'),
(817, 'Rsb voiya', 'sells.allskyshaop@gmail.com', '01304454563', NULL, NULL, NULL, NULL, 'ecommerce website laravel Proposal deta hoba', 'lead', '2021-08-06 09:01:23', '2022-06-19 08:37:10'),
(818, 'Khocon Chakrabarti', NULL, '01963614123', NULL, NULL, NULL, NULL, 'Office a আসবে\r\n31.05.2022-কল রিসিভ করছেনা।\r\n05.06.2022 Besto asi boila rekhe disse', 'Contacted', '2021-08-07 04:06:20', '2022-06-05 04:48:21'),
(819, 'Masud Rana', NULL, '01915108080', NULL, NULL, NULL, NULL, 'laravel, consumer product', 'lead', '2021-08-07 04:06:58', '2022-06-19 08:37:10'),
(820, 'Nur Alum Sritir kull', NULL, '01883497618', NULL, NULL, NULL, NULL, 'Ecommerce Website laraval Proposal padata hoba M', 'lead', '2021-08-07 09:54:36', '2022-06-19 08:37:10'),
(821, 'Arifur Rahaman', 'arhamanarif@gmail.com', '01736990123', NULL, NULL, NULL, NULL, 'Laravel - E-Commerce, 80 k demo, 5 din por phone dite hobe. 1 week er vitor recurement dibe', 'Quote Sent', '2021-08-07 10:29:51', '2021-12-28 09:37:19'),
(822, 'Sonar tore', 'rakibtanu229@gmail.com', '01880456474', NULL, NULL, NULL, NULL, 'Facebook page link sent ..he will contact us no response', 'Disqualified', '2021-08-08 08:49:53', '2022-06-01 03:54:46'),
(823, 'Mir Nazrul Islam', 'azadfil4321@gmail.com', '01755637270', NULL, NULL, 'T-Shirt Place', NULL, NULL, 'Converted to Customer', '2021-08-10 06:14:23', '2021-08-22 06:28:29'),
(824, 'Md Shakawath', 'mdshakawath66@gmail.com', '01827638853', 'nusaibanaznin09071918@gmail.com', NULL, NULL, NULL, 'Ecommerce Website er proposal pathate hobe. Aleshamart er moto website chay. proposal send.', 'lead', '2021-08-10 08:41:03', '2022-06-19 08:37:10'),
(825, 'Mahadi Hasan', NULL, '01765511800', NULL, NULL, NULL, NULL, 'Mahadi Hasan, laravel e-commerce , proposal send', 'lead', '2021-08-10 10:06:08', '2022-06-19 08:37:10'),
(826, 'Yeasin Talukdar', NULL, '01748349400', NULL, NULL, NULL, NULL, '৩১-০৫-২০২২  অন্য প্রতিষ্ঠান থেকে নিয়েছেন, অন্য কোন service  লাগলে জানাবে।', 'Contacted', '2021-08-11 03:45:25', '2022-05-31 10:19:04'),
(827, 'Mk Electric Engenier', NULL, '01848639012', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal padata hoba', 'lead', '2021-08-11 04:35:15', '2022-06-19 08:37:10'),
(828, 'Shovo Sir', NULL, '01707059035', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Padata hoba', 'lead', '2021-08-11 04:37:29', '2022-06-19 08:37:10'),
(829, 'As Am Jasim voiea', 'smzosim1@gmail.com', '01781700578', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal send', 'lead', '2021-08-11 04:43:08', '2022-06-19 08:37:10'),
(830, 'Mohammad Zakir Hossain', NULL, '01865197970', NULL, NULL, NULL, NULL, 'Budget kom. wordpress package -1 .  call him afternoon', 'Disqualified', '2021-08-11 08:25:30', '2022-06-18 10:49:17'),
(831, 'Ibn Zaman', 'zaman.dhaka16@gmail.com', '01711067136', NULL, NULL, 'Habiganj Association', NULL, NULL, 'Disqualified', '2021-08-12 04:14:11', '2022-06-05 08:43:52'),
(832, 'al amin kazi', 'al.amin.kazi904@gmail.com', '+8801713297620', NULL, '+8801991980904', NULL, NULL, 'Interior design company,website দনে\r\n৩১-০৫-২০২২-আপাতত  website বানাবে না।', 'Contacted', '2021-08-13 07:33:20', '2022-06-05 04:45:37'),
(833, 'Subaj Asif', NULL, '01714339113', NULL, NULL, NULL, NULL, 'ecommerce website laravel', 'Disqualified', '2021-08-13 10:13:27', '2022-06-22 09:43:56'),
(834, 'sujon Mafi', NULL, '01943431606', NULL, NULL, NULL, NULL, 'Ecommerce Website Laraval', 'Contacted', '2021-08-13 10:16:28', '2022-06-21 08:31:48'),
(835, 'Shishir Golam Kibria', 'gkshishir@gmail.com', '01819447791', NULL, NULL, NULL, NULL, 'Business Website And Ecommerce Website  proposal send', 'Disqualified', '2021-08-13 10:20:19', '2022-06-22 10:23:24'),
(836, 'Sujon', NULL, '01612655665', NULL, NULL, NULL, NULL, 'WOCOMMERCE PACK 1 number off', 'Contacted', '2021-08-15 03:42:57', '2022-06-02 03:36:38'),
(837, 'H M Tarikul Kamrul', 'hmtkamrul@yahoo.com', '0 1711-299291', NULL, NULL, 'IPE group', 'House 37 Road 27 Banana R/A Dhaka', NULL, 'Converted to Customer', '2021-08-16 07:41:45', '2021-09-02 08:38:35'),
(838, 'Asif Mahmud', NULL, '01407457136', NULL, NULL, NULL, NULL, 'asifmahmudarnob@gmail.com.  Osusto pore contact korbe', 'Disqualified', '2021-08-16 08:28:37', '2022-05-31 10:27:57'),
(839, 'Samira Nur Nusrat', NULL, '01791692026', NULL, NULL, NULL, NULL, 'Delivery company website', 'Disqualified', '2021-08-16 08:49:32', '2022-06-04 03:44:20'),
(840, 'Fakhrulislam Rocky', NULL, '01974007640', NULL, NULL, NULL, NULL, 'https://boodmo.com/+ website + basic app=-[= 55k quote send', 'Qualified', '2021-08-16 09:39:21', '2021-08-16 09:39:21'),
(841, 'Md. Hasibuzzaman', 'raivy.pmaspire@gmail.com', '01758681545', NULL, NULL, NULL, NULL, 'Looking for	Search Engine Optimization (SEO)\r\nProject Budget	30000 TK - 50000 TK\r\nraivy.pmaspire@gmail.com\r\nNext week meeting korbe MD soho amader MD soho.', 'Disqualified', '2021-08-16 09:42:30', '2022-04-21 04:19:47'),
(842, 'Md. Shakil Khan', NULL, '01746256444', NULL, NULL, NULL, NULL, 'Larave Ecommerce. office a asbe kal porshu. robi bar asbe\r\n31-05-2022-  আপাতত ব্যবসা করবে না।তাই দরকার নেই।', 'Contacted', '2021-08-16 09:43:36', '2022-06-05 04:45:13'),
(843, 'Tashfik', 'rthossain123@gmail.com', '01630147070', NULL, '01883505436', NULL, NULL, 'Laravel E-commerce Website', 'Disqualified', '2021-08-17 11:10:32', '2022-06-01 10:29:21'),
(844, 'Shibli Ahmed', 'shibli.bd390@gmail.com', '01717552863', 'ahsan.adelurrahman@gmail.com', NULL, NULL, NULL, 'He wants to build Laravel ওএবসাইট\r\n৩১-০৫-২০২২- অন্য প্রতিষ্ঠানে কাজ চলতেছে এখনো শেষ হয়নি।', 'Contacted', '2021-08-18 09:00:43', '2022-06-05 04:44:30'),
(845, 'Sreya Hazra', 'sreya@texstylesbd.net', '01317804443', NULL, NULL, 'Tex Styles BD Ltd.', 'Baridhara DOHS, Lane 2, house 188', NULL, 'Converted to Customer', '2021-08-18 10:00:55', '2021-09-02 08:38:25'),
(846, 'Mohammad Irfan', 'Mohammadirfan2539@gmail.com', '971551642488', NULL, NULL, NULL, NULL, 'wordpreess a kaj korabe, fashion , dubai . poltibaj', 'Disqualified', '2021-08-18 12:46:43', '2022-06-15 08:46:13'),
(847, 'Mohammad Moin Uddin Umar', 'mmoinwn@gmail.com', '01717301080', NULL, NULL, NULL, NULL, 'proposal সেন্ত\r\n৩১-০৫-২০২২- কল রিসিভ করছেনা।\r\n05.06.2022 onek gulo company change koresen . kon company er jonno webiste cheyesilo bolte parsena .tobe unar nijeri ekta website lagbe 3 mas por', 'Contacted', '2021-08-19 03:57:16', '2022-06-05 04:44:02'),
(848, 'Mahbub hasan', 'Profmh29@gmail.com', '01701863253', NULL, NULL, 'mpowrenergy.org', NULL, NULL, 'Disqualified', '2021-08-19 07:27:04', '2022-06-22 10:18:55'),
(849, 'Alam Khan', NULL, '01904493582', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal send korta hoba mail id deba', 'Contacted', '2021-08-19 09:51:54', '2022-06-02 03:34:40'),
(850, 'Ali Asghor', 'aliasghorctg@gmail.com', '01311338988', NULL, NULL, NULL, NULL, 'Proposal sent', 'Disqualified', '2021-08-21 11:40:02', '2022-06-15 08:41:31'),
(851, 'S. M Ali emtias', 'Aliemtias016@gmail.com', '+46 76 104 45 26', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-08-21 11:49:33', '2021-09-19 03:57:32'),
(852, 'Rajon Hossain', NULL, '01946513615', NULL, NULL, NULL, NULL, 'Ecommerce website Laravel kag korar jono fone deasa bad', 'lead', '2021-08-22 05:09:09', '2022-06-19 08:37:10'),
(853, 'Tayon Mozumder', NULL, '01912772400', NULL, NULL, NULL, NULL, 'Ecommerce Website laravel', 'Disqualified', '2021-08-22 05:12:11', '2022-06-15 08:56:06'),
(854, 'Jonied Jomail', 'parbes1345@gmail.com', '01893019251', NULL, NULL, NULL, NULL, 'Ecommerce Website Laravel', 'Disqualified', '2021-08-22 05:14:41', '2022-06-22 10:11:25'),
(855, 'Ashik', 'ashik.prospera@gmail.com', '01837-406476', NULL, NULL, NULL, NULL, 'Ecommerce Website Laravel', 'lead', '2021-08-22 05:17:42', '2022-06-19 08:37:10'),
(856, 'Gazi Hafizur', 'gazihafijur044744@gmail.com', '01711044744', NULL, NULL, 'Beil Electronics', NULL, NULL, 'Disqualified', '2021-08-22 06:31:42', '2022-05-31 07:16:53'),
(857, 'Tamzid Islam', NULL, '01733444555', NULL, NULL, NULL, NULL, '(Laravel Ecommerce), https://hncbakery.com/', 'Converted to Customer', '2021-08-22 07:06:09', '2021-09-01 03:43:01'),
(858, 'Abdul Hamid Alim', NULL, '+33781507094', NULL, NULL, NULL, NULL, 'Restaurent er jonno website korbe..  35k woo, franc thake. 1 week por nibe. jakir', 'Disqualified', '2021-08-22 08:08:18', '2022-05-31 10:01:22'),
(859, 'Jewel', 'jewelrahman028@gmail.com', '01717336774', NULL, NULL, 'Developer company', NULL, 'Quotation pathabo ...Business website..Package 1 and 2\r\n৩১-০৫-২০২২-প্রতিষ্ঠান এর নিজস্ব লোক কাজ টি করে ফেলছে।\r\nKore felsen .', 'Contacted', '2021-08-23 06:19:27', '2022-06-05 04:35:12'),
(860, 'Mr. Lutfur Rahman', 'whitediamondhotel2020@gmail.com', '00966569861265', NULL, NULL, NULL, NULL, 'Hotel Management , Extra Location and Rating (Quote Send). jakir', 'Disqualified', '2021-08-23 10:15:59', '2022-06-15 08:46:04'),
(861, 'Faisal', 'operations.btta@gmail.com', '01713 078746', NULL, NULL, 'B.T. Tex. Access', NULL, 'Requirements diyeche ....quotation pathabo.\r\nkore ফেলসেন\r\n৩১-০৫-২০২২- অন্য প্রতিষ্ঠান থেকে নিয়েছেন আর কিছু লাগবে না, যদি কিছু প্রয়োজন হয় জানাবে।', 'Contacted', '2021-08-24 04:00:42', '2022-06-05 04:34:42'),
(862, 'Md. Ashad', NULL, '01624368117', NULL, NULL, 'Australia Mortgage Group Ltd', 'Baridhara DOHS', NULL, 'lead', '2021-08-24 04:29:44', '2022-03-03 09:24:24'),
(863, 'S. B. Ratan', 'sbratan2020@gmail.com', '01718964654', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal send', 'Disqualified', '2021-08-24 11:50:57', '2022-06-22 08:04:46'),
(864, 'Mr . Diaa', 'diaa@intracogroup.com', '01975006282', NULL, NULL, 'Intraco Group', 'INTRACO CENTRE, House # 40, Block-J, Pragati Sarani, Baridhara, Dhaka- 1212', NULL, 'Disqualified', '2021-08-25 04:13:48', '2022-06-14 09:20:24'),
(865, 'Md Faijullah', 'mfnoman19@gmail.com', '01779557419', NULL, '01962668782', NULL, NULL, 'Ecommerce Website Larrabel', 'Disqualified', '2021-08-26 02:39:36', '2022-06-22 10:10:54'),
(866, 'Soyed Mustak Hussain', NULL, '01745391032', NULL, NULL, NULL, NULL, '8k বলে\r\n৩১-০৫-২০২২--Domain বানিয়েছে, Hosting & website বানাবে ২০-২৫ দিন সময় লাগবে।', 'Contacted', '2021-08-26 03:40:07', '2022-05-31 04:15:05'),
(867, 'eDreamers', NULL, '01783862401', NULL, '01608322493', 'eDreamers', '147/H Green Road', 'Quote send korbo', 'Disqualified', '2021-08-26 07:28:47', '2022-05-31 10:42:49'),
(868, 'Nazmul sir', 'nazmul.huda208488@gmail.com', '01400914681', NULL, NULL, NULL, NULL, 'ecommerce website proposal and demo send', 'Disqualified', '2021-08-27 09:06:02', '2022-06-22 08:27:56'),
(869, 'Naimur Rahman', 'naimprince040@gmail.com', '01938264923', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-08-28 06:38:52', '2022-06-19 08:37:10'),
(870, 'Asharf Bsmmu', 'taufikahasan1990@gmail.com', '01758439134', NULL, '01627142103', NULL, NULL, 'Ecommerce Website package 1 and 2', 'Disqualified', '2021-08-28 10:20:36', '2022-06-21 10:02:33'),
(871, 'Md Saiful Alam Faisal', 'saifulalamfaisal66@gmail.com', '01709090866', NULL, NULL, NULL, NULL, 'Digital advertising proposal', 'lead', '2021-08-29 03:53:23', '2022-06-19 08:37:10'),
(872, 'Bishwajit Paul', 'bishwajitp@gmail.com', '01322823992', NULL, NULL, 'Fanam Group', 'Level 23 , Ahmed Tower . 28-30 Kamal Ataturk Avenue , Banani . Dhaka .', NULL, 'lead', '2021-08-29 05:31:18', '2022-03-03 09:24:24'),
(873, 'Shamim Ahmed', NULL, '01714851126', NULL, NULL, NULL, NULL, 'batper', 'Disqualified', '2021-08-29 09:33:38', '2022-06-22 10:31:10'),
(874, 'Hossain interprise', 'mdkabir.bb@gmail.com', '01304831160', NULL, NULL, NULL, NULL, 'Ecommerce website proposal', 'Contacted', '2021-08-29 09:36:43', '2022-06-22 09:54:48'),
(875, 'Boniz Private Limited', NULL, '01919066884', NULL, '01714069035', NULL, NULL, '01741132171 number IT', 'Converted to Customer', '2021-08-29 10:05:39', '2021-08-31 04:34:03'),
(876, 'Mushfiq Borat', 'thebenzeneringcode@gmail.com', '01834513275', NULL, '01758496846(Whats app kora)', NULL, 'Kalubari parbatipur Dinajpur', 'Business Website-https://thebenzeneringcode.wordpress.com/', 'lead', '2021-08-29 10:06:05', '2022-06-19 08:37:10'),
(877, 'Habib Akanda', 'impexbd26@yahoo.com', '01304159475', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal send', 'Disqualified', '2021-08-30 04:50:12', '2022-06-21 09:57:43'),
(878, 'Md Mukit', 'jamanmunir@yahoo.com', '01841-340-787', NULL, NULL, NULL, NULL, 'business website pakage-2 quotation send', 'Qualified', '2021-08-31 04:21:15', '2021-09-05 03:58:44'),
(879, 'Sharif Khan', 'ctgsrk.bd@gmail.com', '01741012867', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Disqualified', '2021-08-31 11:45:19', '2022-06-20 08:45:51'),
(880, 'Arif Khan', 'arifkhan.fcma@gmail.com', '0 1713-019446', NULL, NULL, 'Panthera Private Equity Limited', 'Erectors House (level 11) 18 Kemal Attaturk Avenue Banani  Dhaka.', NULL, 'Converted to Customer', '2021-09-01 09:05:51', '2021-10-11 09:54:10'),
(881, 'Sufian', 'abcsufian@gmail.com', '017-1406-6243', NULL, NULL, NULL, NULL, 'E commerce Website Demo send', 'Disqualified', '2021-09-01 09:24:36', '2022-06-20 08:38:37'),
(882, 'Gour Gopal Saha', 'gour@ert-bd.com', '01717300067', NULL, NULL, 'ERT Consortium', NULL, NULL, 'Converted to Customer', '2021-09-01 09:43:06', '2021-10-11 09:54:26'),
(883, 'Md Suruzzaman sumon', 'sumon@luminous.com.bd', '01911414150', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-09-02 08:00:59', '2022-03-03 09:26:56'),
(884, 'Engr Ahsan habib', NULL, '01778112734', NULL, NULL, 'engrahasan.com', NULL, 'Total 12 K.', 'Qualified', '2021-09-02 08:31:56', '2021-09-02 08:37:53'),
(885, 'Arif Alam', 'passage46894@yahoo.com', '01711529789', NULL, NULL, 'PASSAGE ASSOCIATES', 'Plot No: 5 Road no: 20, Gulshan -1, South Commercial Area, Dhaka – 1212', NULL, 'Converted to Customer', '2021-09-02 08:37:35', '2021-10-06 05:24:02'),
(886, 'Polash Kumar Bhadra', 'jennysrsm@gmail.com', '01985551805', 'rsm@jennys.com.bd', NULL, 'Jennys International Ltd .', 'House : 06 , Road : 68/A , Gulsan - 2 , Dhaka - 1212', NULL, 'Quote Sent', '2021-09-04 09:58:35', '2021-09-04 09:58:35'),
(887, 'MD. Jakaria Hossen', 'saddamsana2018@gmail.com', '01933440052', NULL, NULL, NULL, NULL, 'E-commerce/ BuySell Website Proposal send and demo', 'lead', '2021-09-04 10:22:05', '2022-06-19 08:37:10'),
(888, 'SABBIR AHMED', 'a_sabbir261@yahoo.com', '+880 1923-627561', NULL, NULL, 'Sunflower Consortium Limited.', NULL, NULL, 'Disqualified', '2021-09-05 07:51:29', '2022-06-02 10:03:14');
INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(889, 'Md Kamruzzaman', 'kamruzzamaaan@gmail.com', '01782811313', NULL, NULL, NULL, NULL, 'Ecommerce  Website Proposal and demo send', 'Disqualified', '2021-09-05 08:01:06', '2022-06-21 10:14:16'),
(890, 'Ahmed Zahan Rumy', 'rumyaub@gmail.com', '01712931472', NULL, NULL, NULL, NULL, 'hi, I am running a nonprofit organization to help poor people, I am arranging several events like food for covid-19 affected families, Free Medical camping for roral poor people, Free medicine distribution, Educational instrument distribution for poor students. Food materials distribution for flood-affected people etc. I am planning to run a website covering all the event details, photos, video clips/video links with view options,s, etc. Would you help me to develop such a website? Best Regards', 'Contacted', '2021-09-05 08:23:21', '2022-05-31 10:08:31'),
(891, 'MD. Saifullah', 'saifulla17788@gmail.com', '01946625362', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-09-05 08:32:41', '2022-06-20 08:31:57'),
(892, 'Md. Samsouddin', 'samsouddinctg@gmail.com', '01820072762', NULL, NULL, 'Ma Moni Agro Food Products', NULL, 'e need to develop a Website in the name of our company \"Ma Moni Agro Food Products\" under the name of style of www.mezbaan.com We are engaged in mfg of FMCG goods. Please send us quotation for package 2 Regarding design, development and information on the site, we will discuss based on your quotation. Regards, Md. Samsouddin Managing Partner Ma Moni Agro Food Products Chittagong, Bangladesh', 'Disqualified', '2021-09-05 08:39:51', '2022-06-22 08:43:56'),
(893, 'ashikuzzaman', 'ashikuzzaman1993@gmail.com', '+880 1728-445196', NULL, NULL, NULL, NULL, 'Need website & inventory management, a Security company. pore kaaj korbe', 'Contacted', '2021-09-05 08:42:18', '2022-06-02 09:01:34'),
(894, 'Md Dipu Khan', 'mdshahidulislamdipu@gmail.com', '01672367467', NULL, NULL, NULL, NULL, 'Business Website proposal send', 'Disqualified', '2021-09-06 03:27:45', '2022-06-22 07:58:40'),
(895, 'Mehedi Hassan', 'mahadi.hasan.fsb@gmail.com', '+880 1765-511800', 'kmbrothersapparelindustry@gmail.com', NULL, 'KM Brothers Apparel Industry', NULL, NULL, 'Contacted', '2021-09-06 04:28:16', '2022-06-21 09:52:37'),
(896, 'Farzana Zaman', 'farhanazaman805@gmail.com', '01733504805', NULL, NULL, NULL, NULL, 'The affiliate package will start from package 2.', 'Disqualified', '2021-09-06 04:47:07', '2022-06-21 09:57:27'),
(897, 'Kazi Abdullah Al Mamun', 'mamun837@gmail.com', '01920-920201', NULL, NULL, 'Trendy Group no response', NULL, NULL, 'Disqualified', '2021-09-06 08:41:01', '2022-05-31 07:14:41'),
(898, 'Mustafizur Rahman', 'rpn.bd.org@gmail.com', '01920757014', NULL, NULL, 'Reaching People In Need', 'Road#3 house # 2,  Nikunjo -2', NULL, 'Converted to Customer', '2021-09-06 08:56:44', '2022-03-06 04:51:54'),
(899, 'Md Hasibuzzaman', 'raivy.pmaspire@gmail.com', '01618-2800-80', NULL, NULL, NULL, NULL, 'SEO Pakage-4 proposal send', 'lead', '2021-09-07 05:06:43', '2022-06-19 08:37:10'),
(900, 'MR. Arif', 'engr.arif2348@gmail.com', '0 1684-206292', NULL, NULL, 'Capella Marine Services', NULL, NULL, 'Converted to Customer', '2021-09-07 05:28:48', '2021-10-02 07:28:09'),
(901, 'Asif Mahmud', 'mdshakawath66@gmail.com', '0182-7638-853', NULL, NULL, NULL, NULL, 'digital advertising proposal send', 'Disqualified', '2021-09-07 10:04:44', '2022-06-21 09:52:49'),
(902, 'Liton Sir', NULL, '01934840276', NULL, NULL, NULL, NULL, 'Clipping path koraba', 'lead', '2021-09-07 11:12:43', '2022-06-19 08:37:10'),
(903, 'Md. Golam Kibir Roni', 'erpmyone@gmail.com', '01966607271', NULL, NULL, 'Minister Hi-Tech Park Ltd .', 'House: 47, Road: 35/A Gulshan-2, Dhaka-1212', NULL, 'Disqualified', '2021-09-08 10:11:17', '2022-05-31 05:00:44'),
(904, 'Md Sanaullah', 'sanas00747@gmail.com', '01917116354', NULL, '01558549609', NULL, NULL, 'link: gjus.org,   gjussnews.com Business Website proposal send laraval koraba', 'lead', '2021-09-11 09:19:24', '2022-06-19 08:37:10'),
(905, 'Rubaiyat sir', 'rubaiyat69@hotmail.com', '01611364054', NULL, NULL, NULL, NULL, 'Real-estate ar moto koraba Ecommerce Website Package-4', 'lead', '2021-09-11 09:25:15', '2022-06-19 08:37:10'),
(906, 'Rajat', 'rajat.shaha1@gmail.com', '01631052866', NULL, NULL, NULL, NULL, 'business website proposal send', 'Qualified', '2021-09-11 15:25:42', '2022-05-23 03:57:43'),
(907, 'Monir', 'monirmba@hotmail.com', '01934434392', NULL, NULL, NULL, NULL, 'Business Website proposal send', 'Contacted', '2021-09-13 06:50:20', '2022-06-22 07:49:35'),
(908, 'Mohammad Samsuddin Rana', 'srana@meridianfinancebd.com', '01730330271', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2021-09-13 06:57:44', '2022-06-22 04:29:48'),
(909, 'un known', 'tipu71@gmail.com', '01730711632', 'mamun@netbanglaltd.com', NULL, NULL, NULL, 'Ecommerce Website laraval send bdstall.com moto karaba', 'Contacted', '2021-09-13 10:30:46', '2022-06-20 08:31:18'),
(910, 'Md. Asaduzzaman', 'asad.it@hameemdenim.com', '01313712188', NULL, NULL, 'Ha-Meem Group', '387 TML Building (5th Floor), Tejgaon I/A,', NULL, 'Disqualified', '2021-09-14 07:58:19', '2022-06-14 09:20:35'),
(911, 'Nurullah Shohag', 'nurullahshohag@gmail.com', '01677-417170', NULL, NULL, 'architecture firm', NULL, NULL, 'Disqualified', '2021-09-15 03:57:34', '2022-06-22 03:53:04'),
(912, 'Mehdi Hassan', 'starfishtravelsbd@gmail.com', '01915684460', NULL, NULL, 'Sunbeam Associates.', 'H- 195 , R-01 Mohakhali DOHS', NULL, 'Converted to Customer', '2021-09-20 03:09:22', '2021-09-23 04:08:27'),
(913, 'Emran sir', 'emran4391@gmail.com', '01712595534', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal send', 'Disqualified', '2021-09-20 03:16:21', '2022-06-22 03:59:11'),
(914, 'Rtr Tonmoy Rashed', NULL, '019-46957-896', NULL, NULL, NULL, NULL, 'pora koraba maja maja phone debo', 'Disqualified', '2021-09-20 03:37:45', '2022-06-21 11:24:48'),
(915, 'unknown', NULL, '01323274527', NULL, NULL, NULL, NULL, 'phon bondo', 'Disqualified', '2021-09-20 03:40:11', '2022-06-20 08:23:26'),
(916, 'Alamin Rupom', 'alaminrupom5@gmail.com', '01673270199', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Disqualified', '2021-09-20 09:20:41', '2022-06-01 10:36:56'),
(917, 'Rayhan sir', 'medicopicture2020@gmail.com', '01785444777', NULL, NULL, NULL, NULL, 'Business Website Proposal Send', 'lead', '2021-09-20 12:35:49', '2022-06-19 08:37:10'),
(918, 'Wasimul Bari', 'wasimul.bari@yahoo.co.uk', '01746686172', NULL, NULL, 'Day 2 Day Bazar', NULL, 'E-commerce korben. \r\n10k taka paid .Due 9k .', 'Converted to Customer', '2021-09-21 09:14:32', '2021-09-21 09:14:32'),
(919, 'Humayun Kabir', 'takowamarketing2020@gmail.com', '01712742850', NULL, NULL, 'Takowa Marketing', 'motijheel', 'E-commerce site\r\n8k paid. 8k due', 'Converted to Customer', '2021-09-21 09:16:15', '2021-09-21 09:16:15'),
(920, 'Niteo sir', 'idealautoone@yahoo.com', '01919344101', NULL, NULL, NULL, '191 bir  Uttan Mir Shawkat Sarak', 'Ecommerce Website Proposal Send(car Equipment sale)', 'lead', '2021-09-22 03:35:25', '2022-06-19 08:37:10'),
(921, 'MD . Shaheen', 'kkc.dhaka@gmail.com', '+8801977697984', NULL, NULL, 'M.M Group Of Companies .', NULL, NULL, 'Contacted', '2021-09-22 07:42:03', '2022-06-22 08:39:36'),
(922, 'Nabil Khan Sujoy', 'nabil@basumati.com', '01991196701', NULL, NULL, 'Basumati Energy Ltd', NULL, '৩১-০৫-২০২২- নাম্বার বন্ধ আছে।\r\n05.06.2022 Number Off thake sob somoy', 'Disqualified', '2021-09-25 08:57:43', '2022-06-05 04:34:11'),
(923, 'Rahim Razzak', NULL, '01712949271', NULL, NULL, NULL, NULL, 'style pro side niba', 'Disqualified', '2021-09-26 03:23:14', '2022-06-20 10:33:30'),
(924, 'Mushfiqur Rahman', 'mushfiq@espritbd.net', '+8801711889541', NULL, NULL, 'Esprit Apparels ltd', 'Road-03, House-258 (2nd floor), Baridhara DOHS.', NULL, 'Quote Sent', '2021-09-26 04:30:41', '2021-11-20 08:41:19'),
(925, 'Holiday Ecommerce', 'holiday7532@gmail.com', '01797581423', NULL, '+880 1715-432856', NULL, NULL, 'Ecommerce laravel', 'Disqualified', '2021-09-26 04:31:11', '2022-06-14 09:24:43'),
(926, 'unknown', NULL, '01711110145', NULL, NULL, NULL, NULL, '4 and 5 diner motha janaba', 'Disqualified', '2021-09-26 06:18:22', '2022-06-20 03:47:16'),
(927, 'Bellal Sir', 'shahahmedgroup2020@gmail.com', '01612178150', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposa and Demo send(Garments Product) pakage-1', 'lead', '2021-09-27 02:49:21', '2022-06-19 08:37:10'),
(928, 'Fakrul Islam', 'fsblbd@gmail.com', '01938802423', NULL, NULL, 'Fareast Stocks&Bonds Limited)', NULL, 'business Website proposal send(Fareast Stocks&Bonds Limited)', 'Disqualified', '2021-09-29 10:34:52', '2022-06-21 04:30:44'),
(929, 'Khandaker Golam Mostafa', 'ihsinspection@gmail.com', '01713-016682', NULL, NULL, 'IHS Inspection Services (BD) Limited', 'Chand Mansion (4th Floor)', 'domain hosting for 3 year . Total 19k . \r\n10 k paid. 9 k due.', 'Converted to Customer', '2021-09-29 10:48:27', '2021-09-29 10:48:27'),
(930, 'MD Alamin', 'theleadstylebd@gmail.com', '01300801389', NULL, NULL, 'The Lead Style Ltd.', 'Sanir Akhra, Jatrabari, Dhaka 1236', NULL, 'Converted to Customer', '2021-10-02 07:24:23', '2021-10-02 07:24:23'),
(931, 'MD. Alamgir', 'nexus.corporation2021@gmail.com', '017270800298', NULL, NULL, 'Nexus Corporation', '14, Kakril, Dhaka - 1214', NULL, 'Converted to Customer', '2021-10-04 04:45:01', '2021-10-04 10:38:02'),
(932, 'Milton Sir', 'mxcomet@gmail.com', '01614766404', NULL, NULL, NULL, NULL, 'Ecommerce Website pakage-1 page-12 Quotation send', 'Disqualified', '2021-10-04 11:25:42', '2022-06-22 08:29:31'),
(933, 'Mr shah Alom Sorkar', 'nahiiid.18@gmail.com', '01715-282344', NULL, NULL, 'ROTAL METAL AND MINERALS TRADE', 'c/104, Roshulbagh, Siddhirganj, Narayanganj', NULL, 'Disqualified', '2021-10-05 11:53:49', '2022-06-21 08:52:21'),
(934, 'Sharif Sir', 'sharif.chandradwip@gmail.com', '01558015449', NULL, NULL, NULL, NULL, 'Business website proposal Send', 'lead', '2021-10-06 03:38:37', '2022-06-19 08:37:10'),
(935, 'Saddam Sir', '2bcc2723@gmail.com', '01992808921', NULL, NULL, NULL, NULL, 'Business Website Proposal Send, coaching center website,after eid janabe', 'Proposal Sent', '2021-10-06 04:22:45', '2022-06-02 03:43:11'),
(936, 'Md. Shaqul Hasan', 'shaqul_hasan@mj-group.com', '01709677290', NULL, NULL, 'M&J Group', '17 RCC Tower | 8th to 13th Floor  Mohakhali C/A|Dhaka-1212', NULL, 'lead', '2021-10-06 05:17:51', '2022-03-03 09:26:56'),
(937, 'Mr. Borhan', 'ibhasan.rainforest@gmail.com', '01517094387', NULL, NULL, NULL, NULL, 'I want make an e-commerce site which will be good for google SEO , fast loading, and tight in security though i have a low budget as i have very little capital for business, can you please help me in this regard.\r\nYour Phone	01517094387\r\nLooking for	Search Engine Optimization (SEO) And Ecommerce Website \r\n https://www.gadstyle.com/.', 'Disqualified', '2021-10-06 05:20:45', '2022-06-14 09:25:25'),
(938, 'Futuristic', 'futuristicltd20@gmail.com', '01713-225499', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-10-06 05:23:33', '2021-10-23 03:49:01'),
(939, 'Md Lutfur Rahman', 'whitediamondhotel2020@gmail.com', '+966569861265', NULL, NULL, NULL, NULL, 'Website Design & Development for Hotel', 'Converted to Customer', '2021-10-06 09:11:49', '2021-10-06 09:12:19'),
(940, 'Sayed Ishak Miah', 'residency2turkey@gmail.com', '+90542-16-60446', NULL, NULL, NULL, NULL, 'Business Website pakage-2,SEO Pakage-1', 'Disqualified', '2021-10-07 08:04:03', '2022-06-05 08:42:43'),
(941, 'MD . Habibur Rahman', 'habib3030@gmail.com', '01733804924', 'washingtondhaka@gmail.com', NULL, NULL, '56 Gulsan avenue Dhaka', NULL, 'Disqualified', '2021-10-07 10:36:42', '2022-06-14 09:20:48'),
(942, 'Mizan Sir', 'mizan.ck30@gmail.com', '01922110353', NULL, NULL, 'Garments', NULL, 'Business Website Design & Development and proposal send', 'Contacted', '2021-10-07 11:30:39', '2022-06-22 11:41:19'),
(943, 'Abir Sir', 'abeerarjoo7@gmail.com', '01687417167', NULL, NULL, NULL, NULL, 'Ecommerce Website And Digital Advertising Proposal send', 'Disqualified', '2021-10-09 02:34:13', '2022-06-15 08:32:56'),
(944, 'un known', NULL, '01973043784', NULL, NULL, NULL, NULL, 'Business Website Pakage-1 proposal debo', 'Disqualified', '2021-10-10 12:00:28', '2022-06-20 03:44:00'),
(945, 'un known', NULL, '+8809696035739', NULL, NULL, NULL, NULL, 'Problem Bosta hoba', 'Disqualified', '2021-10-10 12:02:29', '2022-06-20 03:03:27'),
(946, 'Taifur Rahaman Bayazid', 'taifurrahamanb@gmail.com', '01735870045', NULL, NULL, 'Ammajan', 'Haji Awlia Tower, Sign Board , Narayanganj', 'Business software and Website', 'Converted to Customer', '2021-10-11 04:53:54', '2021-10-19 07:16:24'),
(947, 'MD Alamin', 'anika755837@gmail.com', '01716-755837', NULL, NULL, 'Ponnoferi', 'Siberbazar, Jalalabad, Sylhet .', 'Android Apps Development', 'Disqualified', '2021-10-11 05:37:01', '2022-06-21 08:50:58'),
(948, 'Ishtiaque khan', 'ishtiaquejamilkhan@gmail.com', '01753397297', NULL, NULL, 'Khan Automotive Ltd.', '37 B.C.C Road, Wari, Dhaka 1203, Dhaka, South, 1203 Bangladesh', 'Informative website ..Package 2', 'Converted to Customer', '2021-10-11 06:02:44', '2021-10-11 06:02:44'),
(949, 'Md jewel Sir', 'rana@saimonoverseasltd.com', '01889719686', NULL, NULL, NULL, NULL, 'Business Website Proposal Send', 'lead', '2021-10-11 06:38:09', '2022-06-19 08:37:10'),
(950, 'Anima', 'Mahbubaalam204@gmail.com', '01746666766', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-10-11 07:14:37', '2022-03-03 09:26:56'),
(951, 'Homayun Kabir', 'homayunkabirgfn@gmail.com', '01756524635', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-10-11 09:31:14', '2022-06-14 09:20:57'),
(952, 'Safwan Hossain', 'topnotchassignments@gmail.com', '01315092766', NULL, '01883152990', NULL, NULL, 'Ecommerce Website Pakage-2 no response', 'Disqualified', '2021-10-12 04:17:12', '2022-06-15 08:33:16'),
(953, 'MD. Ebrahim Hossain', 'executive-it@barcltd.com', '01701675844', NULL, NULL, 'HARD GROUP', 'House-04, Road -6/B, Sector-12, Uttara Model Town, Dhaka-1230.', 'Business Website', 'Contacted', '2021-10-12 14:16:04', '2022-05-31 04:09:32'),
(954, 'Shahin Somrat', 'shahinsomrat22@gmail.com', '01674876361', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-10-13 09:28:21', '2022-06-22 11:28:43'),
(955, 'Md Saiful Islam Raisy', 'ony.digicom@gmail.com', '01313713186', NULL, NULL, NULL, NULL, 'We want to build an e-learning responsive website for a client.\r\n\r\n1.               there will be an animated intro page,\r\n\r\n2.               Registration page, [Name, age, class, e-mail, mobile, password]\r\n\r\n3.               Login page,\r\n\r\n4.               Homepage, it will contain 8 or more categories for web tutorial, [Language, math, Science, Music, Art & Craft, History, etc]\r\n\r\n5.               Each category icon/link will lead the user/visitor to that particular category page, where the user will be able to view video content.', 'Disqualified', '2021-10-13 09:45:24', '2022-06-16 06:27:07'),
(956, 'Nayeem islam Sir', 'nayeemislam406@gmail.com', '+14313387995', NULL, NULL, NULL, NULL, 'Business Website Androied and ios goole meeting korta hoba', 'Disqualified', '2021-10-14 04:36:14', '2022-06-20 08:22:53'),
(957, 'Sumon  Miah', 'sumon@mimdresses.com', '01923267049', NULL, NULL, NULL, NULL, 'Business Website Proposa Send', 'lead', '2021-10-14 11:47:08', '2022-06-19 08:37:10'),
(958, 'Sakil Ahmed Sir', NULL, '01763790188', NULL, NULL, 'Givensee Group', NULL, 'Business Website (spaning meel)after eid', 'Disqualified', '2021-10-16 04:35:00', '2022-06-01 11:40:47'),
(959, 'Mukul Rahman Sir', NULL, '01911146126', NULL, NULL, NULL, NULL, 'Business Website koraba and offica asba', 'lead', '2021-10-16 04:37:19', '2022-06-19 08:37:10'),
(960, 'Habib Sir', 'habib7000@gmail.com', '01713000213', NULL, '01713000213', NULL, NULL, 'Digital Advertising Proposal Send  Raisa-01829247233', 'lead', '2021-10-16 09:34:36', '2022-06-19 08:37:10'),
(961, 'Nazrul Sir', 'nazrul@citybrokerageltd.com', '01970708686', NULL, NULL, 'City Bank', NULL, 'service Charge', 'lead', '2021-10-16 09:47:03', '2022-06-19 08:37:10'),
(962, 'Zahid Hasan', 'universalalldelivery@gmail.com', '01832333078', NULL, NULL, NULL, NULL, 'Ecommerce', 'Converted to Customer', '2021-10-17 10:07:42', '2021-12-05 09:11:09'),
(963, 'AYAN MOTORS', 'ayan.motors2020@gmail.com', '01718236913', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-10-17 10:09:21', '2022-06-02 03:33:02'),
(964, 'Biplop Hossain', 'twaterpo@gmail.com', '01611774638', NULL, '01774521348', NULL, NULL, 'eCommerce Website package-1 domain hosting sir ar', 'Qualified', '2021-10-17 10:11:37', '2022-06-14 07:49:33'),
(965, 'Sheikh Sarfaraz', 'sarfaraz.shiplu@gmail.com', '01908028230', NULL, NULL, NULL, NULL, 'kag done', 'Disqualified', '2021-10-17 10:13:18', '2022-06-14 08:48:19'),
(966, 'Md Monirol Islam', 'oohlalainfobd@gmail.com', '01847423903', NULL, NULL, NULL, NULL, 'Digital Advertising Proposal Send', 'Disqualified', '2021-10-18 05:12:34', '2022-06-14 08:51:02'),
(967, 'Rubayat Sir', 'rubayat.pureearth@gmail.com', '01763961606', NULL, NULL, NULL, NULL, 'Business Website meeting korta hoba', 'Qualified', '2021-10-19 03:47:29', '2022-04-09 15:55:55'),
(968, 'Faruque e azam', 'Nadia.islam01234@gmail.com', '01675249533', 'faruque.net@gmail.com', NULL, NULL, NULL, 'clipping path', 'Quote Sent', '2021-10-21 09:22:23', '2021-12-18 05:30:31'),
(969, 'Ahnaf Tahmid', 'ahnaf.tahmid2@gmail.com', '01831002384', NULL, NULL, NULL, NULL, 'E-commerce/ BuySell Website', 'Contacted', '2021-10-23 05:41:04', '2022-06-05 08:46:28'),
(970, 'un known', NULL, '01822411818', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-10-23 05:57:17', '2022-06-22 04:23:29'),
(971, 'Shibaji', 'shibajidas1984@gmail.com', '81 80-3827-5511', NULL, NULL, NULL, NULL, 'I want to build a website for e- commerce business.\r\nProduct is Leather goods.', 'Disqualified', '2021-10-23 05:58:47', '2022-06-14 08:47:23'),
(972, 'Naadim', NULL, '01717004768', NULL, NULL, NULL, NULL, 'mobile app create korbe.', 'Disqualified', '2021-10-23 06:01:47', '2022-06-05 08:41:07'),
(973, 'MD.Sahidul Islam', NULL, '01646337558', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2021-10-23 07:53:15', '2022-03-03 09:20:18'),
(974, 'Shoial Rana Sir', NULL, '0258070701', NULL, NULL, NULL, NULL, 'Softwear company Pora bola lagbana', 'Contacted', '2021-10-24 03:10:15', '2022-03-03 09:20:18'),
(975, 'Dr Tanmoy Dhor', 'dr.tonmoydhar@gmail.com', '01979418959', NULL, NULL, 'Amcpaedia', NULL, NULL, 'Converted to Customer', '2021-10-24 03:59:30', '2022-05-19 09:55:36'),
(976, 'Md.Sumon Surkar', 'mss.sumon@gmail.com', '01711317015', NULL, NULL, 'ASKO Knitwears ltd', 'House-76,Road-2,Block-f,Banani Cahirman Bari.Dhaka.', 'Ecommerce Website And Digital Marketing Proposal send', 'Contacted', '2021-10-24 04:01:23', '2022-03-03 09:20:18'),
(977, 'Unknown', NULL, '01741664024', NULL, NULL, NULL, NULL, 'Logo design korabe', 'Disqualified', '2021-10-24 06:43:30', '2022-06-04 05:34:25'),
(978, 'MD Basir Alam', 'ad.aghitech@gmail.com', '01811443718', 'bashir3bb@gmail.com', NULL, 'AG Hi-Tech Limited', 'Ahsan Tower(2nd Floor) ,76 Mohakhali, Wireless Gate, Dhaka 1213, Bangladesh.', 'Website redesign korabe', 'Disqualified', '2021-10-24 06:44:43', '2022-06-15 11:33:38'),
(979, 'Kawsar hossain anik', 'riyancorp@gmail.com', '+8801685390980', NULL, NULL, NULL, NULL, 'Textile website,after eid', 'Contacted', '2021-10-24 09:06:19', '2022-06-02 09:56:28'),
(980, 'A.K.M Arshad', 'aktaruzzaman.topon@yahoo.com', '+8801713669845', 'koushik.ahmed4258@gmail.com', '01714092203', 'Authentic Power Service .', 'H# 425 , Lane # 30 , New Dohs , Mohakhali Dhaka - 1206 .', '26 taric meeting', 'Converted to Customer', '2021-10-24 09:07:45', '2021-11-06 04:21:30'),
(981, 'Redwan Chowdhury', 'greenbelt.bd@gmail.com', '01810137002', NULL, NULL, NULL, NULL, 'SEO and Website', 'Disqualified', '2021-10-24 09:09:23', '2022-06-20 10:33:13'),
(982, 'Pritom', 'consultantpritom@gmail.com', '01717183287', NULL, NULL, NULL, NULL, 'web development\r\nmedical related', 'Disqualified', '2021-10-24 10:56:08', '2022-06-15 11:10:32'),
(983, 'Suhag', 'ahmed536279suhag@gmail.com', '01713536279', NULL, NULL, NULL, NULL, 'muktijoddha kallan and punorbashon songstha\r\nWebsite design informative', 'Disqualified', '2021-10-25 09:06:42', '2022-06-01 10:29:10'),
(984, 'Jisan Sir', 'cm.jisan@outlook.com', '01715502483', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal send', 'Contacted', '2021-10-25 10:30:51', '2022-03-03 09:20:18'),
(985, 'imrul', NULL, '01719474220', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2021-10-27 10:46:23', '2022-03-03 09:20:18'),
(986, 'Hakim Sir', NULL, '01787089641', NULL, NULL, NULL, NULL, '৩১-০৫-২০২২- নাম্বার বন্ধ আছে।\r\n05.06.2022 Number Off', 'Disqualified', '2021-10-27 10:59:59', '2022-06-05 04:32:53'),
(987, 'Saiful', 'engr.saifuleee06@gmail.com', '+8801766664330', NULL, NULL, NULL, NULL, 'E-commerce website\r\n\r\nMulti vendor laravel and wow commerce', 'Disqualified', '2021-10-28 07:52:14', '2022-05-31 03:29:09'),
(988, 'Jewel Rana sir', 'shakiahammed64@gmail.com', '01517829110', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2021-10-29 03:32:00', '2022-03-03 09:20:17'),
(989, 'Tonmoy sir', 'ecotechorganicgardenltd@gmail.com', '01961122428', NULL, NULL, 'Eco Tech Organic', NULL, 'Business Website Proposal Send', 'Contacted', '2021-10-30 05:55:17', '2022-03-03 09:20:17'),
(990, 'Mehedi', 'Mehedi360bd@gmail.com', '+8801759546431', NULL, '+8801875956323', 'https://selltech.com.bd/', NULL, NULL, 'lead', '2021-10-30 07:47:43', '2022-04-20 08:06:55'),
(991, 'Noman Sir', 'rashed.noman05@gmail.com', '01828708990', NULL, NULL, NULL, NULL, 'Business Website Proposal Send', 'Contacted', '2021-10-31 05:47:11', '2022-03-03 09:20:17'),
(992, 'Mohammad Hossain Milon', 'aayanglobaltrading@gmail.com', '01741033988', NULL, NULL, 'Aayan Global Trading', 'Motijheel', 'Business site', 'Proposal Sent', '2021-10-31 06:11:13', '2022-06-01 06:55:18'),
(993, 'Yamin Ahmad Sir', 'nishaoverseas91@gmail.com', '01971535242', 'nishaoverseas251@yahoo.com', NULL, NULL, NULL, 'Business Website Proposal Sennd\r\n05.06.2022 onno protisthan theke niyese .er por onno kono service proyio jon hole amader kas theke nibe', 'Contacted', '2021-11-02 04:03:37', '2022-06-05 04:31:45'),
(994, 'Hamidul Islam', 'charupath01@gmail.com', '01711969580', NULL, NULL, 'charupath', NULL, NULL, 'Proposal Sent', '2021-11-02 04:36:25', '2021-11-02 04:36:25'),
(995, 'Shaheen Sir', 'kkc.dhaka@gmail.com', '01977697984', NULL, NULL, NULL, 'Road#27,House#358,Mohakhili DOHS Ground Floor', 'Logo & Pad Visiting Card brochure 4 page', 'Contacted', '2021-11-04 08:14:57', '2022-03-03 09:20:17'),
(996, 'Masud Rana Sir', 'palash.app@gmail.com', '01712413293', NULL, NULL, 'Apptex International Garments Accessories', '135/1 Arambagh Dhaka-1000', 'Business Website Proposal send', 'Contacted', '2021-11-06 05:13:23', '2022-03-03 09:20:17'),
(997, 'Unknown', NULL, '01726377223', NULL, NULL, NULL, NULL, 'Freelancing er kaj niye জানাবে\r\n৩০-০৫-২২ এখনো কোন কাজ পাইনি, পাইলে আমাদেরকে জানাবেন।', 'Disqualified', '2021-11-06 06:30:08', '2022-06-01 02:38:35'),
(998, 'Thamina Madam', NULL, '01923116698', NULL, NULL, NULL, NULL, 'Business Website Pakage 1', 'Contacted', '2021-11-08 07:18:51', '2022-03-03 09:20:17'),
(999, 'jillur rahman', NULL, '01777734148', NULL, NULL, NULL, NULL, 'This is not a Lead ...hardware er kaj kore uni ..ejonne call disilo.', 'Disqualified', '2021-11-08 12:43:57', '2022-06-01 03:42:25'),
(1000, 'Unknown', NULL, '01892546727', NULL, NULL, NULL, NULL, 'tar kache proposal ache...se office asbe..Business website banabe', 'Disqualified', '2021-11-08 12:44:19', '2022-06-04 05:35:19'),
(1001, 'Unknown', NULL, '01303105538', NULL, NULL, NULL, NULL, 'Sayem', 'Disqualified', '2021-11-08 12:44:36', '2022-06-04 05:33:02'),
(1002, 'Unknown', NULL, '01751634467', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-08 12:45:14', '2022-06-04 05:32:52'),
(1003, 'Unknown', NULL, '01681467141', NULL, NULL, NULL, NULL, 'Food Panda er  moto site lagbe\r\n05.06.2022-Call receive korsena', 'Contacted', '2021-11-08 12:45:46', '2022-06-05 05:00:23'),
(1004, 'Sohan Sir', 'jahedulsohan9@gmail.com', '01840410404.....', NULL, NULL, NULL, NULL, 'Business Website Proposal Send', 'Contacted', '2021-11-10 04:53:23', '2022-03-03 09:20:17'),
(1005, 'Habib Sir', 'www.hr.rahman@gmail.com', '01862910340', NULL, NULL, NULL, NULL, 'business website proposal send', 'Contacted', '2021-11-10 05:06:06', '2022-03-03 09:20:17'),
(1006, 'Salman Ahmed Chowdhury', 'salman@bongobaba.com', '01733777788', NULL, NULL, 'Dahmashi Group', 'Dahmashi Center, House# 33/A, Road# 12, Block# H, Banani .', 'busy pore kotha bolbe', 'Disqualified', '2021-11-10 10:46:09', '2022-06-15 07:41:36'),
(1007, 'Majedul Hasan Ador', 'mhador@outlook.com', '01685655696', NULL, NULL, 'https://alsihabd.com/', NULL, NULL, 'Contacted', '2021-11-10 10:59:05', '2021-11-10 10:59:05'),
(1008, 'Rakibul Islam Sir', 'rakibulislam016400@gmail.com', '01708032198', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2021-11-10 11:41:02', '2022-03-03 09:20:17'),
(1009, 'Sumon Sir', 'issumon3333@gmail.com', '01635770360', NULL, NULL, 'Papa Group', 'Manpower Business', 'Business Website Prop[osal Send', 'Contacted', '2021-11-10 11:45:36', '2022-03-03 09:20:17'),
(1010, 'Jubayer', NULL, '01951858434', NULL, NULL, NULL, NULL, 'office asbe....Domain Hosting niyeche', 'Converted to Customer', '2021-11-11 05:28:24', '2021-11-13 09:32:47'),
(1011, 'Nurul Amin', 'amin.kabir@outlook.com', '01868584353', NULL, NULL, 'Lam Enterprise', NULL, 'Corporate/ Company Website\r\nOptical Fiber Business, Proposal Send via Mail', 'Converted to Customer', '2021-11-13 08:32:28', '2022-06-15 03:29:29'),
(1012, 'Khsndoker A.S.M Sayem', 'romoffice2013@gmail.com', '01915606273', NULL, NULL, NULL, NULL, 'Business Website', 'Contacted', '2021-11-14 03:46:11', '2022-03-03 09:20:17'),
(1013, 'Amir Sir', 'akbd4648@gmail.com', '01308628693', NULL, NULL, NULL, NULL, 'Business Website Proposal Send', 'Disqualified', '2021-11-14 11:01:27', '2022-06-14 08:35:36'),
(1014, 'Rajib Datta', 'rajibdattadoly@gmail.com', '01925769107', NULL, NULL, NULL, NULL, 'Ecommerce  Website Proposal Send', 'Contacted', '2021-11-15 09:48:03', '2022-03-03 09:20:17'),
(1015, 'Mr.Shah Alam Sir', 'ms.haquensons@gmail.com', '01768960143', NULL, '01911202120', 'Shahee Bazar', 'Sayed Nagar Madani Avenue(100ft)', 'Ecommerce Web,webview app,', 'Contacted', '2021-11-16 04:40:18', '2022-03-03 09:20:17'),
(1016, 'Akter Hossain Sir', 'online-dhk@qandqbd.com', '01955508119', NULL, NULL, 'Q&Q Trading Ltd.', 'Plot-10,Main Road-3,Section-7,Pallabi,Mirpur,Dhaka.', 'Ecommerce Website meting date after eid', 'Contacted', '2021-11-16 04:43:12', '2022-05-31 10:15:25'),
(1017, 'Shajan Khan sir', NULL, '01939373310', NULL, NULL, NULL, NULL, 'Ecommerce Website our Service', 'Contacted', '2021-11-17 08:15:11', '2022-03-03 09:20:17'),
(1018, 'Anzan Kumar', 'anzan.rapl@gmail.com', '01711593831', NULL, NULL, 'Rifat Aluminum Packaging Ltd', 'Rupayan Golden Age (6th floor) 99 Gulshan Avenue, Dhaka-1212.', NULL, 'Converted to Customer', '2021-11-20 08:47:29', '2021-11-22 10:06:13'),
(1019, 'twaka marketing', 'kafi8797@gmail.com', '01917348805', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2021-11-20 13:10:32', '2022-04-10 05:59:41'),
(1020, 'Sharful Islam Sir', 'sharful.isl@gmail.com', '01755552214', NULL, NULL, 'ION  Electrical&Auto Nation Company LTD.', '77/1,Toma Tower(8th Floor)kakrail Vip Road, Ramna,Dhaka-1000', 'Business Website gsweet,Brochear design,Company Profile-per page1500,Flyer-Perpage-2000,Letterhead pad,Visiting Card,\r\nEnavelope-A4,LandScape', 'Contacted', '2021-11-21 05:08:26', '2022-03-03 09:20:17'),
(1021, 'Shariful Mawla', 'shariffcma@gmail.com', '01675783695', NULL, '01732295586', 'Aayan Tours and Travels', 'Plot-22, Main Road, Block-G, Banasree, Khilgaon, Dhaka-1219', NULL, 'Converted to Customer', '2021-11-21 07:59:52', '2021-11-22 10:06:19'),
(1022, 'Shaikh Ziaul Islam', 'shaikhziaul.islam@gmail.com', '01672724579', NULL, NULL, 'Rupsa Apparels', 'Nikunja1 Road no 8 house 6 3rd floor. Khilkhet Dhaka', NULL, 'Converted to Customer', '2021-11-21 12:11:45', '2021-11-29 09:34:52'),
(1023, 'un known', 'desertlife337@gmail.com', '01717147890', NULL, NULL, 'baitullah  holidays', NULL, 'ecommerce website proposal \r\n৩০-০৫-২২ কল রিসিভ করছেনা।\r\n05.06.2022-Call receive korsena\r\n15.06.2022-website company nam suney kete dey', 'Disqualified', '2021-11-22 04:49:38', '2022-06-15 04:47:23'),
(1024, 'Rajaul Sir', 'rajaul@cargoexpressltd.com', '01793519191', 'montasir@cargoexpressltd.com,', NULL, NULL, NULL, 'Business Website (www.cargoexpressltd.com)', 'Contacted', '2021-11-22 05:47:41', '2022-03-03 09:20:17'),
(1025, 'Hossain Ahmed', 'aliairtravels29@gmail.com', '01730055522', 'akashahmed3012@gmail.com', '01983091099', 'Ali-air Travels & Tours', '292,Inner Circular Road, Satabdi Center(5th) Floor', NULL, 'Qualified', '2021-11-22 05:51:13', '2021-11-22 05:51:13'),
(1026, 'Alam Sir', NULL, '01712962050', NULL, NULL, NULL, NULL, 'Tuhin sir websit koraba (REF:Fish Basket)number off', 'Disqualified', '2021-11-22 06:33:26', '2022-05-31 10:12:26'),
(1027, 'Evan', NULL, '01912190900', NULL, NULL, NULL, NULL, 'E commerce website laravel', 'Converted to Customer', '2021-11-22 09:12:56', '2021-11-30 09:40:20'),
(1028, 'shorif', NULL, '01925320587', NULL, NULL, NULL, NULL, 'proposal sent E commerce', 'Disqualified', '2021-11-22 09:15:04', '2022-06-05 10:19:18'),
(1029, 'MD . Mostakim', 'mostakim.iacib@gmail.com', '01303309607', NULL, NULL, 'IACIB Hospital & NGO', '2 Zinzira Hospital Road, Birulia Union, PO: Dairy Farm, Savar, Dhaka – 1341', '৩০-০৫-২২ কল রিসিভ করছেনা।', 'Disqualified', '2021-11-22 10:09:53', '2022-06-01 02:36:38'),
(1030, 'Mohammed Abu Bakar Siddique', 'siddique@ts-integration.net', '01755631811', NULL, '01958097168', 'Techno Soft Integration', 'Axis Delvista (2nd FL), House No: 7/1,  Block-A, Aurangajeb Road, Mohammadpur, Dhaka- 1207', 'website done by others', 'Disqualified', '2021-11-22 11:21:21', '2022-06-01 03:42:10'),
(1031, 'Mazedul Haque', NULL, '01710629839', NULL, NULL, NULL, NULL, 'Payment gateway nibe', 'Contacted', '2021-11-22 11:22:48', '2022-05-31 09:58:45'),
(1032, 'Abdullah muktadir', NULL, '01997822886', NULL, NULL, NULL, NULL, 'Payment গাতেওয়ায়\r\n৩০-০৫-২২ কনো  কিছু প্রয়োজন নেই। যদি কিছু প্রয়োজন হয় জানাবে।', 'Contacted', '2021-11-22 11:26:57', '2022-06-01 02:36:21'),
(1033, 'Israt', 'isratpersonal@gmail.com', '01619128837', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-22 12:17:30', '2022-06-15 06:49:16'),
(1034, 'Md.Mukter Hossain', 'info.shahanoorgroupbd@gmail.com', '01711857366', NULL, '01713111167', NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2021-11-22 13:26:20', '2022-03-03 09:20:17'),
(1035, 'Imran Hossain Sir', NULL, '01978291075', NULL, NULL, NULL, NULL, 'Ecommerce Website Pora phon debo', 'Contacted', '2021-11-22 13:50:11', '2022-03-03 09:20:17'),
(1036, 'Unknown', NULL, '01749062515', NULL, NULL, NULL, NULL, 'E কমার্স\r\n৩০-০৫-২২ কল ঢুকছে না।', 'Disqualified', '2021-11-22 14:38:40', '2022-05-31 09:55:02'),
(1039, 'Unknown', NULL, '0 1991172111', NULL, NULL, NULL, NULL, 'Ecommerce ফেসবুক\r\n৩০-০৫-২২ কল রিসিভ করছেনা', 'Disqualified', '2021-11-23 07:40:09', '2022-05-31 09:55:31'),
(1041, 'Monir', NULL, '01973427927', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-11-23 07:59:05', '2022-06-19 08:37:10'),
(1042, 'Evan', 'evanahamed8@gmail.com', '+880 1953-559884', NULL, NULL, NULL, NULL, 'Ecommerce website laravel', 'Converted to Customer', '2021-11-23 10:39:49', '2021-11-30 09:39:47'),
(1043, 'samprity aid', 'samprityaid@gmail.com', '01911123315', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2021-11-23 11:45:07', '2021-11-23 11:45:07'),
(1044, 'Ashiq Sir', 'royelvaly@gmail.com', '01738599834', NULL, NULL, NULL, NULL, 'Ecommerce Website\r\n30-05-22 বলছে দরকার নেই।', 'Disqualified', '2021-11-23 11:52:10', '2022-05-31 09:55:48'),
(1045, 'Julker Naime', NULL, '01922335500', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-23 11:55:07', '2022-06-14 07:22:19'),
(1046, 'un known', NULL, '01306543126', NULL, '01709674192', NULL, NULL, 'ecommerce website', 'Contacted', '2021-11-23 12:53:48', '2022-03-03 09:20:17'),
(1047, 'un known', NULL, '01612130277', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2021-11-24 05:13:18', '2022-03-03 09:20:17'),
(1048, 'sohanur Rahman', 'sohan.rahman855@gmail.com', '01765678927', NULL, NULL, 'Beauty Bee', 'Sirajgang sadar ,Sirajgang', NULL, 'Proposal Sent', '2021-11-24 07:33:07', '2022-06-05 03:42:46'),
(1049, 'Kamal', NULL, '01871111448', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-24 07:46:15', '2022-06-15 06:48:46'),
(1050, 'Un known', NULL, '01717373992', NULL, NULL, NULL, NULL, 'E commerce ফেসবুক\r\n৩০-০৫-২২- অন্য প্রতিষ্ঠান থেকে কাজ করাচ্ছে, এখনো শেষ হয়নি। তবে অন্য আরও কন কাজ লাগলে করাবেন।', 'Contacted', '2021-11-24 09:23:09', '2022-05-31 09:51:10'),
(1051, 'Sohanur Rahman', 'sohan.rahman855@gmail.com', '01765-678927', NULL, NULL, 'Beauty Bee', 'Sirajgang sadar ,Sirajgang', NULL, 'Disqualified', '2021-11-24 09:23:28', '2022-06-20 08:19:10'),
(1052, 'Unknown', NULL, '01714949305', NULL, NULL, NULL, NULL, 'E commerce ফেসবুক\r\n৩০-০৫-২২- ব্যবসা অল্প পরিসরে করছে,যদি বড় পরিসরে করে তবে website বানাবে।', 'Contacted', '2021-11-24 09:24:24', '2022-06-05 10:25:35'),
(1053, 'Unknown', NULL, '01768168777', NULL, NULL, NULL, NULL, 'E commerce facebook', 'lead', '2021-11-24 09:25:15', '2021-12-04 05:18:08'),
(1054, 'Shahin', 'shahin062043@gmail.cm', '01640870539', NULL, NULL, NULL, 'Narayangong', NULL, 'Proposal Sent', '2021-11-24 11:01:51', '2022-06-01 03:39:42'),
(1055, 'Aminul', NULL, '01819617576', NULL, NULL, NULL, NULL, 'Single Vendor E commerce Grocery Item', 'Proposal Sent', '2021-11-24 11:03:01', '2022-06-20 07:48:52'),
(1056, 'Md Anisuzzaman Sir', 'anistarafder@gmail.com', '01711664939', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send and demo', 'Contacted', '2021-11-24 12:28:38', '2022-03-03 09:20:17'),
(1057, 'Un known', NULL, '01701979422', NULL, NULL, NULL, NULL, 'E commerce', 'Disqualified', '2021-11-24 22:31:18', '2022-06-04 05:32:41'),
(1058, 'Unknown', NULL, '0 1708098640', NULL, NULL, NULL, NULL, '৩০-০৫-২২- কল রিসিভ করছেনা। কেটে দেয়।\r\n04.06.2022 Call bar bar kete de\r\n15.06.2022-Call kete dey', 'Disqualified', '2021-11-24 22:32:18', '2022-06-15 04:39:23'),
(1060, 'Nasir Hawlader', 'nasir555hawlader@gmail.com', '01705747514', NULL, NULL, 'NR International Trading', 'Badda ,Dhaka', NULL, 'Contacted', '2021-11-25 04:44:29', '2022-06-20 08:10:40'),
(1061, 'Unknown', NULL, '01746007007', NULL, NULL, NULL, NULL, 'E commerce\r\n৩০-০৫-২২- কল রিসিভ করছেনা\r\n04.06.2022 Onno company theke niyesen , tai ar dorkar nai ,onno service dorkar hoile knock dibe', 'Contacted', '2021-11-25 12:13:37', '2022-06-15 04:36:58'),
(1062, 'Unknown', NULL, '01303937678', NULL, NULL, NULL, NULL, 'E commerce\r\n৩০-০৫-২২- Number Busy\r\n04.06.2022 Call dukena', 'Disqualified', '2021-11-25 12:14:58', '2022-06-04 10:27:08'),
(1063, 'Sofik', NULL, '01887545072', NULL, NULL, NULL, NULL, NULL, 'lead', '2021-11-25 13:18:30', '2022-06-19 08:37:10'),
(1064, 'Sayon', NULL, '01723633339', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-25 13:19:35', '2022-06-20 07:18:16'),
(1065, 'Sajjad', NULL, '01639030552', NULL, NULL, NULL, NULL, 'E commerce partial payment', 'Contacted', '2021-11-25 15:02:55', '2022-05-30 10:16:53'),
(1066, 'Akash Sir', 'tasfiaenterprise17@gmail.com', '01722551988', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal. done by others', 'Disqualified', '2021-11-26 11:07:31', '2022-06-05 09:42:44'),
(1067, 'un known', NULL, '01717693032', NULL, NULL, NULL, NULL, 'Econnerce Website', 'Contacted', '2021-11-27 04:19:58', '2022-03-03 09:20:17'),
(1068, 'un known', NULL, '01728472275', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2021-11-27 04:20:57', '2022-03-03 09:20:17'),
(1069, 'Emran', NULL, '01857900007', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-27 05:48:52', '2022-06-20 07:25:16'),
(1070, 'Unknown', NULL, '01300109893', NULL, NULL, NULL, NULL, 'E commerce partial payment', 'Disqualified', '2021-11-27 05:50:14', '2022-06-04 05:32:10'),
(1071, 'Farhad Hossain', NULL, '01639171599', NULL, NULL, NULL, NULL, 'E commerce partial', 'Disqualified', '2021-11-27 05:51:03', '2022-05-30 10:15:33'),
(1072, 'Un known', NULL, '01971668066', NULL, NULL, NULL, NULL, 'E commerce partial', 'Disqualified', '2021-11-27 05:54:06', '2022-06-04 05:31:56'),
(1073, 'Md.Nazir', 'review-indries@gmail.com', '01811915456', NULL, NULL, NULL, 'Merul Badda ,Dhaka', 'Potential\r\noffice visit koreche', 'Contacted', '2021-11-27 07:10:04', '2022-06-20 03:50:34'),
(1074, 'un known', NULL, '017704897790', NULL, NULL, NULL, NULL, 'Ecmmerce Website prposal send korta hoba', 'Contacted', '2021-11-27 07:44:53', '2022-03-03 09:20:17'),
(1075, 'Meraj Khan', 'hk363535@gmail.com', '01580897790', NULL, NULL, NULL, NULL, 'Eccommerce WebsiteProposal send krta hoba', 'Disqualified', '2021-11-27 07:48:19', '2022-05-30 10:14:11'),
(1076, 'Emon Sir', NULL, '01533021652', NULL, NULL, NULL, NULL, 'Ecoommerec Website Larabvel demo  Debo', 'Contacted', '2021-11-27 07:51:07', '2022-03-03 09:20:17'),
(1077, 'Sazzad Hossain', NULL, '01828623295', NULL, '01639030552', NULL, NULL, NULL, 'Disqualified', '2021-11-27 07:56:04', '2022-06-20 08:07:44'),
(1078, 'Mohammad Musa', 'musamdbd@gmail.com', '01715051139', NULL, NULL, NULL, NULL, 'Number Off', 'Disqualified', '2021-11-27 08:06:36', '2022-06-20 03:47:56'),
(1079, 'Jewel', NULL, '01842118542', NULL, NULL, NULL, NULL, '22.06.2022-juwellari er ekta website lagbe .but ekhon na', 'Contacted', '2021-11-27 08:25:09', '2022-06-22 10:45:18'),
(1080, 'Md shounullah Sir', 'mdshounullah@gmail.com', '01632040016', NULL, NULL, NULL, NULL, 'Seo proposal send korbo', 'Contacted', '2021-11-27 08:51:47', '2022-03-03 09:20:17'),
(1081, 'cli first', NULL, '01735409404', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2021-11-27 10:06:44', '2022-05-31 09:58:25'),
(1082, 'Md. Mustafizur Rahman', 'b.shrimp@yahoo.com', '01785856899', NULL, NULL, NULL, NULL, '22.06.2022-Call Receive korsena', 'lead', '2021-11-27 10:13:20', '2022-06-22 10:36:48'),
(1083, 'Baizid', NULL, '01708098640', NULL, NULL, NULL, NULL, 'E commerce website', 'Disqualified', '2021-11-27 11:30:37', '2022-05-30 10:13:26'),
(1084, 'Shah neoaj', 'red.neoaj@gmail.com', '01711371118', NULL, NULL, NULL, NULL, 'E commerce website', 'Disqualified', '2021-11-27 11:31:32', '2022-05-30 10:12:22'),
(1085, 'Soyeb sir', NULL, '01915077477', NULL, NULL, NULL, NULL, 'Ecommerce Website Face Book', 'Contacted', '2021-11-27 12:50:40', '2022-03-03 09:20:17'),
(1086, 'Mr. Siam', NULL, '01843158414', NULL, NULL, NULL, NULL, 'Ecommerce Website Face Book', 'Contacted', '2021-11-27 13:08:20', '2022-06-01 08:15:53'),
(1087, 'Nurul Amin Sir', 'amin.kabir@outlook.com', '01715061711', NULL, NULL, NULL, NULL, 'Corporate/Company Website', 'Contacted', '2021-11-27 14:31:53', '2022-03-03 09:20:17'),
(1088, 'Timothy mondol', 'timothy.mondol24@gmail.com', '01913038950', NULL, NULL, NULL, NULL, 'Website design and development\r\n04.06.2022 Call Receive korsenna\r\n09.06.20222-kisudiner moddhe janabe\r\n15.06.2022-jedoroner website banate chai seta uni  mail a pathassen,\r\nseta deke quotation patate hobe.', 'Quote Sent', '2021-11-28 03:39:53', '2022-06-16 06:45:57'),
(1089, 'Md. Emarat Hossain', 'emarathossain20175@gmail.com', '01786118883', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2021-11-28 03:44:10', '2021-12-30 08:19:15'),
(1090, 'sharea sir', 'kamol01988@gmail.com', '01810077874', NULL, NULL, NULL, NULL, 'Business Website proposal send Real State cmpany', 'Contacted', '2021-11-28 03:44:30', '2022-03-03 09:20:17'),
(1091, 'Shiblee sir', 'shibleeworld@gmail.com', '01717486549', NULL, NULL, 'AL MUGHNEE LTD.', NULL, 'Ecommerce Website/BuySell Website', 'Contacted', '2021-11-28 05:44:33', '2022-03-03 09:20:17'),
(1092, 'Sibli', 'shibli.bd390@gmail.com', '01717-552863', NULL, NULL, NULL, NULL, '22.06.2022-call waiting', 'lead', '2021-11-28 09:03:31', '2022-06-22 10:35:18'),
(1093, 'un known', NULL, '01902546131', NULL, NULL, NULL, NULL, 'e-commerce demo pora janaba', 'Disqualified', '2021-11-28 09:29:12', '2022-06-14 08:35:08'),
(1094, 'Kousik', NULL, '01886130929', NULL, NULL, NULL, NULL, 'Partial payment', 'Disqualified', '2021-11-28 10:07:03', '2022-06-02 09:52:30'),
(1095, 'Tamim Sharif', 'tamimsharif49@gmail.com', '01796263501', NULL, NULL, NULL, NULL, '22.06.2022-Call Kete dey bar bar', 'Disqualified', '2021-11-28 10:38:44', '2022-06-22 10:34:23'),
(1096, 'Unknown', NULL, '01722515774', NULL, NULL, NULL, NULL, 'E commerce', 'Disqualified', '2021-11-29 08:22:43', '2022-06-04 05:31:44'),
(1098, 'Arif', NULL, '01709995427', NULL, NULL, NULL, NULL, 'E commerce website', 'Disqualified', '2021-11-29 08:23:39', '2022-05-30 09:54:01'),
(1099, 'majharul islam', NULL, '01632961845', NULL, NULL, NULL, NULL, 'E commerce', 'Disqualified', '2021-11-29 08:24:05', '2022-05-30 09:51:37'),
(1100, 'Ali Reza', 'reza@nmsil.com', '01958114103', NULL, NULL, 'Nippon & McDonald Steel Industries Ltd .', 'South Avenue Tower 5th Floor , House # 50, Road # 03 Gulsan Avenue ,Dhaka .', NULL, 'Quote Sent', '2021-11-29 09:41:59', '2022-04-12 07:29:42'),
(1101, 'Jalaluddin Ahmed', 'jalal.ahmed.badal@gmail.ccm', '01915852225', NULL, NULL, 'Selcomgroup', 'House No#25,Level#A-1,Road No#47,Gulshan-2,Dhaka-1212', 'Business Website pakage-2', 'Contacted', '2021-11-29 11:34:20', '2022-01-06 08:15:45'),
(1102, 'Sharif Sir', NULL, '01946111133', NULL, NULL, NULL, 'Banani-11,Road-13-B,House-143', 'Business Website', 'Contacted', '2021-11-29 13:09:39', '2022-05-30 09:49:42'),
(1103, 'fami', NULL, '01886-130929', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-11-29 13:26:17', '2022-06-05 09:42:34'),
(1104, 'Noman Sarker', 'itstallbd@gmail.com', '01905148650', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2021-11-29 13:27:21', '2021-12-01 07:44:35'),
(1105, 'Akash', NULL, '01686610777', NULL, NULL, NULL, NULL, 'E commerce website', 'Disqualified', '2021-11-30 08:37:58', '2022-05-30 09:47:57'),
(1106, 'Unknown', NULL, '01686020383', NULL, NULL, NULL, NULL, 'E commerce', 'Disqualified', '2021-11-30 08:38:40', '2022-05-30 08:40:23'),
(1107, 'Talha', 'support@zofaar.com', '01892603015', NULL, NULL, 'Zofaar', NULL, 'E commerce\r\n৩০-০৫-২২-website Maintenance service nibe\r\n05.06.2022- proposal pathano hoyese', 'Proposal Sent', '2021-11-30 08:39:08', '2022-06-13 08:59:15'),
(1108, 'Puman IT Coordinator', 'blackpearlitcoordinator@gmail.com', '01938898908', NULL, NULL, NULL, NULL, 'Hello, I\'m the IT Coordinator of Black Pearl Holdings Limited. Our company has 5 sister concern company. We want now a web page with design & development.\r\nLooking for	Corporate/ Company Website', 'Disqualified', '2021-11-30 10:10:18', '2022-06-14 09:24:43'),
(1109, 'Engr. MD. Farhad Hossain', 'farhad@baytechship.com', '01321173037', NULL, '01738345540', 'Bay -Tech', 'Khan Mantion , 5D (4th Floor) , 28/A/5 Toyenbee Circular Road , Motijheel , Dhaka.', NULL, 'Contacted', '2021-11-30 10:15:14', '2022-05-30 09:46:22'),
(1110, 'Raqeeb Shakir', 'raqeebnokon@gmail.com', '01678000333', NULL, NULL, 'Nokon Limited', 'House:143, Raod: 13/B, Block: E, Banani, Dhaka 1213', NULL, 'Contacted', '2021-11-30 10:20:33', '2021-11-30 10:20:33'),
(1111, 'Arpit', 'arpit@bestsourcescorp.com', '01611196894', 'arpit@avl-bd.com', NULL, 'Best Sources Corporation Ltd', 'House 106 Northern Rd, Dhaka', NULL, 'Quote Sent', '2021-12-01 05:18:44', '2022-01-24 04:49:01'),
(1112, 'Tahsin  A. Chowdhury', 'niloy.chowdhury95@gmail.com', '01764287474', 'tahsin@lightscommunication.com', '+44 7879 740842', 'Lights Communication', NULL, 'project done', 'Contacted', '2021-12-02 04:14:42', '2022-06-01 07:34:22'),
(1113, 'Aion', 'aionahmed1312@gmail.com', '01610112852', NULL, '01887870549', NULL, NULL, NULL, 'Disqualified', '2021-12-02 04:36:51', '2022-06-05 08:39:21'),
(1114, 'Radil Afridi', 'radilislam@gmail.com', '01954325423', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2021-12-02 04:45:26', '2022-05-31 09:58:09'),
(1115, 'Md. Anamul Hoque', 'anamulqc@gmail.com', '01777126624', NULL, NULL, 'Weld Inspection Technologies', '72/12, Monu Mia Market, Sanarpar college Road Rd, Dhaka-1361', 'usindt.com', 'Converted to Customer', '2021-12-02 05:08:15', '2021-12-02 06:08:43'),
(1116, 'Mr. Shohel', 'eharam.efad.10@gmail.com', '01836911401', NULL, NULL, NULL, NULL, 'Business Website', 'Disqualified', '2021-12-02 15:06:19', '2022-06-14 09:24:43'),
(1117, 'Anayat Kabir', 'mdanayatkabir@gmail.com', '01711370376', NULL, NULL, NULL, NULL, 'Ecommerce Website\r\n22.06.2022-grame chole gese , ekhon ar website korbena', 'Disqualified', '2021-12-04 07:35:28', '2022-06-22 10:32:47'),
(1118, 'Shawal', 'crowdhomesbd@gmail.com', '+393206060896', NULL, NULL, NULL, NULL, 'Informative Website\r\n22.06.2022- Wrong Number', 'Disqualified', '2021-12-04 09:03:25', '2022-06-22 10:30:24'),
(1119, 'Zini', 'zini.du@gmail.com', '01709998335', NULL, NULL, NULL, NULL, 'Website Design\r\n৩০-০৫-২২- Number Busy\r\n04.06.2022 kisudin khub busy thakben tarpor amaderke knock diben', 'Contacted', '2021-12-04 11:30:37', '2022-06-04 10:24:04'),
(1120, 'Joy', NULL, '01982650837', NULL, NULL, NULL, NULL, 'E commerce website', 'Disqualified', '2021-12-04 11:38:24', '2022-06-05 08:36:25'),
(1121, 'Rajat Shuvra Saha', 'araacorporation05@gmail.com', '01785500938', NULL, NULL, 'ARAA Corporation', 'Lalmati ,Mohammadpur', 'website design\r\n22.06.2022- amader office thekey korasse', 'Contacted', '2021-12-04 12:12:28', '2022-06-22 10:25:46'),
(1122, 'Zahid Hossain', 'Zhchunnu69@gmail', '01711027849', NULL, NULL, NULL, NULL, '৩০-০৫-২২- mobile off\r\n04.06.2022 singapur giyesen asben 2 mas por . export import er business korben. informative website koraben .', 'Contacted', '2021-12-05 04:55:17', '2022-06-04 10:21:05'),
(1123, 'Ashraf', 'Skrhajjkafela@gmail.com', '01973623396', NULL, NULL, 'toab', NULL, '22.06.2022-informative website banabe .proposal pathiyesi', 'Proposal Sent', '2021-12-06 05:39:43', '2022-06-22 10:29:25'),
(1124, 'Sakib Sir', 'gccn.sakib@gmail.com', '01722632828', NULL, NULL, NULL, NULL, 'Business Website number off', 'Disqualified', '2021-12-06 07:09:53', '2022-05-30 08:48:48'),
(1125, 'Md Mamun', 'totalbazarbd@gmail.com', '01302254543', NULL, NULL, NULL, NULL, 'Banner Design', 'Disqualified', '2021-12-06 12:51:01', '2022-05-30 08:50:17'),
(1126, 'Md Rony', 'mrrony1212@gmail.com', '01713666498', NULL, NULL, NULL, NULL, '22.06.2022-WordPress a kora ase , Laravel a korbe kal free time a call korte bolese', 'Contacted', '2021-12-07 05:30:31', '2022-06-22 08:57:24'),
(1127, 'Md Khairul', 'khokonela@gmail.com', '01711977197', NULL, NULL, 'A K Tours and Travels', NULL, '22.06.2022-kisu somoy pore call korbe.', 'Contacted', '2021-12-07 08:21:40', '2022-06-22 08:48:13'),
(1128, 'Ceo sir', NULL, '01780503555', NULL, NULL, NULL, NULL, 'Website Redesign koraba  kinto office a jata bola', 'Converted to Customer', '2021-12-09 05:58:41', '2022-06-14 07:19:31'),
(1129, 'mohammad hassan', 'mwalidhassan@gmail.com', '01729487446', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-12-12 10:18:53', '2022-06-05 08:32:27'),
(1130, 'Abdul Latif', NULL, '01779199725', NULL, NULL, NULL, NULL, '22.06.2022-jara website korediyese tarai onno service golo disse', 'Contacted', '2021-12-12 11:26:49', '2022-06-22 08:45:11'),
(1131, 'Gias Uddin', NULL, '01819688576', NULL, NULL, NULL, NULL, '22.06.2022-Call kete disse', 'lead', '2021-12-12 11:27:44', '2022-06-22 08:39:20'),
(1132, 'Imam Hossain', NULL, '01720-339293', NULL, NULL, NULL, NULL, '22.06.2022-jekhan theke website baniyese ,sekhan theke sob service nisse', 'Contacted', '2021-12-13 08:46:01', '2022-06-22 08:37:56'),
(1133, 'Dabasis sir', 'rose.dpp@googlemail.com', '01775515931', NULL, NULL, NULL, NULL, 'Business Website and apps koraba', 'Disqualified', '2021-12-13 12:57:57', '2022-06-14 08:46:15'),
(1134, 'Md.ziaul haque', 'ms.haquensons@gmail.com', '01714275735', NULL, NULL, NULL, '532/7West Bhurulia, Duet Address 2	Joydebpur,1707 Gazipur', NULL, 'Disqualified', '2021-12-14 04:14:27', '2022-06-05 08:36:07'),
(1135, 'Abul kalam  azad', 'mdtahidulislam4392@gmail.com', '01912240917', NULL, '01789810554', 'AL-AHANAF TRAVELS,', '6. 28/A, KAKRIL, DHAKA-1000. 7. DHAKA', 'Domain', 'Disqualified', '2021-12-14 04:32:45', '2022-06-14 08:45:48'),
(1136, 'Siyam Sharkar Sir', NULL, '01913185300', NULL, NULL, NULL, NULL, 'Parsial payment    Laravel demo debo', 'Contacted', '2021-12-14 04:47:07', '2022-01-06 08:13:50'),
(1137, 'Arifur Rahman', 'arhamanarif@gmail.com', '01736-990123', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2021-12-14 05:34:49', '2021-12-14 07:20:10'),
(1138, 'unknown', NULL, '01931207548', NULL, NULL, NULL, NULL, 'E commerce', 'Disqualified', '2021-12-14 06:08:59', '2022-06-02 09:51:30'),
(1139, 'Mahtab Mehedi', 'mahtabmehedi5@gmail.com', '01706921436', NULL, NULL, NULL, NULL, '04.06.2022 NO Answer\r\n15.06.2022-ecommarce web niyesilo but miyad ses .ekhon notun kore nibe.gramer bari ase , ese jugajug korbe', 'Proposal Sent', '2021-12-14 06:09:43', '2022-06-15 04:05:44'),
(1140, 'Muhammad Arif Islam', NULL, '01796061034', NULL, NULL, NULL, NULL, '৩০-০৫-২২-দেশের বাইরে থেকে  Website বানিয়ে এনেছে।অন্য কিছু প্রয়োজন হলে আমাদের জানাবে', 'Contacted', '2021-12-14 07:15:53', '2022-06-05 10:23:45'),
(1141, 'Syed Fahim', 'agroqueenbd@gmail.com', '01306-775035', NULL, NULL, NULL, NULL, '22.06.2022-Call Receive korsena', 'lead', '2021-12-14 08:54:20', '2022-06-22 08:34:05'),
(1142, 'Ahsan Habib', 'alburoojbd@gmail.com', '01711352176', NULL, NULL, 'Al Burooj', NULL, NULL, 'Converted to Customer', '2021-12-14 10:58:42', '2022-02-19 12:12:31'),
(1143, 'Nick', 'nick_lawrence21@icloud.com', '01310160421', NULL, NULL, NULL, NULL, '22.06.2022-Number Off', 'Disqualified', '2021-12-15 04:05:24', '2022-06-22 08:32:21'),
(1144, 'Mohi Uddin', 'syed.shahsports@gmail.com', '01790-739623', NULL, NULL, NULL, NULL, '22.06.2022-Interior design er upor ekta website korte chai.kisu demo dekhalam', 'Contacted', '2021-12-15 04:06:45', '2022-06-22 08:30:47');
INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1145, 'Shafin Sir', 'shafin.me@gmail.com', '01884484450', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2021-12-15 05:17:33', '2022-01-06 08:13:41'),
(1146, 'Rakib', 'princerakib346@gmail.com', '01781-347135', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2021-12-15 11:08:00', '2022-06-01 09:51:54'),
(1147, 'Moin hossain', 'eogor547@gmail.com', '01581174314', NULL, NULL, NULL, NULL, 'Facebook boosting, ecom-01837622947', 'Contacted', '2021-12-16 03:40:27', '2022-06-01 09:44:14'),
(1148, 'Urmi Madam', 'rahmanurmi781@gmail.com', '01311189635', 'polashbeacon@gmail.com', NULL, NULL, NULL, 'ecommerce Website and pos lagba and logo', 'Disqualified', '2021-12-16 11:09:49', '2022-05-30 08:47:36'),
(1149, 'Alamin', 'almuaw@gmail.com', '01644-779811', NULL, NULL, NULL, NULL, 'E commerce and mobile app number off', 'Disqualified', '2021-12-17 09:21:40', '2022-05-30 08:46:27'),
(1150, 'Rizwan Sir', 'mukitsmail@yahoo.com', '+447878644722', NULL, NULL, NULL, NULL, 'Business Website and school ar jono hoba web application Proposal Done UK(Mail and Whatsapp)', 'Contacted', '2021-12-17 11:42:06', '2022-01-06 08:13:32'),
(1151, 'MD. Motior Rahman', 'm.rahman1965@yahoo.com', '01711594379', NULL, '01957558415 rafid', 'Travel Care', '39 Noyapalton', 'Travel ticketing informative website', 'Proposal Sent', '2021-12-18 04:06:25', '2022-01-15 05:30:18'),
(1152, 'Kamol', NULL, '01763876328', NULL, NULL, NULL, NULL, '22.06.2022-Mobile off', 'lead', '2021-12-19 08:36:48', '2022-06-22 08:02:10'),
(1153, 'Lukman', 'syed.shahsports@gmail.com', '01615550014', NULL, NULL, NULL, NULL, '21.06.2022-Ecommerce er website newa ase , ekhon SEO & others service chasse . sob service er proposal dite hobe.', 'Proposal Sent', '2021-12-19 08:49:26', '2022-06-22 07:44:40'),
(1154, 'Ahnaf Adib Arko', 'ahnaf.adib072@gmail.com', '01646984125', 'ankhitara2021@gmail.com', NULL, 'Ankhi Tara Nursing Institute', 'Chuadanga Sadar Hospital Road, Chuadanga', NULL, 'Converted to Customer', '2021-12-19 10:11:02', '2022-01-04 05:34:07'),
(1155, 'No Name', NULL, '01715313150', NULL, NULL, NULL, NULL, 'Buying House', 'Disqualified', '2021-12-20 07:50:20', '2022-06-14 07:20:40'),
(1156, 'Emon', 'Talktomeinkorean@gmail.com', '01853572852', NULL, NULL, NULL, NULL, '22.06.2022-woocommerce ekta php website lagbe', 'Contacted', '2021-12-20 07:58:39', '2022-06-22 07:21:12'),
(1157, 'Khan Moniruzzaman', 'khan.zaman1968@gmail.com', '01711337303', NULL, NULL, NULL, NULL, '22.06.2022-Travelle agency  website banate chai . banani office ekdin jete bole.Proposal pathate hobe.', 'Proposal Sent', '2021-12-20 10:20:33', '2022-06-22 04:51:14'),
(1158, 'Sayed', NULL, '01751121112', NULL, NULL, 'Buildstone Construction', NULL, NULL, 'Disqualified', '2021-12-20 11:58:13', '2022-05-30 08:44:53'),
(1159, 'palin', NULL, '01688759713', NULL, NULL, NULL, NULL, 'e কমার্স\r\n৩০-০৫-২২ --werdpress  দিয়ে বিনিয়ে আপাতত চালাচ্ছে। ব্যবসা আরেকটু প্রসারিত হলে, laravel    দিয়ে করবে।', 'Contacted', '2021-12-21 05:19:03', '2022-06-05 10:23:25'),
(1160, 'Firoj', NULL, '01862-855500', NULL, NULL, NULL, NULL, 'E commerce website', 'Contacted', '2021-12-22 04:40:18', '2022-06-01 03:32:45'),
(1161, 'MD. Saurav', NULL, '01617111876', NULL, NULL, NULL, NULL, '22.06.2022-ekhon ektu kaj korsen free hoye amk call diben', 'Contacted', '2021-12-22 04:45:00', '2022-06-22 04:21:58'),
(1162, 'Md. Mazibar Rahman', 'engr.mazibar02@gmail.com', '01718763985', NULL, NULL, NULL, NULL, '22.06.2022-Call receive korsena', 'lead', '2021-12-22 04:47:37', '2022-06-22 04:19:48'),
(1163, 'Md. Robin', NULL, '01611-774638', NULL, NULL, NULL, NULL, '21.06.2022-Call Receive korsena', 'lead', '2021-12-22 11:02:06', '2022-06-21 10:33:18'),
(1164, 'Emon', NULL, '01408-817387', NULL, NULL, NULL, NULL, 'web design', 'Disqualified', '2021-12-22 12:17:44', '2022-05-30 08:00:11'),
(1165, 'Unknown', NULL, '01674-076920', NULL, NULL, NULL, NULL, 'Web design', 'Disqualified', '2021-12-25 11:39:38', '2022-05-30 06:40:00'),
(1166, 'Abir', NULL, '01781-125179', NULL, NULL, NULL, NULL, 'Web application', 'Contacted', '2021-12-25 12:02:25', '2022-05-30 07:58:59'),
(1167, 'Kabir', NULL, '01674076920', NULL, NULL, NULL, NULL, '৩০-০৫-২২----রং নাম্বার বলে।', 'Disqualified', '2021-12-26 04:42:43', '2022-06-04 10:10:52'),
(1168, 'Md. Nizam Uddin Rajib', 'medinet.ltd@gmail.com', '01645858927', NULL, NULL, 'medinetbd.com', NULL, '21.06.2022- Hospital er jonno website korte chai. amader client portfolio dekhbe . pathassi', 'Proposal Sent', '2021-12-26 05:48:41', '2022-06-21 10:31:34'),
(1169, 'Mr. Jalal', 'alhamdulillahltd27@gmail.com', '01748155544', NULL, '01823014814', 'Alhamdulillah Enterprise Ltd.', '1 No. Nayanagar, B.I.D.C BANDAR, NAYANAGAR Narayanganj.', NULL, 'Proposal Sent', '2021-12-26 05:53:38', '2021-12-26 05:53:38'),
(1170, 'Md. Shakhawat  Hossain', 'shrbdf@gmail.com', '01918900990', NULL, NULL, NULL, NULL, '21.06.2022-Ecommarce er website korese, SEO Ba maintenance , egulo ekhon lagbena .', 'Contacted', '2021-12-27 06:34:42', '2022-06-21 10:20:24'),
(1174, 'Asad Hossain', 'asadhossain@yahoo.com', '01726270116', NULL, NULL, NULL, NULL, 'Business Website', 'Contacted', '2021-12-29 08:38:04', '2022-01-05 09:58:11'),
(1175, 'Mr. Arefin', 'arefin@odyssey.com.bd', '01713025313', NULL, NULL, 'odyssey.com.bd', NULL, 'Dear Creative Tech Park Team,\r\n\r\nGood Day !\r\nHope this mail finds you well.\r\n1)I want to make a new website like -\r\nhttps://clippingpathservice.com,https://imageediting.com/,https://cutoutwiz.com/\r\nPlz confirm me\r\na) How much it does cost.\r\nb) How many days it requires.\r\n2) I also want to know SEO charges.\r\nSo, kindly check and give me a price quotation with your Portfolio.\r\nLooking forward for your prompt response.\r\n\r\nRgds/Arefin\r\nChief Performance Officer(CPO) & Co-Founder\r\nOdyssey\r\nDhaka, Bangladesh', 'Contacted', '2021-12-29 09:08:20', '2022-03-05 05:58:05'),
(1176, 'Mahmudul hasan', NULL, '01882150375', NULL, NULL, NULL, NULL, 'NGO', 'Contacted', '2022-01-01 05:47:52', '2022-01-01 05:54:12'),
(1177, 'Abu Sayed', NULL, '01922228242', NULL, NULL, NULL, NULL, 'Frozen Food', 'Converted to Customer', '2022-01-01 05:49:12', '2022-01-04 05:32:59'),
(1178, 'Masudur Rahman', 'mrahaman.sn92@gmail.com', '01676669081', NULL, NULL, NULL, NULL, 'Garments Accessories', 'Converted to Customer', '2022-01-01 05:50:44', '2022-02-08 10:31:09'),
(1179, 'MD. Arshed Mahmud', 'nexalimited@gmail.com', '01719088017', NULL, NULL, 'Nexa Limited', 'Paradise Lake View, Level 2 , BA-73/1 Lake Drive Road, South Badda , Dhaka .', NULL, 'Qualified', '2022-01-02 04:54:20', '2022-01-02 04:54:20'),
(1180, 'Jahangir', NULL, '01736934841', NULL, NULL, NULL, NULL, 'INfowmative Website', 'Contacted', '2022-01-03 05:01:56', '2022-05-30 07:56:39'),
(1181, 'Ceo sir', NULL, '01775405015', NULL, NULL, NULL, NULL, 'education site', 'Contacted', '2022-01-03 05:27:10', '2022-01-05 09:57:57'),
(1182, 'Fozle Rabbi', 'shadhinodesk@gmail.com', '01761788085', NULL, NULL, NULL, NULL, 'Web Application', 'Quote Sent', '2022-01-03 09:15:12', '2022-01-03 09:15:12'),
(1183, 'Syed Amanullah', 'flyzoneaman@gmail.com', '01973030281', NULL, NULL, NULL, NULL, 'Informative Website\r\n21.06.2022-ekhono website banaini but kisudin por siddhanto nibe ki doroner website banabe', 'Contacted', '2022-01-03 11:57:33', '2022-06-21 10:17:13'),
(1184, 'Kedir Farah', NULL, '+211920636971', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-01-04 08:54:07', '2022-06-01 03:31:23'),
(1185, 'Shahidul', NULL, '01676203669', NULL, NULL, NULL, NULL, '21.06.2022-WordPress a informative website bananu ase. ekhon eta upgrade korbe naki notun korekorbe seta management bose thik korbe. tarpor kaj dibe.', 'Contacted', '2022-01-04 11:42:48', '2022-06-21 10:14:07'),
(1186, 'Ariyan IT LTD .', 'ariyanitltd@gmail.com', '01866500000', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-01-05 05:53:16', '2022-03-03 09:04:44'),
(1187, 'Muhammad Bin Hasan', 'mbhasan01@gmail.com', '01600351936', NULL, NULL, 'Nuchem Bangladesh', 'House-481/2, Road-11, Block-A, Tilpapara, Khilgaon,Dhaka, Bangladesh', 'Domin Name: nuchembd.com', 'Converted to Customer', '2022-01-05 10:56:12', '2022-02-08 10:30:23'),
(1188, 'Urmi Madam', 'rahmanurmi781@gmail.com', '0131-1189635', NULL, NULL, NULL, NULL, 'Ecommerce Website  EKhn korbe na ,\r\n৩০-০৫-২২-কল রিসিভ ক\r\n04.06.2022 No Answer\r\n15.06.2022-call receive korsena', 'Disqualified', '2022-01-10 10:16:50', '2022-06-15 03:37:00'),
(1189, 'Peter', 'silkpeter2726@gmail.com', '01753807394', NULL, NULL, 'P & R Enterprise', 'A-5 (5th floor), H# 12 , Road# 2 , Sector#13 , Uttara, Dhaka .', NULL, 'Converted to Customer', '2022-01-11 07:47:21', '2022-02-08 10:29:06'),
(1190, 'Rabbi', 'rabbi@etcblglobal.com', '01779009900', NULL, NULL, 'ETCBL GLOBAL', '12/28, Sir Syed Road, Mohammadpur, Dhaka-1207, Bangladesh', 'after eid korabe', 'Contacted', '2022-01-11 10:29:29', '2022-05-30 07:54:44'),
(1191, 'Kamrul Sir', NULL, '01963761149', NULL, NULL, NULL, NULL, 'Business Website no response', 'Contacted', '2022-01-11 10:31:40', '2022-03-03 09:20:17'),
(1192, 'unknown', NULL, '+60149915108', NULL, NULL, NULL, NULL, 'Business Website Proposal Send Whats App', 'Contacted', '2022-01-11 10:35:17', '2022-01-11 10:35:25'),
(1193, 'Rahman', 'rahman.smm@gmail.com', '01894221464', NULL, NULL, NULL, NULL, 'Business Website pora koraba Dental', 'Contacted', '2022-01-11 11:20:38', '2022-03-03 09:20:17'),
(1194, 'Md Sabuj Hossain', 'sabujhossain73@gmail.com', '01767578373', NULL, NULL, NULL, NULL, 'sample: kedsolution.com\r\n business website informative. website দনে\r\n৩০-০৫-২২- সময় ছিল না। তাই আমাদেরকে দিয়ে করাতে চেয়েছিল।এখন উনি নিজেই করেছেন। তবে  SEO আমাদের দিয়ে করাতে পারেন।04.06.2022 somoy passena', 'Contacted', '2022-01-12 09:27:58', '2022-06-04 10:08:30'),
(1195, 'Ozair Alam', 'pink393bd@gmail.com', '01725642516', NULL, NULL, NULL, NULL, 'https://leensy.com/ will designed a new website', 'Contacted', '2022-01-12 12:25:58', '2022-03-05 05:50:34'),
(1196, 'Md Saiful Islam Sakib', 'crowdhomesbd@gmail.com', '01811123035', NULL, NULL, 'Crowd Homes', 'House No-08/4thFloor,Road-12,DIT Project,Merul Badda,Dhaka-1212', 'Business Website', 'Quote Sent', '2022-01-13 04:24:38', '2022-03-22 04:56:48'),
(1197, 'Mohammad Bari', 'info@merittutors.co.uk', '+44 7427 820830', NULL, NULL, 'Merit Tutors', '54 Upton Lane London E7 9LN', 'Tutor website', 'Contacted', '2022-01-13 13:10:36', '2022-06-01 09:49:04'),
(1198, 'Rubel Ahmed', NULL, '01756301430', NULL, NULL, NULL, NULL, 'course corba', 'Contacted', '2022-01-15 04:28:46', '2022-03-03 09:20:17'),
(1199, 'Monir H . Sikder', 'lifelineinternational2009@gmail.com', '01713038667', NULL, '01840167402', 'Life Line International', 'Suite# 8/7 (8th Floor) Gulistan Shopping Complex , Dhaka .', NULL, 'Disqualified', '2022-01-16 07:29:39', '2022-06-14 09:21:08'),
(1200, 'Md Ferdous Amin', 'ferdous@falconfitbd.com', '01753156156', NULL, NULL, 'falconfit', 'Kaderabad Housing Society,  Mohammdpur, Block C, Road No 1  House No 14 1207 Dhaka.', NULL, 'Converted to Customer', '2022-01-16 11:44:47', '2022-04-16 03:25:23'),
(1201, 'Nasir Uddin', 'uddinmdnasir570@gmail.com', '01308655311', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send kalka kotha bolta hoba', 'Proposal Sent', '2022-01-16 15:22:09', '2022-01-16 15:25:58'),
(1202, 'Mashhurul Hoque Apurbo', 'mha96sky@gmail.com', '01710232215', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal send korta hoba', 'Quote Sent', '2022-01-18 05:13:07', '2022-01-18 09:54:44'),
(1203, 'Sujon Sorker', 'pharmachord.bd@gmail.com', '01713887425', NULL, NULL, 'Pharmachord Corporation', 'House No: 82/2/A, Indira Road, Dhaka-1215, Bangladesh', 'p2', 'Converted to Customer', '2022-01-20 10:13:40', '2022-02-08 10:30:03'),
(1204, 'Shahriyar Kabir', 'simpexco@outlook.com', '01720962962', 'susmitanote@outlook.com', '01684305740', 'Simpexco Limited', 'Sector#11 Road #02  House #05 ,Uttara ,Dhaka', NULL, 'Converted to Customer', '2022-01-22 06:21:37', '2022-01-26 05:33:05'),
(1205, 'Mr.Arafat Bin Razzak', NULL, '+447990105041', NULL, NULL, NULL, NULL, 'web degine korta chaie Whats app uk', 'Contacted', '2022-01-22 10:29:12', '2022-03-03 09:20:17'),
(1206, 'MD. Akkas Ali Molla', 'ali.molla@bengalglass.com', '01553664502', NULL, NULL, 'The Bengal Glass Works Limited', 'Novo Tower – 10th Floor, 270 Tejgaon Industrial Area Dhaka', NULL, 'Converted to Customer', '2022-01-25 05:06:24', '2022-02-08 10:29:49'),
(1207, 'Nazim Sir', 'nazim_dcl@yahoo.com', '01729072024', NULL, NULL, NULL, NULL, 'Business Website Pakage-1', 'Qualified', '2022-01-25 08:14:13', '2022-01-31 12:23:05'),
(1208, 'Md.Lutfur Rahaman Palash', 'coo@mirrorfml.com', '01674930500', 'ceo@mirrorfml.com', NULL, NULL, NULL, 'Web Application', 'Contacted', '2022-01-25 09:54:52', '2022-03-03 09:20:17'),
(1209, 'Monirul Islam', 'moniriuk@gmail.com', '01911466014', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal send', 'Contacted', '2022-01-26 05:17:53', '2022-01-26 05:18:05'),
(1210, 'Mohammed Chowdhury', 'mschowdhury@hotmail.com', '+1 (775) 813-9959', NULL, NULL, 'Yes To People', NULL, NULL, 'Disqualified', '2022-01-27 09:06:03', '2022-05-30 07:52:29'),
(1211, 'Md. Mizanur Rahman (RPh)', 'mr_bph@hotmail.com', '01812163394', NULL, NULL, NULL, NULL, 'Informative Website', 'Proposal Sent', '2022-01-29 11:16:00', '2022-01-29 11:16:00'),
(1212, 'MD . Shagor', 'automaticx@live.com', '01717221872', NULL, NULL, NULL, NULL, 'ERP And Website', 'Contacted', '2022-01-29 11:17:12', '2022-01-29 11:17:12'),
(1213, 'Pial Mahmud', 'pialmahmud880@gmail.com', '01988366856', NULL, NULL, NULL, NULL, 'Ecommerce', 'Converted to Customer', '2022-01-29 11:19:44', '2022-02-08 10:29:27'),
(1214, 'Md. Khairul Anam', 'anamk@ipas.org', '01912094531', NULL, NULL, 'ipas.org', NULL, NULL, 'Disqualified', '2022-01-29 11:22:47', '2022-06-14 09:24:43'),
(1215, 'Zakaria', 'Zakaria@a2ztechnologies.com.bd', '01676152621', NULL, NULL, 'a2ztechnologies.com.bd', NULL, NULL, 'Disqualified', '2022-01-29 12:20:28', '2022-06-14 09:24:43'),
(1216, 'Ziaul Haque', 'rrmtc11@gmail.com', '01719421419', NULL, NULL, NULL, NULL, 'Business Website\r\n30-05-22- আগামী মাসের ৭-৮ তারিখ অফিস এ আসবে।', 'Contacted', '2022-01-30 04:06:35', '2022-06-04 04:06:31'),
(1217, 'MH GROUP OF COMPANIES', 'imran@mhgroup.com.bd', '01755659988', NULL, NULL, NULL, 'Esprit, House: 24, Road: 130, Gulshan-1, Dhaka-1212, Bangladesh', 'https://www.mhgroup.com.bd/\r\nLooking for	Corporate/ Company Website\r\nProject Budget	30000 TK - 50000 TK', 'Quote Sent', '2022-01-30 10:39:28', '2022-03-29 11:20:09'),
(1218, 'Mr.Obayed Rahman ovi', NULL, '01953555777', NULL, NULL, NULL, NULL, 'Business Website', 'Contacted', '2022-01-31 07:09:02', '2022-01-31 12:24:20'),
(1219, 'Sagor sir', NULL, '01614397210', NULL, NULL, NULL, NULL, 'tader website asa korabana\r\n30-05-22-Number off', 'Disqualified', '2022-01-31 07:13:55', '2022-05-31 09:53:45'),
(1220, 'unknown', NULL, '01624-751957', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-01 03:51:14', '2022-03-03 09:20:17'),
(1221, 'Rasal Sir', 'info@artechbd.com', '01671-831592', NULL, NULL, NULL, NULL, 'tech bd Ecommerce Website Proposal Send', 'Proposal Sent', '2022-02-01 04:33:47', '2022-02-01 04:55:34'),
(1222, 'Al Amin Ahmed', NULL, '01713568208', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Proposal Sent', '2022-02-01 09:19:27', '2022-05-30 07:50:44'),
(1223, 'Asif Monjurul', NULL, '01750457049', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-02-02 10:35:29', '2022-03-03 09:20:17'),
(1224, 'Alamin Antor', 'maaelectronics53@gmail.com', '01711-164188', NULL, NULL, NULL, NULL, 'ecommerce Website', 'Proposal Sent', '2022-02-02 10:38:53', '2022-05-30 06:30:51'),
(1225, 'Rahain Sir', NULL, '01644299822', NULL, NULL, NULL, NULL, 'aircitybd.com(Travel Agency Website)', 'Contacted', '2022-02-02 10:48:25', '2022-02-02 13:53:15'),
(1226, 'jahidul Islam', NULL, '01864854011', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Proposal Sent', '2022-02-02 10:54:41', '2022-02-02 13:52:46'),
(1227, 'Abdur Rahman Tareq', 'tareqmezy@gmail.com', '01634-184128', NULL, NULL, NULL, NULL, 'informative ওএবসিতে\r\n৩০-০৫-২২ কল রিসিভ করছেনা', 'Disqualified', '2022-02-02 12:35:25', '2022-05-31 09:52:48'),
(1228, 'Tito sir', NULL, '01714-157130', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-02 12:48:57', '2022-03-03 09:20:17'),
(1229, 'Md Mohammad Alamgir', 'alaminhasan4444@gmail.com', '01753888088', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Proposal Sent', '2022-02-03 03:51:53', '2022-02-03 05:13:31'),
(1230, 'Shakil Sir', 'sakilaslam24@gmail.com', '01303465630', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-03 03:53:51', '2022-03-03 09:20:17'),
(1231, 'Jahid Sir', 'mlsjahid@outlook.com', '01846636303', NULL, NULL, NULL, NULL, 'Mail Id Diba Whate Apps a Proposal Send korace   Web Application Lagba Domain Hosting Asa link Diba Same Site Korta Hoba.', 'Proposal Sent', '2022-02-03 05:23:51', '2022-02-03 08:26:26'),
(1232, 'Aziz Rakib', 'azizulbahar@hotmail.com', '01717165359', NULL, NULL, 'AZN Corporation', NULL, NULL, 'Disqualified', '2022-02-03 10:30:52', '2022-06-14 09:21:19'),
(1233, 'Alif Dewan', 'alifdewan00@gmail.com', '01673000030', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2022-02-03 12:09:01', '2022-05-30 06:27:49'),
(1234, 'unknown', NULL, '01715543307', NULL, NULL, NULL, NULL, 'Sheraton tea Ecommerce Website', 'Proposal Sent', '2022-02-04 07:18:52', '2022-02-05 10:46:43'),
(1235, 'Md Foysal', NULL, '01863701373', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-04 07:22:26', '2022-02-05 12:10:00'),
(1236, 'Joydul', 'joydul.2019@gmail.com', '01994515424', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Proposal Sent', '2022-02-04 07:27:25', '2022-02-06 05:18:10'),
(1237, 'Shamim', NULL, '01704918491', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-04 07:29:04', '2022-02-05 12:34:32'),
(1238, 'Shaidur', NULL, '01622159000', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-04 07:30:49', '2022-02-05 12:35:44'),
(1239, 'Mahabub', NULL, '01944827863', NULL, NULL, NULL, NULL, 'Ecommerce Website korse korta chie', 'Contacted', '2022-02-05 04:56:21', '2022-02-05 11:49:04'),
(1240, 'Sahadat sir', NULL, '01700630200', NULL, NULL, NULL, NULL, 'Ecommerce Website Pore kotha bolbe', 'Disqualified', '2022-02-05 04:57:50', '2022-05-30 06:26:36'),
(1241, 'Alamin sir', 'Alaminantor36@gmail.com', '01711164188', NULL, '01766582867', NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2022-02-05 05:41:52', '2022-05-31 09:57:58'),
(1242, 'Arafat sir', NULL, '01776196273', NULL, NULL, NULL, NULL, 'Ecommerce Website kotha bolta hoba', 'Proposal Sent', '2022-02-05 07:13:13', '2022-02-05 10:46:54'),
(1243, 'Sultan Mahmud Pial', 'pialmahmud880@gmail.com', '01887250797', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-02-05 10:27:49', '2022-02-05 10:27:49'),
(1244, 'unknown namber', NULL, '01766582867', NULL, NULL, NULL, NULL, 'Website Phon ডরানা\r\n৩০-০৫-২২ - মোবাইল অফ', 'Disqualified', '2022-02-05 10:52:25', '2022-05-31 09:52:33'),
(1245, 'Shaha Mukarram', NULL, '01923111982', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Proposal Sent', '2022-02-06 03:24:41', '2022-02-06 08:10:50'),
(1246, 'Azizul', NULL, '01683556667', NULL, NULL, NULL, NULL, 'Ecommerce Website Whats app a proposal diease', 'Contacted', '2022-02-06 03:26:26', '2022-03-03 09:20:17'),
(1247, 'Nirmol', NULL, '01706484649', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Contacted', '2022-02-06 05:04:22', '2022-03-03 09:20:17'),
(1248, 'unknown namber', NULL, '01754938001', NULL, NULL, NULL, NULL, 'eCommerce website mail id diba proposal dita হবা\r\n৩০-০৫-২২ অন্য প্রতিষ্ঠান থেকে নিয়েছেন', 'Contacted', '2022-02-06 13:02:37', '2022-05-31 09:50:26'),
(1249, 'Nazmul Kabir', 'n.kabir007@gmail.com', '01711543493', NULL, NULL, 'Nafna Biotech Limited', '26-27 Nafna Center , Road - 1 , Block - F , Bosila Gerden City , Mohammadpur .', NULL, 'Converted to Customer', '2022-02-07 08:57:01', '2022-02-24 08:58:23'),
(1250, 'Imrose Kaiser', 'designvision1998@gmail.com', '01677117402', NULL, '01711005999', 'Design Vision Associates Ltd', NULL, NULL, 'Disqualified', '2022-02-07 08:58:23', '2022-06-14 09:24:43'),
(1251, 'khondoker MD Salim', 'rakib.modhumoti@gmail.com', '01713502402', NULL, NULL, 'prokriti Media', '121/1 east maniknagar , wori, mugda . Dhaka, Dhaka, 1203 Bangladesh', NULL, 'Converted to Customer', '2022-02-07 09:01:04', '2022-02-08 08:53:21'),
(1252, 'Saidul Hoque Bhuyian ( Polash)', 'universe.automations@gmail.com', '01870673681', NULL, '01717481923', 'Universe Automation\'s Engineering', NULL, NULL, 'Disqualified', '2022-02-07 09:06:59', '2022-06-14 09:24:43'),
(1253, 'Raju sir', 'rajuhmraju78@gmail.com', '01780210210', NULL, NULL, NULL, NULL, 'Ecommerce website proposal send', 'Proposal Sent', '2022-02-08 03:39:14', '2022-02-08 04:06:48'),
(1254, 'Abu Hasan', NULL, '01788114020', NULL, NULL, NULL, NULL, 'Ecommerce Website number off', 'Disqualified', '2022-02-08 04:09:20', '2022-05-30 04:50:44'),
(1255, 'Fatema Akter', 'akterfatema946@gmail.com', '01880832505', NULL, NULL, 'somaj Darpan', NULL, 'Freelancer diye koriye felse', 'Disqualified', '2022-02-10 07:41:47', '2022-06-01 03:33:03'),
(1256, 'Ovi Debnath', NULL, '01841311686', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-10 08:46:21', '2022-02-10 08:46:21'),
(1257, 'Rabby', 'rabbi3443@gmail.com', '01622914338', NULL, NULL, NULL, NULL, 'Bed rest e ache, office visit korbe', 'Proposal Sent', '2022-02-12 06:11:45', '2022-06-01 06:39:18'),
(1258, 'Shamir', 'abdullah@landmark.com.bd', '01622-056714', NULL, '01984510117', 'Landmark Bangladesh Ltd', NULL, NULL, 'Disqualified', '2022-02-13 06:27:51', '2022-05-30 04:31:42'),
(1259, 'Kawsar Ahmad', 'kawsershohagit@gmail.com', '01881222972', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2022-02-13 09:57:17', '2022-03-03 09:20:17'),
(1260, 'Alam khan sir', 'alam.export85@gmail.com', '01745709815', NULL, NULL, NULL, NULL, 'Business Website proposal send korta hoba', 'Contacted', '2022-02-13 10:02:40', '2022-05-30 04:30:12'),
(1261, 'new', NULL, '+96824715010', NULL, NULL, NULL, NULL, 'ecommerce Website', 'Contacted', '2022-02-13 10:16:08', '2022-03-03 09:20:17'),
(1262, 'Sajid', 'smusa538@gmail.com', '+96878058324', NULL, NULL, NULL, NULL, 'Ecommerce Website Proposal Send', 'Contacted', '2022-02-14 04:29:12', '2022-06-04 03:43:12'),
(1263, 'Parvez Babu', NULL, '01727242553', NULL, NULL, NULL, NULL, '৩০-০৫-২২ অন্য প্রতিষ্ঠান থেকে নিয়েছেন।', 'Contacted', '2022-02-15 04:28:38', '2022-05-31 09:50:18'),
(1264, 'Md Meherab Tahsin', NULL, '01318228959', NULL, NULL, NULL, NULL, '৩১-০৫-২২--আরো কিছু দিন পর করার ইচ্ছে আছে।', 'Contacted', '2022-02-15 04:38:59', '2022-06-05 10:22:48'),
(1265, 'Rajib Sarkar', 'rajibsarkar@kkrenterprise.net', '01784178424', NULL, NULL, NULL, NULL, '21.06.2022-Call Receive korsena', 'lead', '2022-02-16 04:11:10', '2022-06-21 10:09:04'),
(1266, 'Delwar hossain', 'delwarhossain933@gmail.com', '01711532247', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-16 05:32:23', '2022-06-14 09:25:58'),
(1267, 'Md.  Jakir Hossain', 'cheappride100@gmail.com', '0064223445578', NULL, NULL, NULL, NULL, '21.06.2022-Vul Number', 'Disqualified', '2022-02-16 09:25:55', '2022-06-21 10:07:38'),
(1268, 'Md Nirob', 'wtnirob@live.com', '01758311163', NULL, NULL, NULL, NULL, '21.06.2022-Call receive korsena', 'Disqualified', '2022-02-17 09:50:53', '2022-06-21 10:06:59'),
(1269, 'Md Naimuzzaman Sharif', 'sharifnews.1990@gmail.com', '01918848236', NULL, NULL, NULL, NULL, '21.06.2022-SEO korabe .package pathate hobe .ttarpor boss er sathe kotha bole janabe', 'Proposal Sent', '2022-02-19 05:06:29', '2022-06-21 10:04:52'),
(1270, 'shabir', 'shabir_imd@ambeepharma.com', '01888814804', NULL, NULL, 'AMBEE PHARMACEUTICALS LTD', NULL, NULL, 'Disqualified', '2022-02-19 05:42:40', '2022-06-14 09:24:43'),
(1271, 'Rayhan Howlader', NULL, '01746779981', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-02-19 10:33:55', '2022-03-03 09:20:17'),
(1272, 'Shurid sakid islam', 'shuridsakid0015@gmail.com', '01645203616', NULL, NULL, 'Company 3ROTNO', '74,outer circular road bara maghbazar dhaka 1217', NULL, 'Converted to Customer', '2022-02-20 06:17:16', '2022-02-24 08:58:01'),
(1273, 'Rana sir', 'zoomeventman@gmail.com', '01743430345', NULL, '01978621961', NULL, NULL, 'Erp soft wear whats app send', 'Quote Sent', '2022-02-20 15:40:28', '2022-03-29 07:43:25'),
(1274, 'Monir Raj Sir', NULL, '01717662245', NULL, NULL, NULL, NULL, 'Ecmmerce Website Site Redigine koraba', 'Contacted', '2022-02-22 03:43:17', '2022-02-22 05:02:16'),
(1275, 'Ahsan Khan Sir', 'awsanaq@gmail.com', '01306620100', NULL, NULL, NULL, NULL, 'Business Website proposal send Blog number off', 'Disqualified', '2022-02-22 03:52:45', '2022-05-30 03:15:29'),
(1276, 'Milon Sir', NULL, '01914553938', NULL, NULL, NULL, NULL, 'Website', 'Contacted', '2022-02-22 03:53:56', '2022-03-03 09:20:17'),
(1277, 'Shaharir jibon Sir', NULL, '01630639872', NULL, NULL, NULL, NULL, 'Website', 'Contacted', '2022-02-22 03:56:02', '2022-03-03 09:20:17'),
(1278, 'Gold Beauty Parlor', NULL, '01682496715', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-22 04:45:02', '2022-02-22 04:45:02'),
(1279, 'Md Tonmay', 'tonmay.tonu@gmail.com', '01704167333', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-22 07:58:44', '2022-02-22 07:58:44'),
(1280, 'Md Nirob', 'djarfin2021@gmail.com', '01758-311163', NULL, NULL, NULL, NULL, '21.06.2022-Call receive korsena', 'Disqualified', '2022-02-22 08:29:19', '2022-06-21 10:05:20'),
(1281, 'Md Srabon', 'arifanondi@gmail.com', '01799671459', NULL, NULL, NULL, NULL, '21.06.2022-Call receive korsena', 'lead', '2022-02-23 10:37:16', '2022-06-21 08:52:21'),
(1282, 'Tarek Masud', 'tmasud9@gmail.com', '01706-401667', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-02-23 10:45:33', '2022-06-14 08:24:45'),
(1283, 'Md Shubo', 'towermuzdalifa@gmai.com', '01575031497', NULL, NULL, NULL, NULL, 'News Portal\r\n21.06.2022-call receive korsena', 'Contacted', '2022-02-23 10:48:12', '2022-06-21 08:50:16'),
(1284, 'Shamim Ahmed', 'goldenmirrorint@gmail.com', '01616210534', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-23 11:25:45', '2022-06-14 08:29:58'),
(1285, 'Md Akash', 'akashahmed027@gmail.com', '01859511972', NULL, NULL, NULL, NULL, 'Game Website\r\n21.06.2022-call receive korsena', 'Disqualified', '2022-02-23 12:02:07', '2022-06-21 08:48:18'),
(1286, 'Md Zilani', 'hns.dz20@gmail.com', '01670335356', NULL, NULL, NULL, NULL, '৩০-০৫-২২ অফিস টাইম এর পরে কথা বলবে', 'Contacted', '2022-02-23 12:30:53', '2022-05-31 09:49:55'),
(1287, 'Md Faisal', 'faisalnoah@gmail.com', '01819781165', NULL, NULL, NULL, NULL, '21.06.2022-SEO korate chai , first page a ante hobe.pore janabe', 'Contacted', '2022-02-24 08:44:20', '2022-06-21 08:46:48'),
(1288, 'Naiem Islam', 'naiemislam467@gmail.com', '01936940880', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-02-24 10:06:42', '2022-06-14 04:42:03'),
(1289, 'Tamman Hossain', 'tammanhossain@gmail.com', '01793585305', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-24 10:56:07', '2022-02-24 10:56:07'),
(1290, 'Arifin Eakram', 'arifineakram81@gmail.com', '01715307840', NULL, NULL, NULL, NULL, '21.06.2022-nijera nijera baniyesen. ekhono kaj cholse', 'Contacted', '2022-02-24 11:40:47', '2022-06-21 08:41:01'),
(1291, 'Md Mridul Hossain', 'mridulhossain1990@gmail.com', '01916171498', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-26 03:30:13', '2022-02-26 03:30:13'),
(1292, 'Sohel khan', 'dolphin.glbal@yahoo.com', '01727877195', NULL, NULL, 'dolphin traning center', NULL, 'proposal for Ecommerce website\r\n10 tarik a call dete hobe', 'Disqualified', '2022-02-26 05:13:40', '2022-06-06 04:42:49'),
(1293, 'kazi Rayhan', 'kazirayhan5421@gmail.com', '01914715421', NULL, NULL, 'CEOOO and  chief Bridal shoot photographerl', 'narayangang', 'ekhn korbe na\r\n30-05-22 website এই মুহুর্তে করবেনা।', 'Disqualified', '2022-02-26 05:32:38', '2022-05-31 09:49:45'),
(1294, 'mustafizur rahman', 'muatafizur29@gmail.com', '0163793694', NULL, NULL, 'comilla school and devolapment', NULL, NULL, 'Disqualified', '2022-02-26 08:04:22', '2022-06-06 08:25:48'),
(1295, 'Zahidur Rahman', 'info.zahidurrahman@gmail.com', '01715476858', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-02-26 08:39:38', '2022-02-26 09:14:15'),
(1296, 'NAME.Mohammud ali', 'aminul2010@gmail.com', '01711004006', NULL, NULL, 'M/S MIM CCCOLLECTION', 'Gulshan 2', 'Eid er pore\r\n30-05-22 busy', 'Disqualified', '2022-02-26 10:04:20', '2022-05-31 09:57:31'),
(1297, 'Toyan Mozumdar', NULL, '01912-772400', NULL, NULL, NULL, NULL, '21.06.2022-meye phone doresilo , sondhar por phone dite hobe', 'Contacted', '2022-02-27 03:47:53', '2022-06-21 08:38:06'),
(1298, 'Tanjinul  Islam Liam', 'tanim.get@gmail.com', '01752636623', NULL, NULL, NULL, 'House # 1 , Road # 12/A, Sector# 10 , Uttara, Dhaka- 1230', NULL, 'Converted to Customer', '2022-02-27 05:48:17', '2022-04-06 03:33:21'),
(1299, 'Mirja Sharif Uddin', 'mirjasharifuddin@gmail.com', '01719019350', NULL, NULL, NULL, NULL, 'Informative Website', 'Converted to Customer', '2022-02-27 05:53:10', '2022-04-13 07:02:10'),
(1300, 'Remon khan', 'insagroup@hotmail.com', '01515208389', NULL, NULL, 'insa group', NULL, 'switched off', 'Disqualified', '2022-02-27 06:19:51', '2022-06-06 08:26:53'),
(1301, 'Shamim khan', 'nclbd7@gmail.com', '01958398010', NULL, NULL, 'photo page need website', NULL, 'gulshan 1  payment 5000 almost\r\n,', 'Disqualified', '2022-02-27 06:23:25', '2022-04-24 06:34:15'),
(1302, 'Hassan Ajij', NULL, '01742201218', NULL, NULL, NULL, NULL, 'ecommerce website proposal send.done by others', 'Contacted', '2022-02-27 07:15:22', '2022-05-31 09:49:23'),
(1303, 'Sohel Rana', 'msuhelrana66@gmail.com', '01644435595', NULL, NULL, NULL, NULL, '21.06.2022-Mobile Off', 'Disqualified', '2022-02-27 09:03:18', '2022-06-21 08:27:49'),
(1304, 'sharif', 'billah.optimistic@gmail.com', '01730376871', NULL, NULL, NULL, NULL, 'I am looking for the price of options 1 to 3. Pls. let me know. Also, pls inform me about the post sale services.\r\nYour Phone	01730376871\r\nLooking for	E-commerce/ BuySell Website\r\nProject Budget	20000 TK - 30000 TK', 'Disqualified', '2022-02-27 09:03:28', '2022-06-14 09:24:43'),
(1305, 'Omar Faruk', 'omar39947@gmail.com', '01822407616', NULL, NULL, 'Anypornna global buiness', NULL, NULL, 'Disqualified', '2022-02-27 09:57:09', '2022-06-06 08:34:17'),
(1306, 'Delower Hossian', 'tginternational2022@gmail.com', '0 1717-876784', NULL, NULL, 'TG International', NULL, NULL, 'Converted to Customer', '2022-02-27 10:27:47', '2022-03-02 12:49:07'),
(1307, 'Kashem', 'mehedi_bfh@yahoo.com', '01725952254', NULL, NULL, 'www.bdonlinenewspaper.com', NULL, '21.06.2022-website a kisu kaj koraben. 7 ta page a  ta article bosabe .', 'Contacted', '2022-02-27 11:02:32', '2022-06-21 08:26:01'),
(1308, 'Reasat Hossaion', 'reasat1976@gmail.com', '01711302337', NULL, NULL, NULL, NULL, 'after eid\r\nApps তৈরী করাতে চায়, নতুন Website Domain & Hosting  সহ।\r\n30.05.2022 proposal pathano hoyese. kisu diner moddhe janabe', 'Proposal Sent', '2022-02-27 12:18:08', '2022-06-02 08:02:05'),
(1309, 'Azizul Islam', NULL, '01683-556667', NULL, NULL, NULL, NULL, 'E-commerce এর maintenance service, চাচ্ছে পাশাপাশি school management website নিতে ইচ্ছুক। website এর সাথে android apps সাথে connect করতে চায়। খরচ জানতে চায়।', 'Contacted', '2022-02-28 04:56:28', '2022-05-30 03:20:42'),
(1310, 'Omar Faruk', 'alifdewan00@gmail.com', '01673-000030', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-28 05:08:43', '2022-06-14 08:23:09'),
(1311, 'Tonmay Sen', 'tonmoy.tanu9@gmail.com', '01888584111', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-02-28 05:25:18', '2022-02-28 07:05:25'),
(1312, 'Online Shop', 'onlineshopm.info@gmail.com', '01935660110', NULL, NULL, NULL, NULL, '21.06.2022-online business korte cheyesilo but je poriman orther proyojon ta jugar korte parsena.tai ekhon korbena.', 'Contacted', '2022-02-28 07:07:16', '2022-06-21 07:26:03'),
(1313, 'Jahid Jishan', 'jahidjishan60@gmail.com', '01776294782', NULL, NULL, NULL, NULL, '20.06.2022-nijey ekjon developer , nijer protisthan ase but laravel er kaj korena .amader sathe contract a kaj korte chai.', 'Proposal Sent', '2022-02-28 10:04:41', '2022-06-20 10:00:17'),
(1314, 'Ibne Siraz', NULL, '01919615153', NULL, NULL, NULL, NULL, '20.06.2022-Pose er demo chai , demo pathate hobe. Pathalam', 'Proposal Sent', '2022-02-28 10:07:48', '2022-06-20 06:47:26'),
(1315, 'Mahammad Abdul Awal', 'maawal1955@gmail.Com', '01842105750', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-02-28 10:13:39', '2022-06-01 03:30:56'),
(1316, 'Rashed Irfan', 'rashedjoni013@hotmail.com', '01839133665', NULL, NULL, NULL, NULL, 'Digital Marketing\r\n20.06.2022-Client nijey ekjon web developer , sobuo Digital marketing er jonno package ta dekhte cheyese. proposal pathassi.', 'Proposal Sent', '2022-02-28 11:04:57', '2022-06-20 04:03:05'),
(1317, 'Abdullah Muktadir', NULL, '01997-822886', NULL, NULL, NULL, NULL, '20.06.2022-kono website korbena tai ar jeno phone na dewa hoi ,', 'Disqualified', '2022-02-28 11:08:50', '2022-06-20 03:44:08'),
(1318, 'Tasfim Hossain Alvee', 'Tasfimhossainalvee@gmail.com', '01703390174', NULL, NULL, NULL, NULL, '20.06.2022-Informative website lagbe Basic , Package -01 dite hobe. Proposal pathalam.', 'Proposal Sent', '2022-02-28 12:14:22', '2022-06-20 03:41:16'),
(1319, 'Md Rakib', 'rakib.modhumoti@gmail.com', '01713-502402', NULL, NULL, NULL, NULL, 'Delivery Website\r\n20.06.2022-Aro somoy lagbe ekhon website banate chassena', 'Contacted', '2022-02-28 12:40:13', '2022-06-20 03:15:10'),
(1320, 'Nur Nasim', 'nurnasim5069@gmail.com', '01315405069', NULL, NULL, NULL, NULL, 'marketing website development \r\ninterest new E- ecomarce Design', 'Disqualified', '2022-03-01 03:46:37', '2022-06-01 03:10:27'),
(1321, 'Kartick Ghosh', 'infokartickghosh@gmail.com', '01995183927', NULL, NULL, NULL, NULL, 'Digital Marketing proposal send', 'Proposal Sent', '2022-03-01 04:36:40', '2022-03-01 04:52:06'),
(1322, 'Abdul Rahman', NULL, '01974074180', NULL, NULL, NULL, NULL, 'Sheraton Tea\r\n21.06.2022-mobile off', 'Disqualified', '2022-03-01 05:01:36', '2022-06-21 07:21:36'),
(1323, 'Alam', 'alam.export85@gmail.com', '01745-709815', NULL, NULL, NULL, NULL, 'Informative Website\r\n21.06.2022-sylhet ase bonna kobolito elakai , ese kotha bolbe', 'Contacted', '2022-03-01 05:32:44', '2022-06-21 07:20:05'),
(1324, 'Munna Ahmed', 'munna890089@gmail.com', '+880 1627-915752', NULL, NULL, NULL, NULL, 'E-commerce lead.\r\ncome to our office visitte  and meeting \r\nrecently', 'Disqualified', '2022-03-01 05:47:58', '2022-05-29 10:06:03'),
(1325, 'shams ador', 'adorshams1994@gmail.com', '01400030993', NULL, NULL, 'private company limited', 'niketon dhaka', NULL, 'Disqualified', '2022-03-01 08:04:22', '2022-05-29 10:03:56'),
(1326, 'Kawshik Jay', 'dropbit9@gmail.com', '01839678844', NULL, NULL, NULL, NULL, '২৯-০৫-২০২২ অন্য প্রতিষ্ঠান থেকে website কিনেছে, কিন্তু web Maintenance service আমাদের কাছ থেকে নিবেন। আজকে  রাত ৮ টায় কল করতে বলেছেন।', 'Contacted', '2022-03-02 04:33:47', '2022-05-30 03:12:44'),
(1327, 'Abdul Alim', NULL, '01841999576', NULL, NULL, NULL, NULL, '21.06.2022-jalaite hobe ecmrc er website nibe', 'Contacted', '2022-03-02 04:42:35', '2022-06-21 07:17:07'),
(1328, 'Moniruzzaman Siam', 'siam@bananimart.com', '01911969595', NULL, NULL, 'Recommend Ltd.', 'House -57 (ground floor), Road- 9, Block - F, Banani.', NULL, 'Converted to Customer', '2022-03-02 05:05:43', '2022-03-02 12:48:59'),
(1329, 'Saiful Alam Faisal', NULL, '01709-090866', NULL, NULL, NULL, NULL, '01813161652\r\nfacebook marketing boosting-crypto community', 'Disqualified', '2022-03-02 07:43:05', '2022-05-29 09:42:45'),
(1330, 'Sumon Patwary', 'mimtraders2000@gmail.com', '01712770659', NULL, NULL, 'mim traders', NULL, 'proposal E-commarce and Laravel E-commarce demo\r\nTomorrow meeing morning 11:00am', 'Disqualified', '2022-03-02 08:30:29', '2022-06-06 07:06:57'),
(1331, 'Shaown Shahriar', 'ctgcarclinic2953@gmail.com', '01823132953', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-03 03:50:30', '2022-06-14 08:32:30'),
(1332, 'Jakir All Sim', 'abcgxyz1@gmail.com', '01610683853', NULL, NULL, NULL, NULL, 'website kore felse', 'Disqualified', '2022-03-03 03:50:43', '2022-06-06 08:36:34'),
(1333, 'Faisal Saiful', NULL, '01787665832', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-03 05:04:15', '2022-05-29 09:30:45'),
(1334, 'Mohammad solayman', 'shadamonshop@gmail.com', '01721313871', NULL, NULL, 'shadamon shop', NULL, 'BIG Project*\r\n\r\nSend proposal via What\'s app', 'Proposal Sent', '2022-03-03 07:05:38', '2022-05-29 08:48:44'),
(1335, 'Mehidi Hasan', NULL, '01321600889', NULL, NULL, NULL, NULL, 'Eid er por korbe, E-commerce website\r\n২৯-০৫-২০২২-এখনো  সব কিছু গুছিয়ে উঠতে পারেনি, আর কিছু দিন সময় লাগবে।তারপর অফিস এ আসবে।', 'Contacted', '2022-03-03 09:03:56', '2022-05-31 09:48:01'),
(1336, 'Md Sagor Islam', 'mdsagorislam71@gmail.com', '01716384626', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-05 03:51:28', '2022-06-14 08:25:14'),
(1337, 'Shahadat Hossen', 'mshossen27@gmail.com', '01796436916', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-05 07:27:06', '2022-03-05 07:27:06'),
(1338, 'Palash', NULL, '01757991699', NULL, NULL, NULL, NULL, 'Phon bondo', 'Contacted', '2022-03-05 09:07:10', '2022-03-12 04:55:15'),
(1339, 'Shoboj  Mondol', NULL, '01323907063', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-05 09:13:17', '2022-04-21 05:56:15'),
(1340, 'Shafiul ALOM Sajib', 'Abidhass140@gmail.com', '01926835404', NULL, NULL, NULL, NULL, 'oner boro vai r shate kotha bolle janabe oni bdg asen ty janante lare hobe.ecomarce proposalwebsite development send and ecomarce er demo send kora hoise', 'Disqualified', '2022-03-05 09:28:02', '2022-06-06 05:18:39'),
(1341, 'Enamul Haq', 'Important@important.important', '01713495624', NULL, NULL, NULL, NULL, '\"Important\"\r\n3ta website lagbe Eid er pore  laravel \r\n29-05-2022, ঢাকার বাইরে আছেন। এসে যোগাযোগ করবেন', 'Contacted', '2022-03-05 09:31:42', '2022-05-30 03:12:24'),
(1342, 'Masum Billah', NULL, '01711937954', NULL, NULL, NULL, NULL, 'done by others\r\n২৯-০৫-২০২২  Techmart BD er wanner, ar kisu lagbena,', 'Disqualified', '2022-03-05 09:39:20', '2022-05-31 09:47:32'),
(1343, 'Rashid Romman', 'amanahfoodsbd@gmail.com', '01611964145', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-05 11:01:12', '2022-05-09 05:06:52'),
(1344, 'Omar Chowdhury', 'omar.chowdhury202@gmail.com', '01600004966', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-06 03:11:45', '2022-04-21 05:55:31'),
(1345, 'Md Zeawur', NULL, '01812657716', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-06 03:15:58', '2022-03-06 03:15:58'),
(1346, 'Moinul Islam', 'islam.moinul@yahoo.com', '01706166009', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-06 10:47:29', '2022-06-14 08:21:39'),
(1347, 'Biplob Khondaker', 'bspgroup.com.bd@gmail.com', '01717867899', NULL, NULL, 'BJ Tech', NULL, NULL, 'Disqualified', '2022-03-07 04:43:03', '2022-06-06 09:02:47'),
(1348, 'Kazi Md Solaiman', NULL, '01977326743', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-07 05:34:09', '2022-05-29 08:44:49'),
(1349, 'Farzil Hossain', 'farzilhossain@yahoo.com', '01670911478', NULL, NULL, NULL, NULL, 'Proposal for E-commerce Website Design and Development. \r\nalmos send', 'Qualified', '2022-03-07 07:12:49', '2022-06-14 08:29:02'),
(1350, 'Akm Sariful Islam Babu', 'sibabu0001@gmail.com', '01812158989', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-07 07:15:56', '2022-06-06 09:13:18'),
(1351, 'Golam Sarour Prince', 'golam.sarour@steelinfrabd.com', '01612435038', NULL, NULL, 'MEC Engineering Services', '23/2, SEL HUQ SKYPARK (9th Floor), Khilji Road, Block-B, Shyamoli ,Dhaka-1207.', 'প্রোপোজাল পাঠাতে বলেছে, পাঠিয়েছি।কিছু দিন পর জানাবে।', 'Proposal Sent', '2022-03-07 07:44:55', '2022-05-31 10:33:27'),
(1352, 'Imran Hasan', NULL, '01820425498', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-07 07:58:42', '2022-03-07 07:58:42'),
(1353, 'Farzil Hossain', NULL, '01670-911478', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-07 08:00:44', '2022-03-07 08:00:44'),
(1354, 'Jalal Hossain', NULL, '01608404098', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-07 08:01:37', '2022-03-07 08:01:37'),
(1355, 'Md Rony Islam', 'rony83635@gmail.com', '01642340701', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-07 08:40:52', '2022-06-15 04:57:09'),
(1356, 'Md Jubair Al Mahmod', 'work24.jam@gmail.com', '01648837327', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-07 08:43:19', '2022-06-06 09:21:02'),
(1357, 'Shah Neoaj', 'red.neoaj@gmail.com', '01711-371118', NULL, NULL, 'BJ Tech', NULL, 'ecommarce Website Design & Dovelopment proposal almot send now confirmetion r jonno wait', 'Disqualified', '2022-03-07 09:38:06', '2022-06-06 09:24:46'),
(1358, 'Mahbub Hossain', 'just.mahbub02@gmail.com', '01998502631', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-07 11:15:32', '2022-03-07 11:15:32'),
(1359, 'Md Nazmul', NULL, '01303137881', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-07 16:33:22', '2022-03-07 16:33:22'),
(1360, 'Salman Farsee', NULL, '01673336305', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-08 07:38:47', '2022-03-08 07:38:47'),
(1361, 'Advocate Zahid Hasan', NULL, '01724832710', NULL, NULL, NULL, NULL, 'ajke evening a office meeting করবে\r\n২৯-০২-২০২২-কল রিসিভ করছেনা।\r\n04.06.2022 Maa maragiyese.01.06.2022 tai kotha bolinai .koidin por call korte hobe', 'Contacted', '2022-03-08 07:45:08', '2022-06-04 10:01:27'),
(1362, 'Md Hasibur Rahman', NULL, '01970762606', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-08 07:45:50', '2022-03-08 07:45:50'),
(1363, 'Md Nurul Alam Chowdhury', 'cat.eng68@gmail.com', '01738141971', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-08 11:31:52', '2022-06-15 04:54:47'),
(1364, 'Sajidur Rahman Rubyet', 's.r.rubyed2020@gmail.com', '01646021222', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-08 11:41:33', '2022-03-08 11:41:33'),
(1365, 'Sajidur Rahman Rubyed', 's.r.rubyed2020@gmail.com', '01646-021222', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-08 11:42:26', '2022-03-16 06:32:19'),
(1366, 'Raju Sir', NULL, '01778066336', NULL, NULL, NULL, NULL, 'Business Website koraba kiso din por - domain asa', 'Contacted', '2022-03-09 03:46:57', '2022-03-12 04:59:58'),
(1367, 'unknown number', NULL, '01924749494', NULL, NULL, NULL, NULL, 'Ecommerce Website(Multi-endor)\r\n২৯-০২-২০২২-আজকে সান্ধায় কল করবেন।', 'Contacted', '2022-03-09 03:49:38', '2022-05-30 03:05:51'),
(1368, 'unknown number', NULL, '01837526664', NULL, NULL, NULL, NULL, 'NGO ওএবসিতে\r\n২৯-০২-২০২২ কল রিসিভ করছেনা', 'Disqualified', '2022-03-09 03:50:56', '2022-05-31 10:32:05'),
(1369, 'Shewly akter', 'Shewlybeautyskincre@gmail.com', '01402060338', NULL, NULL, 'Shewly beauty & skincare .', NULL, NULL, 'Qualified', '2022-03-09 10:59:52', '2022-03-09 10:59:52'),
(1370, 'Muhammad Kamrul Islam', NULL, '01755266664', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-10 04:33:37', '2022-06-16 08:51:46'),
(1371, 'Md  Mahbub', NULL, '01853331839', NULL, NULL, NULL, NULL, 'Multy Vendor E-commerce Website', 'Proposal Sent', '2022-03-10 06:55:49', '2022-03-10 09:03:04'),
(1372, 'Md. Asaduzzaman', 'asad.it@hameemdenim.com', '+880 1313712188', NULL, NULL, 'Hameem Denim', NULL, NULL, 'Contacted', '2022-03-10 08:38:14', '2022-03-10 08:38:14'),
(1373, 'Jamat Ali', 'paradisescientific@gmail.com', '0 1738-603012', NULL, NULL, NULL, NULL, NULL, 'lead', '2022-03-10 08:45:52', '2022-03-10 08:45:52'),
(1374, 'Jummon Hossain', NULL, '01771000968', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-10 18:34:05', '2022-03-10 18:34:05'),
(1375, 'Atiqur Brahman', NULL, '01744882883', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-10 18:52:25', '2022-06-06 09:53:07'),
(1376, 'Slim sir', 'srtoslim@gmail.com', '01844523031', NULL, '01966172000', NULL, NULL, 'Ecommerce Website proposal and demo send', 'Proposal Sent', '2022-03-11 09:02:21', '2022-03-28 09:42:09'),
(1377, 'unknown', NULL, '01879695893', NULL, NULL, NULL, NULL, 'Ecommerce Website pora janaba', 'Contacted', '2022-03-11 09:06:20', '2022-03-12 04:53:35'),
(1378, 'Md.Rasel', NULL, '01841081161', NULL, NULL, NULL, NULL, 'Sim API cheyeche', 'Disqualified', '2022-03-11 13:52:12', '2022-06-06 09:56:23'),
(1379, 'Md Baker Sarkar', 'bakersarker@yahoo.com', '01819136522', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-11 17:10:03', '2022-06-14 08:31:57'),
(1380, 'Md  Meftah', 'mastertechnology099@gmail.com', '01317171775', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-12 04:48:16', '2022-03-13 05:44:36'),
(1381, 'Md Rokon', 'preozone@gmail.com', '01842858100', NULL, NULL, NULL, NULL, 'Listing WordPress Website', 'Proposal Sent', '2022-03-12 08:53:55', '2022-03-15 08:11:56'),
(1382, 'SignBoard  Factory', 'shafi@designdoctorsbd.com', '0171154989', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-03-12 08:56:49', '2022-03-12 08:56:49'),
(1383, 'Md Numan Ahmed', 'dmgroupsdn.bhd@gmail.com', '+601111254106', NULL, NULL, NULL, NULL, 'broker Malaysia kage deba', 'Proposal Sent', '2022-03-12 11:44:27', '2022-03-12 13:43:04'),
(1384, 'Afridi', 'afridishimul8@gmail.com', '01786203243', NULL, NULL, NULL, NULL, 'hopechildrenshome.org    ngo website koraba Block list', 'Disqualified', '2022-03-12 11:48:54', '2022-05-31 09:57:43'),
(1385, 'Mahabub Sir', 'mrmssolutionsgroup@gmail.com', '0185-3331839', NULL, NULL, NULL, NULL, 'Ecommerce Website After lunch today', 'Contacted', '2022-03-12 12:08:22', '2022-03-13 08:15:31'),
(1386, 'Md Russel', NULL, '01714243446', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-13 02:52:47', '2022-03-13 02:52:47'),
(1387, 'Tanjid Mahmud', 'tanjid.lotus@gmail.com', '01888698698', NULL, NULL, 'Medilegal', 'Basabo WasaRoad', NULL, 'Converted to Customer', '2022-03-13 05:32:07', '2022-04-17 05:30:46'),
(1388, 'Suman sir', 'suman.dnt@gmail.com', '01912081302', NULL, NULL, NULL, NULL, 'Business Website Proposal And  Demo send (Buying House)', 'Proposal Sent', '2022-03-13 06:58:46', '2022-03-13 07:08:58'),
(1389, 'Roman Tanvir', 'romance_2020@live.com', '01600329292', NULL, NULL, 'Hinokizaka', NULL, 'Restaurant', 'Proposal Sent', '2022-03-13 07:59:14', '2022-04-14 04:20:38'),
(1390, 'Rony tech', 'ronytech2008@gmail.com', '01992939339', NULL, NULL, 'bagmela.com', NULL, 'https://ruperhut.com/', 'Disqualified', '2022-03-13 08:01:34', '2022-06-14 09:24:43'),
(1391, 'Denver perfume', NULL, '01819425098', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-13 08:03:34', '2022-05-31 09:57:37'),
(1392, 'khandoker Abul Bashar', 'Khandoker.bashar@gmail.com', '01731987623', '01730793001', NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-03-13 08:05:55', '2022-05-28 10:03:17'),
(1393, 'Sohel Arman', 'sohel.finvasoft@gmail.com', '01718996269', NULL, NULL, NULL, NULL, '২৯-০৫-২০২২ অন্য প্রতিষ্ঠান থেকে নিয়েছেন। যদি আবার কিছু প্রয়োজন হয়,আমাদের কে জানাবেন।', 'Disqualified', '2022-03-13 08:57:54', '2022-05-31 10:31:54'),
(1394, 'Ahmed', NULL, '+905510146707', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-13 09:43:14', '2022-03-13 09:43:14'),
(1395, 'Mahbub Sir', 'mahbub_ul@hotmail.com', '01575671012', NULL, NULL, NULL, NULL, 'Business Website', 'Contacted', '2022-03-13 11:44:56', '2022-03-15 04:10:54'),
(1396, 'MD Shafiqur Rahman', 'shafiqur210@gmail.com', '01977191190', NULL, NULL, 'Bengal Global Logistics and Supply Chain ltd.', NULL, NULL, 'Converted to Customer', '2022-03-14 03:54:05', '2022-05-23 05:18:15'),
(1397, 'unknown', 'tdas2802@gmail.com', '01785524752', NULL, NULL, NULL, NULL, 'Ecommerce Website tangile', 'Proposal Sent', '2022-03-14 06:54:53', '2022-03-15 04:10:19'),
(1398, 'Tarek Al Mahmud', 'tarek@immivisa.com.au', '01921996529', NULL, NULL, 'Immi Visa Pty Ltd', 'Suite 405, 3rd Floor, Shapla Bhaban, 49, Motijheel C/A Dhaka-1000, Bangladesh', NULL, 'Proposal Sent', '2022-03-14 08:06:10', '2022-03-14 08:42:01'),
(1399, 'Jifat Sir', 'jifat2001@gmail.com', '01837253377', NULL, NULL, NULL, NULL, 'Business Website', 'Proposal Sent', '2022-03-14 09:44:27', '2022-03-15 04:10:31'),
(1400, 'Delower Hossain', 'delower.hn@gmail.com', '01790273555', NULL, NULL, NULL, NULL, 'eCommerce redesign korbe', 'Contacted', '2022-03-15 04:26:47', '2022-06-06 08:06:31'),
(1401, 'Md Sumon', NULL, '01745252515', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-16 04:00:07', '2022-03-16 04:00:07'),
(1402, 'Mohammad Ashraful Alom Shamim', 'primetradingp19@gmail.com', '01913095004', NULL, NULL, NULL, NULL, 'Future e kaaj korabe', 'Contacted', '2022-03-16 04:40:41', '2022-06-06 09:30:38'),
(1403, 'Jayed Malik', 'jayedhomepc@gmail.com', '01630665510', NULL, NULL, NULL, NULL, '06/06/2022\r\n2 mash por call korte bolse', 'Contacted', '2022-03-16 07:05:25', '2022-06-06 07:49:33'),
(1404, 'Imran Hossain', 'hossain.imran.opu@gmail.com', '0 1919-192198', NULL, NULL, 'DMFR Molecular Lab & Diagnostics BD Ltd. Hot lead', NULL, 'website done by others', 'Disqualified', '2022-03-16 07:13:19', '2022-06-06 07:55:10'),
(1405, 'Tushar Ahmad Sir', 'atushar549@gmail.com', '01793666243', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal Send', 'Proposal Sent', '2022-03-16 07:59:32', '2022-03-16 08:05:43'),
(1406, 'Mohin Sir', NULL, '01837622947', NULL, NULL, NULL, NULL, 'Ecommerce Websit mail id diba', 'lead', '2022-03-16 08:21:16', '2022-03-16 08:21:16'),
(1407, 'Mohin Sir', 'togor547@gmail.com', '018376-22947', NULL, NULL, NULL, NULL, 'Ecommerce Websit mail id diba', 'Proposal Sent', '2022-03-16 08:32:08', '2022-03-16 08:51:25'),
(1408, 'Mamun', 'Kinchesta645@gmail.com', '0 1677-921164', NULL, NULL, NULL, NULL, 'Business Website Chesta knitwear  proposal send', 'Proposal Sent', '2022-03-16 11:55:09', '2022-03-16 12:06:19'),
(1409, 'Afjal Bhuiyan', 'afzalbhuiyan1985@gmail.com', '01911761227', NULL, NULL, NULL, NULL, 'Number Off', 'Disqualified', '2022-03-17 19:30:02', '2022-06-06 03:55:37');
INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `secondary_email`, `secondary_phone`, `company`, `address`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1410, 'Engr.boker', NULL, '0181-9136522', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-17 19:59:07', '2022-06-14 06:58:41'),
(1411, 'Shafique Sir', 'shafiquenp@gmail.com', '01979040458', NULL, NULL, NULL, NULL, 'Ecommerce Website/Buy Sell website phon bondo', 'Disqualified', '2022-03-20 03:34:12', '2022-06-06 03:43:52'),
(1412, 'unknown', NULL, '01759040458', NULL, NULL, NULL, NULL, '25 tarika kota hoba.. ar call korte mana koreche', 'Disqualified', '2022-03-20 03:56:03', '2022-06-06 07:45:14'),
(1413, 'Satu Barua', 'engrsatukumarbarua@gmail.com', '01746673794', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-20 06:35:25', '2022-03-20 06:35:49'),
(1414, 'Tarikul Islam', 'afsar3120@gmail.com', '01610666178', NULL, NULL, NULL, NULL, 'E-commerce Website', 'Proposal Sent', '2022-03-20 08:25:50', '2022-03-20 08:25:50'),
(1415, 'Abul Hosen', NULL, '01721758782', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-20 09:38:54', '2022-03-20 11:41:30'),
(1416, 'Md.Shahabuddin', 'mssiam8@gmail.com', '01754928420', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-20 10:08:09', '2022-06-06 07:53:29'),
(1417, 'Sumon ctp', NULL, '+8801979122589', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-20 10:47:13', '2022-06-15 04:42:56'),
(1418, 'Md Alamgir', 'jessshop.bd@gmail.com', '01914339157', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-20 16:37:34', '2022-06-12 09:03:08'),
(1419, 'minishop', NULL, '0191-4339157', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-03-20 17:09:10', '2022-06-15 04:19:49'),
(1420, 'Khairul Leon', 'kileon31@gmail.com', '01644431789', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-20 18:13:27', '2022-06-14 08:21:21'),
(1421, 'Syed Kadery', 'syedkadery@fashionandsourcing.com', '01971435866', NULL, NULL, NULL, NULL, 'Informative Website', 'Converted to Customer', '2022-03-22 11:59:02', '2022-04-13 07:02:49'),
(1422, 'asif', NULL, '01715000753', NULL, NULL, NULL, NULL, 'Amar sathe jogajog korbe\r\n ২৯-০৫-২০২২- অনেক অসুস্থ, আজকে অফিসে যাওয়া হয়নি। সুস্থ হয়ে অফিস এ গিয়ে আমাকে জানাবে।ফুরকান ভাই এর সাথে আগে কথা হয়েছিল।', 'Contacted', '2022-03-23 02:36:00', '2022-05-30 03:05:19'),
(1423, 'Erfan Chowdhury', 'info@masconsultantsbd.com', '01617967725', NULL, NULL, 'Shimex International Ltd .', 'Flat# b4 , House # 105 , Road # 4 , Block # B , Banani , Dhaka .', NULL, 'Quote Sent', '2022-03-23 08:10:05', '2022-03-23 08:10:05'),
(1424, 'Solyman Islam', NULL, '01625292732', NULL, NULL, 'guronssi', 'gazipur', NULL, 'Disqualified', '2022-03-24 03:42:53', '2022-06-06 03:06:56'),
(1425, 'Jakir All Sim', NULL, '0161-0683853', NULL, NULL, NULL, NULL, '15.06.2022-call receive kore onk besto pore kotha bolbe bole rekhe dise', 'Contacted', '2022-03-24 06:23:19', '2022-06-15 03:22:40'),
(1426, 'Shafique Ahamad', NULL, '+880 1759-040458', NULL, NULL, NULL, NULL, '25.3.22 date call confrime korte hobe\r\n14.06.2022-jini call receive koresen tini kisu bolte parsena .karon eta onno department dekhsen.onno jaiga theke web koreniyese', 'Contacted', '2022-03-24 08:20:49', '2022-06-14 07:58:31'),
(1427, 'Salman Farse', 'mshahalam12@gmail.com', '01673-336305', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-24 08:52:20', '2022-04-21 06:06:36'),
(1428, 'kyung Hong', 'rafiq.prodhan2018@gamil.com', '01705154624', NULL, NULL, 'SURA KOREAN RESTAURANT', NULL, NULL, 'Converted to Customer', '2022-03-24 09:44:09', '2022-04-06 03:33:09'),
(1429, 'Tasnimul Khushbu', 'tkhushbu@baniallc.com', '01816430832', NULL, NULL, NULL, NULL, 'E-commerce Website', 'Qualified', '2022-03-27 05:41:35', '2022-06-14 08:28:41'),
(1430, 'Rayhanur Rahman Rana', 'rayhanurr@gmail.com', '01737231055', NULL, NULL, 'share link and proposal for informative link', NULL, '২৯-০৫-২০২২-আমাদের সাথে যোগাযোগ করার পর, তার একজন পরিচিত মানুষের কাছ থেকে website নিয়েছেন। আবার কিছু প্রয়োজন হলে আমাদের কাছ থেকে নিবেন।', 'Contacted', '2022-03-28 03:27:04', '2022-05-29 04:55:57'),
(1431, 'Tarekuzzaman Asif', NULL, '01841855518', NULL, NULL, NULL, NULL, 'proposal for ecomace single ventor proposal\r\n01-02-2022-amader ke 2-3 bar bolesen phone na dite . onk reques kore bolesen ar jate phone na dewa hoi.', 'Disqualified', '2022-03-28 03:29:31', '2022-06-02 04:00:44'),
(1432, 'Md.Mahadul Hasan Parves', 'Btutors.net@gmail.com', '01711090864', NULL, NULL, NULL, NULL, 'No Answer\r\n01-02-2022-Number ta bondo ase.', 'Contacted', '2022-03-28 04:04:35', '2022-06-02 03:57:03'),
(1433, 'Main Uddin Naim', NULL, '01781814388', NULL, NULL, NULL, NULL, '14.06.2022-Call receive korsena\r\n15.06.2022-osustho silo ekhon susho,grame aase ese kotha bolbe', 'Contacted', '2022-03-28 04:27:16', '2022-06-15 07:44:02'),
(1434, 'Ayon Sir', NULL, '01887870549', NULL, NULL, NULL, NULL, 'Ecommerce Website Laravel koraba', 'Contacted', '2022-03-28 04:57:12', '2022-03-28 04:57:41'),
(1435, 'Hossain Muhammad polin sir', NULL, '01688-759713', NULL, NULL, NULL, NULL, 'Ecommrece Website laravel and nodjies a koraba Business-Rice', 'Contacted', '2022-03-28 05:09:51', '2022-03-29 03:24:14'),
(1436, 'Max Pure Food & Beverage', 'maxpuremis@gmail.com', '01322891978', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-28 07:03:25', '2022-03-28 07:03:25'),
(1437, 'Md Shohan', NULL, '01795131192', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-28 07:29:51', '2022-03-28 07:29:51'),
(1438, 'Md.Shohel', 'trident.shohel@gmail.com', '01777-780930', NULL, NULL, 'Industrial Equipment', NULL, '16.06.2022-kisudin por amader sathe meeting korbe website bananur bishoye', 'Contacted', '2022-03-29 06:48:32', '2022-06-16 04:15:21'),
(1439, 'Repriya  Poddar', 'reu.podder@gmail.com', '01822364629', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-03-29 07:09:04', '2022-04-13 07:02:32'),
(1440, 'Rased Asad', 'raseddxb2007@gmail.com', '+971564283992', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-29 07:10:50', '2022-03-29 07:10:50'),
(1441, 'Ramin', NULL, '01820340111', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-03-29 07:11:52', '2022-03-29 07:11:52'),
(1442, 'Mahabubul Alam sir', NULL, '01764335166', NULL, NULL, NULL, NULL, 'pora kotha bolba', 'Proposal Sent', '2022-03-29 07:49:49', '2022-03-29 08:16:13'),
(1443, 'Pritam', 'pritam@guardianlife.com.bd', '01709991178', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-29 08:00:44', '2022-03-29 08:00:44'),
(1444, 'Hasnain Abdullah Nasif', 'mizan_uvi@yahoo.com', '01819475298', NULL, NULL, 'HR Group', 'Green Shatmahal 10 th Floor , Boro Mogbazar ,  Dhaka 1217 .', NULL, 'Converted to Customer', '2022-03-29 08:15:02', '2022-04-14 03:50:22'),
(1445, 'Saon Sir', NULL, '8801732897591', NULL, NULL, NULL, NULL, 'E-commerce Proposal send via What\'s app and will visit our office within 2-3 days', 'Proposal Sent', '2022-03-29 08:21:27', '2022-05-29 08:03:30'),
(1446, 'unknown', 'dkrohim71@gmail.com', '01997905013', NULL, NULL, NULL, NULL, 'Ecommerce Website     bating site', 'Proposal Sent', '2022-03-29 08:27:44', '2022-04-06 11:09:57'),
(1447, 'mushfiqborat', 'mushfiqborat@gmail.com', '01758496846', NULL, NULL, NULL, NULL, 'Business Website', 'Proposal Sent', '2022-03-29 08:40:22', '2022-03-29 09:26:48'),
(1448, 'unknown', NULL, '01886271194', NULL, NULL, NULL, NULL, 'akto pora phon debo', 'Contacted', '2022-03-29 09:38:05', '2022-03-29 09:42:38'),
(1449, 'Yeasmin Akhter', 'yeasmin.akhtar@oculintech.com', '01755639326', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-03-29 10:23:23', '2022-06-14 08:20:29'),
(1450, 'Ashis sir', NULL, '01738058283', NULL, NULL, NULL, NULL, 'Ecommerce Website( november and December kage koraba.', 'Contacted', '2022-03-30 06:37:08', '2022-04-22 03:53:42'),
(1451, 'Rony Shaiekh', NULL, '01321940827', NULL, NULL, NULL, NULL, '14.06.2022-Call receive korsena\r\n16.06.2022-Call kete dey bar bar', 'Disqualified', '2022-03-31 02:34:36', '2022-06-16 04:09:00'),
(1452, 'Mamun sir', NULL, '0 1914-008335', NULL, NULL, NULL, NULL, 'Ecommerce Website baby item', 'Disqualified', '2022-03-31 03:36:18', '2022-04-21 06:21:32'),
(1453, 'K.M.H. HASAN', 'germanoilbd2010@gmail.com', '01322309616', NULL, NULL, 'RN GROUP', 'Online Wasi Tower, 572/k, ECB Chattar, Matikata,Dhaka Cantonment. DHAKA, Dhaka, 1206 Bangladesh', NULL, 'Converted to Customer', '2022-03-31 04:36:12', '2022-04-06 03:32:49'),
(1454, 'Shohel Rana', NULL, '01713-076665', NULL, NULL, 'Infinity BD', NULL, '14.06.2022-Ecommarce website korese.jara korediyese tara sob service disse. ar kisu onno kothaew theke lagbena.', 'Disqualified', '2022-04-01 02:47:57', '2022-06-14 07:08:18'),
(1455, 'Shamim Reza', 'ratan.waqfi@gmail.com', '019786-21961', NULL, NULL, NULL, NULL, 'Business Management Software', 'Qualified', '2022-04-02 02:18:15', '2022-04-03 06:56:28'),
(1456, 'Sayla', NULL, '01778771961', NULL, NULL, NULL, NULL, 'web site design pora kotha bolba', 'Disqualified', '2022-04-02 10:19:07', '2022-05-31 09:57:31'),
(1457, 'unknown', NULL, '+1(629)259-1913', NULL, NULL, NULL, NULL, 'Ecommerce Website \r\nকল যাচ্ছে না।', 'Disqualified', '2022-04-02 10:20:47', '2022-05-31 09:33:04'),
(1458, 'Anjuman Ara Ankhi', 'anjumansssl@gmail.com', '01620224677', NULL, NULL, 'SENTRY SECURITY SERVICES LTD', 'House No: 9/A, Road No: 01, (Bhasa Shonik Dr, Golam Moula Sharak) Dhanmondi.', NULL, 'Quote Sent', '2022-04-03 03:56:12', '2022-04-03 03:56:12'),
(1459, 'Marjan Sir', 'lulualmarjan2010@gmail.com', '+971 58 869 1122', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-03 05:53:21', '2022-05-29 07:17:38'),
(1460, 'Ibrahim Al Musharof', NULL, '01912699209', NULL, NULL, NULL, NULL, '14.06.2022-offline a ekhon besi besto tai online apatoto korsena but pore korle amaderke janabe.', 'Contacted', '2022-04-04 05:43:53', '2022-06-14 07:04:26'),
(1461, 'Shakil', NULL, '01912-699209', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-04 05:51:07', '2022-04-04 05:51:07'),
(1462, 'Md.Nur Alam Rana', 'rana.diucse@gmail.com', '0 1717-089481', NULL, NULL, NULL, NULL, 'website design\r\n14.06.2022-website ekhono banaini but banate pare ajke sondhai call dite bolese\r\n18.06.2022-Ecommerce er Proposal pathate bolesen . Pathalam', 'Proposal Sent', '2022-04-04 07:37:01', '2022-06-18 09:19:44'),
(1463, 'Tasnia', 'tasnia.7r@gmail.com', '01874571148', NULL, NULL, NULL, NULL, 'Informative Website', 'Quote Sent', '2022-04-05 02:54:40', '2022-06-14 08:21:02'),
(1464, 'Md Ashikur Rahman', 'ashikur3310@gmail.com', '01712483749', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-04-05 07:08:10', '2022-04-13 07:03:12'),
(1465, 'Nari uddug kendra', 'itofficer.nuk@gmail.com', '01324735124', NULL, NULL, NULL, NULL, 'Eid er পর/ ২৯-০৫-২২- কল রিসিভ করছেনা।', 'Disqualified', '2022-04-05 08:24:04', '2022-05-31 10:30:38'),
(1466, 'Habibur', NULL, '01711113852', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-05 10:40:11', '2022-04-21 06:11:29'),
(1467, 'Shakawat', NULL, '01714337618', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-05 10:41:16', '2022-04-05 10:41:16'),
(1468, 'Khandakar Jelany', 'jelany@stylewinbd.com', '01819833490', NULL, NULL, NULL, NULL, 'Ecommerce website', 'Proposal Sent', '2022-04-05 11:08:52', '2022-04-14 03:20:43'),
(1469, 'Komol', NULL, '01713619146', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-06 09:53:47', '2022-04-06 09:53:47'),
(1470, 'Motiur Rahman', NULL, '01955000564', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-06 15:22:30', '2022-05-08 08:34:40'),
(1471, 'Md Apon', NULL, '01811113311', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-07 02:35:59', '2022-04-07 02:35:59'),
(1472, 'Hasan Mahmud', 'hasanseu9@gmail.com', '01726596175', NULL, NULL, NULL, NULL, 'Informative Website', 'Disqualified', '2022-04-07 04:26:07', '2022-06-15 04:24:19'),
(1473, 'KHONDOKAR ZOBAIR', 'zobair@knitplusltd.com', '01716918441', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-07 04:27:27', '2022-06-14 09:24:43'),
(1474, 'MD.MASRUR HOSSAIN (TAMZID).', 'supplychain@smltrimssolution.com', '01711030109', NULL, NULL, 'SML GLOBAL SOURCING.', NULL, NULL, 'Proposal Sent', '2022-04-07 04:30:05', '2022-04-07 04:30:05'),
(1475, 'Mazharul', 'majhar007007@gmail.com', '01916085838', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-07 16:12:23', '2022-06-14 08:18:08'),
(1476, 'Md Majed', 'mariaknitbd@gmail.com', '01635299099', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-07 17:20:27', '2022-06-14 08:19:25'),
(1477, 'Md. Moin uddin', 'moinua1.mu@gmail.com', '01682437343', NULL, NULL, NULL, NULL, '14.06.2022-Number ta sob somoy', 'Disqualified', '2022-04-09 04:30:53', '2022-06-14 04:32:20'),
(1478, 'Hussain Rajib', NULL, '01626028058', NULL, NULL, NULL, NULL, '14 tarik office a asben\r\n14.06.2022-number sobsomoy off thake', 'Disqualified', '2022-04-09 04:33:47', '2022-06-14 04:28:55'),
(1479, 'save bazer', 'savebazarsupershop@gmail.com', '01712905975', NULL, NULL, NULL, NULL, 'www.savebazar.net\r\n07-06-2022-ekhon eta niye Kotha bolbena', 'Contacted', '2022-04-09 05:11:26', '2022-06-16 04:07:42'),
(1480, 'Samsujjoha', 'ittadiagri@gmail.com', '01977089608', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-09 05:59:35', '2022-06-18 07:02:26'),
(1481, 'Md Ali', NULL, '01715308506', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-09 06:10:00', '2022-04-09 06:10:00'),
(1482, 'Md.Helal sir', NULL, '01776800976', NULL, NULL, NULL, NULL, 'no response', 'lead', '2022-04-09 07:44:05', '2022-04-10 06:18:45'),
(1483, 'Asian Transport Network Limited', 'sharifulrimon565@gmail.com', '01404433154', NULL, NULL, 'Asian Transport Network Limited', NULL, 'Business Website quotation done Shariful Islam', 'Quote Sent', '2022-04-09 08:58:47', '2022-06-01 04:45:52'),
(1484, 'masud', NULL, '01811904853', 'whats app dubai', '+971567365198', NULL, NULL, 'Business Website (Ref:Mamun sir)whats app a phon dita hoba', 'Contacted', '2022-04-09 14:48:50', '2022-04-11 04:09:06'),
(1485, 'A  R  International', 'a.r.international2008@gmail.com', '01715023651', NULL, NULL, NULL, NULL, 'Informative Website', 'Proposal Sent', '2022-04-10 04:49:00', '2022-04-13 03:17:40'),
(1486, 'Ridoy Sir', NULL, '01521234415', NULL, NULL, NULL, NULL, 'hosting and monthly package lagba', 'Contacted', '2022-04-10 06:42:42', '2022-04-11 04:02:35'),
(1487, 'Nisorgo Tours', NULL, '01711194103', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-10 06:51:59', '2022-04-10 06:51:59'),
(1488, 'Naseeh Enterprise', NULL, '01718523295', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-10 06:53:45', '2022-06-15 04:13:41'),
(1489, 'Sayed uddin', 'sayeduddin1994a@gmail.com', '+33758114242', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal send janaba', 'Disqualified', '2022-04-11 04:06:07', '2022-05-31 09:57:25'),
(1490, 'Tamanna Islam', 'tamanna04225603@gmail.com', '01841004000', NULL, NULL, NULL, NULL, 'Informative website', 'Proposal Sent', '2022-04-11 04:28:28', '2022-04-11 04:28:28'),
(1491, 'Azizul shimul sir', 'shimulaziz1408@gmail.com', '01766449955', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal send Facebook page lagba', 'Proposal Sent', '2022-04-11 06:36:24', '2022-04-11 06:53:38'),
(1492, 'Akhbaat Haque Sangita', NULL, '01763152353', NULL, '01711572102', NULL, NULL, 'Project Done by someone else', 'Disqualified', '2022-04-11 08:18:51', '2022-05-29 06:59:03'),
(1493, 'Salmun Ikram', 'salmun@sub.edu.bd', '01766663301', NULL, NULL, 'State University of Bangladesh', '77, Satmasjid Road Dhanmondi, Dhaka 1205,Bangladesh', NULL, 'Quote Sent', '2022-04-12 03:40:28', '2022-04-12 03:40:28'),
(1494, 'E.S. Manik', NULL, '01968858385', NULL, NULL, NULL, NULL, 'hosting needed . no রেস্পন্সে \r\n29-05-22-No Answer', 'Contacted', '2022-04-12 03:44:50', '2022-05-30 03:04:00'),
(1495, 'Tariqul Islam Khan', NULL, '01911493015', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-12 06:39:14', '2022-06-01 04:56:55'),
(1496, 'Abol hosen', NULL, '01937772006', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-12 06:40:51', '2022-04-21 07:13:14'),
(1497, 'Tariqul Islam', NULL, '01600217373', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-12 07:02:08', '2022-04-21 06:05:59'),
(1498, 'Sabbir Hossain', NULL, '01308415103', NULL, NULL, NULL, NULL, 'Graphics Design Proposal send via What\'s App', 'Proposal Sent', '2022-04-13 03:25:08', '2022-05-29 06:38:26'),
(1499, 'Md Jobayer', NULL, '01790107781', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-13 05:01:30', '2022-06-14 08:19:03'),
(1500, 'shopno', 'shopnaislamemliy1994@gmail.com', '01919874017', NULL, NULL, 'Nakshikatharmath.com', NULL, '07-06-2022-call receive korsena\r\n14.06.2022-mobile number off', 'Disqualified', '2022-04-13 06:10:46', '2022-06-14 04:20:12'),
(1501, 'Asm Rabiul Hassan', 'biplobtte@gmail.com', '01713-261850', NULL, NULL, NULL, NULL, '07-06-2022-call receive korsena\r\n14.06.2022-ajke 1 tar por call korte bolesen.\r\n18.06.2022-Ecommerce er Proposal pathiyesi', 'Proposal Sent', '2022-04-13 07:47:36', '2022-06-18 07:17:11'),
(1502, 'Billal Hossain', NULL, '01711510057', NULL, NULL, NULL, NULL, 'Dealer management software', 'Proposal Sent', '2022-04-13 08:09:07', '2022-04-21 06:05:46'),
(1503, 'New Garments', 'orovicharles@gmail.com', '01533867003', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-04-14 04:42:30', '2022-04-14 04:42:30'),
(1504, 'Abir Khan', NULL, '01834172059', NULL, NULL, NULL, NULL, 'He had persuaded us 3-4 times before', 'Disqualified', '2022-04-14 05:08:38', '2022-05-29 04:49:13'),
(1505, 'Julhas Ahmed Jowel', NULL, '01726589352', NULL, NULL, NULL, NULL, 'informtive Website what app demo diasic    education', 'Contacted', '2022-04-14 11:26:42', '2022-04-14 11:26:52'),
(1506, 'Ashik Sir', 'ashickelahi@gmail.com', '01781527172', NULL, NULL, NULL, NULL, 'informative Website fotogriphy thakaba', 'Contacted', '2022-04-15 03:38:30', '2022-04-15 09:19:46'),
(1507, 'Shohel Rana sir', NULL, '01795715354', NULL, NULL, NULL, NULL, 'Ecommerce Website narsary chara sell korba', 'Proposal Sent', '2022-04-15 09:27:17', '2022-04-16 08:03:31'),
(1508, 'jobayer shibbly', NULL, '01639707711', NULL, NULL, NULL, NULL, '07-06-2022-call receive korsena\r\n13.06.2022-website ei muhurte banassena .jokhon banabe amader sathe jugajug korbe', 'Contacted', '2022-04-15 11:20:58', '2022-06-13 11:26:40'),
(1509, 'Nitton bissas', NULL, '01716993547', NULL, NULL, NULL, NULL, '07-06-2022--ভারি মেশিনারি বিক্রি করবে।তবে এখনো গুছিয়ে উঠতে পারেনি। ৬ জন মিলে ব্যবসা করবে। সব কিছু গুছিয়ে নিয়ে website nibe', 'Contacted', '2022-04-15 11:22:56', '2022-06-07 09:51:30'),
(1510, 'Mazharul islam', NULL, '0191-6085838', NULL, NULL, NULL, NULL, '07-06-2022-call kete disse\r\n13.06.2022-informative website lagbe laravel .bari dhonbari , 18.06.2022-office a asbe othoba zoom meeting korbe', 'Contacted', '2022-04-15 11:25:46', '2022-06-13 11:20:13'),
(1511, 'Majharul', NULL, '01916-085838', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-16 02:44:16', '2022-04-21 06:05:34'),
(1512, 'Niton Biswas', NULL, '01716-993547', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-16 03:58:01', '2022-06-14 08:19:43'),
(1513, 'Zahid Saddam', NULL, '01677999111', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-16 05:25:35', '2022-06-14 08:17:25'),
(1514, 'Md Azmaein', 'mdazmaein@gmail.com', '01635259369', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-16 06:28:26', '2022-06-14 08:15:18'),
(1515, 'Md. Samiul Masud', 'samiul_masud@yahoo.com', '01734859390', NULL, NULL, 'Academic Aid', 'House No.-2/2/B, Block-B, Lalmatia, Dhaka-1207', NULL, 'Converted to Customer', '2022-04-16 07:24:43', '2022-04-17 05:30:29'),
(1517, 'Mr. Mohmmed Abul Kalam', 'amsaviation70@gmail.com', '01711023351', NULL, '+8802 9361033', 'AMS Aviaition', '31, DIT Extension Road Rafatun Mansion (4th Floor) Fakirapool, Motijheel, Dhaka - 1000', 'He will talk to me later', 'Contacted', '2022-04-17 04:12:32', '2022-05-29 04:50:33'),
(1518, 'jalal uddin', NULL, '01815944526', NULL, NULL, NULL, NULL, 'His work has been done by someone else', 'Disqualified', '2022-04-17 04:41:50', '2022-05-29 04:46:30'),
(1519, 'Md. Rashedul Arifin Rajon', 'rajon@ibnsinapharma.com', '01709649359', NULL, NULL, 'The IBNSINA Pharmaceutical Industry Ltd.', 'Tanin Center, 3 Asad Gate , Mohammadpur , Dhaka .', NULL, 'Quote Sent', '2022-04-17 06:46:33', '2022-04-17 06:46:33'),
(1520, 'Azizur Rahman', NULL, '01937-772006', NULL, NULL, NULL, NULL, 'Multi Vendor E-commerce website lagbe\r\nadmin user id cheyechilo- virtual meet korte bolechi\r\nuni raji hoy n, thn office visit korte bolechi', 'Disqualified', '2022-04-17 12:11:50', '2022-05-31 10:28:34'),
(1521, 'Asif sir', NULL, '01984734994', NULL, NULL, NULL, NULL, 'Business Website no response', 'lead', '2022-04-18 03:54:57', '2022-04-18 03:54:57'),
(1522, 'Moutushy Dey', 'henaenterprisesltd@gmail.com', '01322805988', NULL, NULL, 'Hena Enterprises Ltd', 'Niketan, House-40, Road-1, Block-A, Dhaka 1212', NULL, 'Disqualified', '2022-04-18 06:47:47', '2022-06-14 09:21:46'),
(1523, 'Poran Mahmud', NULL, '01611882888', NULL, NULL, 'beauty shop and marketing shop', NULL, '13.06.2022-Number Call diley busy dekhai', 'Disqualified', '2022-04-18 07:20:49', '2022-06-13 10:10:34'),
(1524, 'Saiful Mondol', NULL, '01774266665', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-19 08:22:24', '2022-04-19 08:22:24'),
(1525, 'Tanvir Sir', 'stglobalsourcing@gmail.com', '+601137746964', NULL, NULL, NULL, NULL, 'Business Website Proposal Send', 'Proposal Sent', '2022-04-19 08:26:06', '2022-04-21 04:30:27'),
(1526, 'Nazir hossain nayan', 'nazirnayan0999@gmail.com', '0 1750-776070', NULL, NULL, NULL, NULL, 'eCommerce Website Whatapp proposal send ifter por kotha bolba https://boguraeshop.com/', 'Proposal Sent', '2022-04-19 08:54:19', '2022-04-21 04:22:49'),
(1527, 'Shahibuzzaman', NULL, '01958600477', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'lead', '2022-04-20 06:32:28', '2022-04-20 06:34:07'),
(1528, 'Md Suroj Islam', NULL, '01704643781', NULL, NULL, NULL, NULL, '07-06-2022-informative website korte chai.', 'Contacted', '2022-04-20 07:19:51', '2022-06-07 08:48:11'),
(1529, 'Al Mamun', 'simishopbd@gmail.com', '01954854616', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-20 13:42:26', '2022-04-23 08:39:39'),
(1530, 'Moshiur Rahman', 'ababilict@gmail.com', '01977755777', 'moz@magnusrecruitment.com.au', NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-21 03:57:06', '2022-06-14 04:38:23'),
(1531, 'Md.Atiqur', 'atiqur.powertrac@gmail.com', '01795820904', NULL, NULL, NULL, NULL, '13.06.2022-SEO korate chai but ekhon dorkar nai', 'Contacted', '2022-04-21 08:30:01', '2022-06-13 10:09:01'),
(1532, 'unknown', NULL, '01581831748', NULL, NULL, NULL, NULL, 'website design phone no response', 'lead', '2022-04-21 09:32:30', '2022-04-23 04:42:11'),
(1533, 'Mohammed anamul', NULL, '01715586705', NULL, NULL, NULL, NULL, '07-06-2022-jokhon koraben tokhon amader sathe juga jug korben\r\n19.06.2022-Gym er upor ekta website korbe demo chai .but amader kono gym er upor demo nai.', 'Contacted', '2022-04-21 13:58:55', '2022-06-19 04:20:24'),
(1534, 'unknown', NULL, '01711122244', NULL, NULL, NULL, NULL, 'Kalka asba', 'Contacted', '2022-04-22 04:57:28', '2022-04-23 04:41:26'),
(1535, 'WARMA pty Ltd', 'warmapty@gmail.com', '+61 433 819 790', 'Shohanbari@yahoo.com', '+61426407839', NULL, NULL, NULL, 'Converted to Customer', '2022-04-22 07:12:51', '2022-05-08 03:08:46'),
(1536, 'Noman', 'iconnoman@gmail.com', '01770012162', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-22 09:16:40', '2022-04-23 02:32:39'),
(1537, 'Taharatul', NULL, '01741414588', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-22 10:05:52', '2022-04-22 10:05:52'),
(1538, 'Joshef', NULL, '01711958691', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-23 03:00:04', '2022-04-23 03:00:04'),
(1539, 'Rajeev Desai sir', NULL, '+918116722632', NULL, NULL, 'Hitesh', NULL, 'Website design Whatsapp knock dibo', 'Quote Sent', '2022-04-23 03:24:34', '2022-04-23 06:35:25'),
(1540, 'MD. Lutfar Rahman', 'artek.bd@gmail.com', '01999924968', NULL, NULL, 'ARTEK', 'House-30, Road-07, Block-c , Niketon, Guishan-1, Dhaka 1212.', NULL, 'Quote Sent', '2022-04-23 03:39:07', '2022-04-23 03:39:07'),
(1541, 'Shofeul Alam', NULL, '01826202750', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2022-04-23 03:57:57', '2022-06-14 08:11:37'),
(1542, 'Monirul Islam', 'adp.mony@gmail.com', '01737030226', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-23 06:29:21', '2022-05-09 04:31:14'),
(1543, 'Md.Rabbi', 'sonalimhniamoti@gmail.com', '01722333960', NULL, NULL, 'সোনালী মেডিকেল হল নিয়ামতি', NULL, '07-06-2022-call receive korsena\r\n13.06.2022-numberta sob somoy off thake', 'Disqualified', '2022-04-24 02:34:57', '2022-06-13 10:05:56'),
(1544, 'Ahmed Rajib', NULL, '01676087077', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-24 03:16:29', '2022-05-11 09:27:34'),
(1545, 'Jamal Uddin', 'sandram@peoplepotential.co.nz', '01759479501', NULL, NULL, 'Sandra Foods', 'House -45, 3rd Floor, Road -01, Block-E, Banasree, Rampura, Dhaka-1219', NULL, 'Quote Sent', '2022-04-24 06:56:53', '2022-04-24 06:56:53'),
(1546, 'Tori Islam', 'shaheenislam932@gmail.com', '01798855386', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2022-04-25 03:04:48', '2022-06-14 08:13:05'),
(1547, 'Polash Bhuiyan', 'polashkhan97@gmail.com', '01726089430', NULL, NULL, NULL, NULL, '19.06.2022-eki bekti 2 ta client hisabe add ase .2 ta number', 'Contacted', '2022-04-25 07:50:38', '2022-06-19 03:41:12'),
(1548, 'Polash Bhuiyan', 'polashkhan97@gmail.com', '01927-932730', NULL, NULL, NULL, NULL, '07-06-2022-ecommarce website khulte chai,what\'s app a package pathate hobe.business partner er sathe bose amk janabe\r\n19.06.2022-ghumasse pore phone dibe bolese.', 'Contacted', '2022-04-25 08:20:10', '2022-06-19 03:39:06'),
(1549, 'unknown', NULL, '01946534172', NULL, NULL, NULL, NULL, 'Website no response kage shikba', 'Disqualified', '2022-04-25 08:25:46', '2022-04-25 08:52:40'),
(1550, 'Md.alamin', 'siralamin2@gmail.com', '01903999404', NULL, '01744305239', NULL, NULL, 'tutorsheba.com ar moto korta chai 80000 another service syz 120000-150000k multivandor\r\nafliar marketing', 'Contacted', '2022-04-25 11:49:12', '2022-04-26 07:21:13'),
(1551, 'Md Asaduzzaman', 'asad@singerbd.com', '01726599690', NULL, NULL, 'Singer Bangladesh Limited', '5/B, 126, Gulshan-1, Dhaka, Bangladesh 1212', NULL, 'Quote Sent', '2022-04-26 05:30:52', '2022-04-26 05:30:52'),
(1552, 'Mirza Mehedi Hasan', 'mehedimscit@gmail.com', '01711180008', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-04-26 05:58:02', '2022-04-26 05:58:02'),
(1553, 'Jakir Sim', 'abcbdxyz1@gmail.com', '01823442809', NULL, NULL, NULL, NULL, '07-06-2022-call duksena\r\n13.06.2022-call dekena', 'Disqualified', '2022-04-26 08:17:12', '2022-06-13 10:00:05'),
(1554, 'A R Sumon Patwary', NULL, '01822894270', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-04-26 12:16:48', '2022-04-26 12:16:48'),
(1555, 'Kalyan', NULL, '01764237146', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2022-04-28 07:05:56', '2022-06-14 08:13:57'),
(1556, 'Emran', NULL, '01857-900007', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-04-28 16:12:31', '2022-04-30 02:41:52'),
(1557, 'Md Maruf', 'abmoitri@gmail.com', '01624017493', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-04-30 07:54:03', '2022-06-14 08:12:26'),
(1558, 'Mehedi Hassan', 'shatwitravel@gmail.com', '+966172206898', 'mehedi@shatwitravel.com', NULL, NULL, NULL, 'Business Website proposal send', 'Quote Sent', '2022-05-05 13:30:07', '2022-05-07 06:54:47'),
(1559, 'Faisal sir', NULL, '0186-3701373', NULL, NULL, NULL, NULL, 'kotha bolta hoba bating site(eligale work) Block number.', 'Disqualified', '2022-05-07 02:57:56', '2022-05-08 04:22:37'),
(1560, 'Aktaruzzaman Sir', 'aktaruzzamanbidduth@gmail.com', '0177-3212427', NULL, NULL, NULL, NULL, 'Matrimonial Website marriage mediae', 'Quote Sent', '2022-05-07 03:18:35', '2022-05-07 10:25:47'),
(1561, 'babu mirja', NULL, '0195804489', NULL, NULL, NULL, NULL, '07-06-2022-10 digit er vul number', 'Disqualified', '2022-05-07 03:49:57', '2022-06-07 07:21:52'),
(1562, 'Toha', 'toha.rbpharma@gmail.com', '01912973959', NULL, '01703466797', NULL, NULL, 'digital advertising proposal send', 'Proposal Sent', '2022-05-07 07:12:51', '2022-05-07 08:30:40'),
(1563, 'Md Masudul Haque', NULL, '01937161992', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-05-08 03:01:41', '2022-05-08 03:01:41'),
(1564, 'Taswar Ahmad Sir', 'tasawar1996@hotmail.com', '01687600229', NULL, NULL, NULL, NULL, 'Business Website proposal send Whats app', 'Proposal Sent', '2022-05-09 03:45:22', '2022-05-09 09:51:02'),
(1565, 'unknown', NULL, '01844508528', NULL, NULL, NULL, NULL, 'janaba', 'Contacted', '2022-05-09 07:10:38', '2022-05-09 09:47:28'),
(1566, 'Raju Ahmmed sir', 'digitalmarketer435@gmail.com', '01650024958', NULL, NULL, NULL, NULL, 'chaldal.ctpbd.com ar moto korta chai', 'Contacted', '2022-05-09 11:29:33', '2022-05-09 11:58:09'),
(1567, 'Abul Kalam Azad Sir', 'akazadbde@gmail.com', '01321134469', NULL, '01798111555', NULL, NULL, 'Ecommerce Website(Multipurpose)', 'Contacted', '2022-05-09 11:51:01', '2022-05-09 11:57:55'),
(1568, 'Shobo Sir', NULL, '+09696601373', NULL, NULL, NULL, NULL, 'ubar ar moto ap korba', 'Contacted', '2022-05-09 14:59:58', '2022-05-10 09:35:12'),
(1569, 'Jaber', 'Basmatiprimero@gmail.com', '+34 602 12 60 22', NULL, NULL, NULL, NULL, 'Restaurant er jonno website korbe. what app knock ecommerce website proposal send', 'Qualified', '2022-05-10 09:20:03', '2022-05-23 03:56:11'),
(1570, 'un known', NULL, '+966 50 928 2248', NULL, NULL, NULL, NULL, 'Sample website https://viefann.com/   http://www.beststarindonesia.com   Tradind export website korbe.    Knoc him whatsapp and imo.\r\n\r\nhttp://www.beststarindonesia.com', 'lead', '2022-05-11 10:28:38', '2022-05-11 10:28:38'),
(1571, 'Md Harun', NULL, '01742511399', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-05-12 09:57:19', '2022-06-15 03:35:57'),
(1572, 'Araf', 'stoffaofficial@gmail.com', '0 1909-468393', NULL, NULL, NULL, NULL, 'Ecommerce website korabe.Proposal send', 'Proposal Sent', '2022-05-14 10:03:44', '2022-05-15 03:28:22'),
(1573, 'Unnamed', NULL, '+97332206358', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-05-15 03:52:49', '2022-05-15 03:52:49'),
(1574, 'Zaman', NULL, '01771855555', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-05-15 03:54:10', '2022-05-15 03:54:10'),
(1575, 'Md Nahiduzzaman', NULL, '01712314007', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-05-15 03:55:15', '2022-06-14 08:10:20'),
(1576, 'Md Hasan', NULL, '01912195242', NULL, NULL, NULL, NULL, 'Needing website for rent a car', 'Qualified', '2022-05-15 03:56:41', '2022-06-14 08:09:53'),
(1577, 'Monir', 'hrd@radicaldesignltd.com', '01712589291', NULL, NULL, NULL, NULL, 'whats app proposal send', 'Proposal Sent', '2022-05-15 12:54:53', '2022-05-15 12:55:02'),
(1578, 'Shihan Mahmud Khan', 'shihan@waltonbd.com', '01678049053', NULL, NULL, 'Walton Group', 'Plot No: 1088, Block: I , Road:Sabrina Soobhan 5th Avenue , Bashundhara .', NULL, 'Quote Sent', '2022-05-16 10:45:36', '2022-05-16 10:45:36'),
(1579, 'Mehedi Hasan', 'mehedi@labaidpharma.com', '01766664061', NULL, NULL, 'Labaid Pharmaceticals Ltd .', NULL, NULL, 'Disqualified', '2022-05-16 12:22:55', '2022-06-14 09:22:09'),
(1580, 'Mr. Ashish', 'propertychannelbd@gmail.com', '01712014659', NULL, NULL, 'Property Channel', NULL, NULL, 'Quote Sent', '2022-05-16 12:31:35', '2022-05-16 12:31:35'),
(1581, 'Md. Kamruzzaman', 'suvasishsss@gmail.com', '01712080699', NULL, NULL, 'BK Group', 'Green City Regency (Level#07), Suite:1-4 26,27 & 27/1 Kakrail, Dhaka, Dhaka, 1000', NULL, 'Converted to Customer', '2022-05-17 05:02:45', '2022-05-21 08:49:08'),
(1582, 'Md. Shahriar Khan', 'shahriar@twosuns.asia', '01717927556', NULL, '01711203199', 'Twosuns Bangladesh Limited', 'Twosuns Bangladesh limited.137/1Bashon Sharak,Adepasha,Gazipur-1704,Bangladesh', 'business website Redesigin koraba', 'Proposal Sent', '2022-05-17 05:13:19', '2022-05-18 09:57:22'),
(1583, 'Mizan Hawlader Rubel', 'rubel@chayonassociates.com', '01681036114', NULL, NULL, 'Chayon Associates', 'Holy Jobaida corner, 2nd floor, House No: 8A/B1, Road: New 13, sobahanbag, Dhanmondi, Dhaka-1205', NULL, 'Converted to Customer', '2022-05-17 06:29:37', '2022-06-07 11:46:37'),
(1584, 'Yousub', 'yousub@hameemgroup.com', '01313712189', NULL, NULL, 'Hameem group', NULL, 'vps hosting : 25000 Hameem group.net', 'Proposal Sent', '2022-05-17 07:33:09', '2022-05-18 09:56:31'),
(1585, 'un known', NULL, '01648125681', NULL, NULL, NULL, NULL, 'new lead', 'Disqualified', '2022-05-17 10:15:52', '2022-05-18 09:56:04'),
(1586, 'Tanvir sir', NULL, '01689707577', NULL, NULL, NULL, NULL, 'Hrm payroll Auto Attendance Auto Salary sheet', 'lead', '2022-05-18 03:08:20', '2022-05-22 10:37:09'),
(1587, 'Shariyar Sakibur Rahman', 'sakib@bruvanagroup.com', '01409970900', NULL, '01711453781 whats app number', NULL, 'Confidence Centre,Lvl-19,Tower-2,Kha-9,Shahjapur,Progoti Shoroni,Gulshan,Dhaka-1212', 'Business Website proposal send', 'Proposal Sent', '2022-05-18 08:17:12', '2022-05-23 04:40:24'),
(1588, 'Tarun Deb', 'traveldealsbd.111@gmail.com', '01765295699', NULL, NULL, 'Travel Deals', 'Hazaribagh near Leather Institute Dhaka', NULL, 'Disqualified', '2022-05-18 10:43:41', '2022-06-14 09:22:16'),
(1589, 'Mr.Shafe', 'shafeahmed00@gmail.com', '01322889957', NULL, NULL, NULL, NULL, 'Business Website quotation Send', 'Quote Sent', '2022-05-19 05:31:06', '2022-05-21 05:59:41'),
(1590, 'Steel Times Private Limited', 'steeltimes.pvt@gmail.com', '01705268248', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-05-19 07:44:21', '2022-06-14 08:08:55'),
(1591, 'Steel Times', 'steeltimes.pvt@gmail.com', '01705-268248', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-05-19 07:49:56', '2022-06-14 08:09:12'),
(1592, 'Abu Sayeed', 'sayeedguac@gmail.com', '01850602003', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-05-21 05:54:38', '2022-05-21 05:54:38'),
(1593, 'Sabbir Hossain Robel', 'sakin.100@gmail.com', '01937662584', NULL, NULL, 'CGS Global Trade Ltd', 'Suit I-2, Level-8, Sky Lark Point,  24/A Bijoy Nagar Dhaka-1000, Bangladesh.', NULL, 'Proposal Sent', '2022-05-21 11:11:54', '2022-05-21 11:11:54'),
(1594, 'Istiaque Ahmed', NULL, '01400441031', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'lead', '2022-05-21 12:10:53', '2022-05-21 12:15:59'),
(1595, 'Faysal', NULL, '01679568257', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Proposal Sent', '2022-05-21 12:52:13', '2022-05-21 12:52:48'),
(1596, 'Sourov Rayhan', 'sourov.rayhan@gmail.com', '01713032395', NULL, NULL, 'Bengal Beauty Cosmetics', 'House 28 Road 07 Sector 04 Uttara 1230', NULL, 'Quote Sent', '2022-05-22 08:35:00', '2022-05-22 08:35:00'),
(1597, 'Raju', NULL, '+09610066666', NULL, '01913554442', 'goldsands Hotal&Resorts', '47,Gulshanbadda link Road,Dhaka-1212 Bangladesh Goldsands Company', 'Website and apps niea kotha bolba kalka google meeting lunche ar por', 'Contacted', '2022-05-23 04:56:41', '2022-05-23 06:03:58'),
(1598, 'Redowan Dhrubo', 'dhrubo223@gmail.com', '01681777383', NULL, NULL, NULL, NULL, NULL, 'Disqualified', '2022-05-23 07:00:05', '2022-06-14 09:24:43'),
(1599, 'Niaz Parvez', 'niaz@rbimco.com', '01914577240', NULL, NULL, 'MHK Terminal Ltd', NULL, 'Graphices Design', 'Contacted', '2022-05-24 03:45:40', '2022-05-24 03:49:48'),
(1600, 'Md. Moshiur Rahman', 'moshiur.mm@gmail.com', '01712967767', NULL, NULL, 'Rahmans Academy', NULL, 'rahmans-academy.com', 'Converted to Customer', '2022-05-24 08:24:42', '2022-05-24 08:24:42'),
(1601, 'MustakimTaj', 'mustakimtaj@gmail.com', '01745070437', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-05-24 09:21:53', '2022-05-24 09:21:53'),
(1602, 'Mr.Towhied', NULL, '01764623155', NULL, NULL, NULL, NULL, 'informative', 'lead', '2022-05-24 12:09:43', '2022-05-24 12:09:43'),
(1603, 'Mr.khair', 'khairnuha813@gmail.com', '01822-857626', NULL, '01935333555', NULL, NULL, 'Affiliate marketing ecommerce website.', 'Proposal Sent', '2022-05-25 07:48:15', '2022-05-26 11:59:45'),
(1604, 'Rafsan Zahid', 'rafsanzahid09@gmail.com', '01791693663', NULL, NULL, NULL, NULL, 'Business Development & Marketing Executive \r\nFestivibe Demo Send', 'Contacted', '2022-05-25 08:10:36', '2022-05-25 10:20:38'),
(1605, 'Roman Tanvir', 'romance_2020@live.com', '01600-329292', NULL, NULL, NULL, NULL, 'Web Design, Logo Design', 'Qualified', '2022-05-25 10:29:00', '2022-06-14 08:08:25'),
(1606, 'Tarikul islam', NULL, '01716273334', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-05-25 10:47:05', '2022-05-25 11:28:22'),
(1607, 'Bikash roy', 'bikash.roy@omegaeximltd', '01988833186', NULL, NULL, NULL, NULL, 'Whats app Ecommerce Website Proposal Send', 'Proposal Sent', '2022-05-25 11:26:22', '2022-05-26 09:13:31'),
(1608, 'un known', NULL, '01886637357', NULL, NULL, NULL, NULL, 'no Response', 'Converted to Customer', '2022-05-25 11:35:24', '2022-06-14 06:42:59'),
(1609, 'Mr.Rony', NULL, '01611444465', NULL, NULL, NULL, NULL, 'Ecommerce Website', 'Qualified', '2022-05-26 08:08:45', '2022-05-28 10:24:26'),
(1610, 'Hafizur Rahman', 'hafizur.upwork@gmail.com', '01755168490', NULL, NULL, NULL, NULL, 'Informative Website Proposal send', 'Proposal Sent', '2022-05-26 11:32:23', '2022-05-26 11:47:33'),
(1611, 'Asaduzzaman nur', 'md.a.nur.uts@gmail.com', '+61421961704', NULL, NULL, NULL, NULL, 'Whats app knock ecommerce and degital advertising proposal send', 'Quote Sent', '2022-05-28 06:13:01', '2022-06-02 08:23:23'),
(1612, 'Md. Shifaz Mamur', 'shifazmamur7@gmail.com', '01779158743', NULL, NULL, NULL, NULL, 'Project Details: Needs a responsive website for Hospital. All the facilities of a Hospital are there, and a full-fledged interactive website is required with a fantastic user experience.', 'Proposal Sent', '2022-05-28 07:16:42', '2022-05-28 07:16:42'),
(1613, 'TAASH CLOTHING', 'tahsinislam257@gmail.com', '01927288459', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-05-28 07:17:17', '2022-05-28 07:17:17'),
(1614, 'Sakib Ashraf', 'sakib.ashraf55@gmail.com', '01308383555', NULL, NULL, NULL, NULL, 'Project Details: Developing a restaurant & hotel/resort in my village.\r\nI want a full package, includes:\r\n1. A well decorated website for the resort & restaurant.\r\n2. Restaurant’s software.\r\n3. A facebook page with authentic likes (not the fake ones).\r\n4. An instagram account verified account of the project\r\n5. Advertisement on social media', 'Disqualified', '2022-05-28 07:27:05', '2022-06-14 09:26:03'),
(1615, 'MD. Shohorab', 'shohorab.courtyard@gmail.com', '01810029557', NULL, NULL, 'Bombay Sweets & Chanachur', NULL, NULL, 'Proposal Sent', '2022-05-28 07:29:11', '2022-05-28 07:29:11'),
(1616, 'Sanjda', NULL, '01798594893', NULL, NULL, 'International Development Group', NULL, NULL, 'Disqualified', '2022-05-28 07:29:57', '2022-06-14 09:26:03'),
(1617, 'Ariful islam', 'dhakapest2000@gmail.com', '01736091436', NULL, NULL, NULL, NULL, 'Tourism website', 'Proposal Sent', '2022-05-28 07:30:47', '2022-05-28 07:30:47'),
(1618, 'Orovi Charles', NULL, '015-33867003', NULL, NULL, NULL, NULL, 'exotravel.com but agent hub lagba no response', 'Contacted', '2022-05-28 08:27:00', '2022-05-28 10:22:56'),
(1619, 'Mr.Salim', 'bdkidscorner.info@gmail.com', '01726934173', NULL, NULL, NULL, NULL, 'Potapot.com dakbo/bdkidscorner.com (domain)', 'Quote Sent', '2022-05-28 08:31:20', '2022-05-28 10:21:09'),
(1620, 'MR. Joy', 'joy@vistabangladesh.com', '01701033256', NULL, NULL, 'VISTA Electronics Ltd.', 'Plot # 5/A, 1st Floor, Road # 136-137, Gulshan - 1, Dhaka, Bangladesh.', NULL, 'Proposal Sent', '2022-05-28 10:11:34', '2022-05-29 04:40:42'),
(1621, 'Taukir Rahat Bishal', 'bishal@creativetechpark.com', '01533311709', NULL, NULL, 'ABC Company', 'Dhaka', NULL, 'Disqualified', '2022-05-28 11:33:18', '2022-06-06 03:02:56'),
(1622, 'Asim', 'asimitsbd@gmail.com', '0175-5949191', NULL, NULL, NULL, NULL, 'Ecommerce Website and Account ManagementSystem', 'Disqualified', '2022-05-29 08:08:32', '2022-06-14 06:48:06'),
(1623, 'Tamanna Yasmin', 'tamanna.gie@gmail.com', '01673612613', NULL, NULL, NULL, NULL, NULL, 'Converted to Customer', '2022-05-29 08:24:47', '2022-06-02 04:36:19'),
(1624, 'Zahid Hassan', 'jubayerhossain194@gmail.com', '01988789452', NULL, NULL, NULL, NULL, 'eCommerce Website proposal send', 'Proposal Sent', '2022-05-29 11:47:32', '2022-05-29 11:47:44'),
(1625, 'Md Mizzanur Rahman', 'mizan.ck30@gmail.com', '01719910123', 'shohel.unity@gmail.com', NULL, NULL, NULL, 'Business Website Whats app proposal send', 'Proposal Sent', '2022-05-30 03:46:34', '2022-06-02 12:24:11'),
(1626, 'Gary Tarafder', 'gary.tarafder@gmail.com', '+61 460 290 874', NULL, NULL, 'Creative Driver Training', NULL, NULL, 'Converted to Customer', '2022-05-30 07:46:00', '2022-06-01 03:52:33'),
(1627, 'Shoile Khandokar', NULL, '01973328931', NULL, NULL, NULL, NULL, 'business website Pakage-1 proposal  and Demo send', 'Proposal Sent', '2022-05-31 08:46:08', '2022-05-31 08:47:35'),
(1628, 'Md.Khorshed', NULL, '01798385009', NULL, NULL, NULL, NULL, 'kotha bolba korse korba', 'Disqualified', '2022-05-31 08:49:39', '2022-05-31 10:30:08'),
(1629, 'Md Belayet', 'belayet@bhis.net', '01674104646', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2022-06-01 09:14:24', '2022-06-14 08:06:12'),
(1630, 'Khyrul Bashar', 'khyrul.bashar@uatech.biz', '01840007712', NULL, NULL, 'Unipolar Automation Technologies', 'Unipolar Automation HQ, 20/2, West Panthapath, Dhaka 1205', NULL, 'Quote Sent', '2022-06-01 09:57:21', '2022-06-01 09:57:21'),
(1631, 'Muhammad Shamim Khalifa', 'Mdshamimkhalifa0@gmail.com', '01734852204', NULL, NULL, NULL, NULL, 'Ecommerce Website Pakage-1 Whats app', 'Proposal Sent', '2022-06-01 11:18:36', '2022-06-01 11:27:00'),
(1632, 'unknown', NULL, '01618010900', NULL, NULL, NULL, NULL, 'civil touch bd ltd kage dia deca', 'Disqualified', '2022-06-02 08:22:46', '2022-06-14 06:44:38'),
(1633, 'Aynal Sheikh', NULL, '01731703550', NULL, NULL, NULL, NULL, 'Mobile app korbe. Requirement pathabe...   Sathe admin backend thakbe laravel', 'Contacted', '2022-06-02 11:13:37', '2022-06-02 16:33:58'),
(1634, 'Nidalchy', 'nidalchy@gmail.com', '01976358690', NULL, NULL, NULL, NULL, 'Ecommerce Website multivendor (laravel) korier ar shata connate korta hoba\r\nandroid and Ios app lagba.', 'Proposal Sent', '2022-06-02 12:50:08', '2022-06-02 12:55:28'),
(1635, 'Muhammad', 'camerabazar2010@gmail.com', '01917256756', NULL, '0241050766', NULL, 'Address: 55/A, Block # 3, New Super Market, Baitul Mukarram, 1000 Phone: (+880) 1917-256756 Telephone: (+880) 2-41050766 G-Mail: camerabazar2010@gmail.com E-Mail: info@camerabazar.net', 'camerabazar.net', 'Contacted', '2022-06-04 03:15:17', '2022-06-04 04:06:34'),
(1636, 'Ahmed Saddam Hossain', 'ahmedsaddam697@gmail.com', '01318365273', NULL, NULL, NULL, NULL, 'Erp soft wear lagba 50000k kalka janaba', 'Disqualified', '2022-06-04 10:22:44', '2022-06-14 06:54:26'),
(1637, 'Mr.Mahir', NULL, '017644-03628', NULL, NULL, NULL, NULL, 'Business Website Pakage-1', 'Contacted', '2022-06-06 04:13:51', '2022-06-06 04:34:48'),
(1638, 'Reazul Amin Pulok', 'reazul.asml@akijsteel.com', '01521105261', 'metaltalks@akijsteel.com', NULL, 'Akij Group', NULL, 'meeting 3pm SimpletreeLighthouse,Plot-53 Road-21,Block-B,Level-6,Kamal Ataturk,Banani,Dhaka-1213.', 'Contacted', '2022-06-06 04:23:45', '2022-06-06 04:24:06'),
(1639, 'Anana Bristi', 'ananabristi@gmail.com', '01755614856', NULL, NULL, NULL, NULL, 'Graphic Design', 'Qualified', '2022-06-07 07:13:20', '2022-06-14 08:07:59'),
(1640, 'Mohammed Maniruli Islam', 'info@bdlwe.net', '01817031541', 'bdlwc15@gmail.com', '01975940077,01401130800', NULL, NULL, 'Business Website pakage-1', 'Qualified', '2022-06-07 12:10:24', '2022-06-07 12:10:36'),
(1641, 'Faisal Kabir', NULL, '01677421721', NULL, NULL, NULL, NULL, 'korba na', 'Contacted', '2022-06-07 12:13:03', '2022-06-07 12:13:23'),
(1642, 'Mr.Sagor', 'hifive.playzone@gmail.com', '01715-669113', NULL, '01400556677', 'Hi Five', NULL, 'Ero software Quotation dibo', 'Quote Sent', '2022-06-08 10:44:22', '2022-06-11 03:47:30'),
(1643, 'Tarek Al Mahmud', 'tarek@immivisa.com.au', '01626401309', NULL, '01921996529', 'Immi visa Pty Ltd', 'Suite-405,3rd Floor, Shapla Bhaban. 49, Motijheel C/A Dhaka-1000,Bangladesh', 'Business Website Quotation Send', 'Quote Sent', '2022-06-09 03:33:37', '2022-06-18 08:41:28'),
(1644, 'Shoharab Hossain', NULL, '880 1923-352842', NULL, '01741122510', NULL, NULL, 'kalka kotha bolbo whats app kotha hoisa.', 'Proposal Sent', '2022-06-10 11:23:35', '2022-06-14 06:43:24'),
(1645, 'Mr.Muquit', 'muquit@finis.com.bd', '01710332511', NULL, NULL, NULL, NULL, 'Business Website Whats app Proposal Send', 'Proposal Sent', '2022-06-11 04:32:27', '2022-06-11 04:32:35'),
(1646, 'Md Nazmul hasan', 'nazmulhasankhan75@gmail.com', '880 1716-172783', NULL, NULL, NULL, NULL, 'Ecommerce Website multivendor koraba Whats app proposal send', 'Proposal Sent', '2022-06-11 15:10:55', '2022-06-11 15:14:20'),
(1647, 'Bivas saha', 'bivassaha65@gmail.com', '01757601885', NULL, NULL, NULL, NULL, 'Business Website Whats app Proposal Send 01757601885 Demo diase', 'Proposal Sent', '2022-06-12 04:02:47', '2022-06-13 04:23:01'),
(1648, 'Nafiz Zubar Khan', 'info@bsdcbd.com', '01843966462', NULL, NULL, 'BSDC', 'House 22, road 140, 3rd floor, Regus - Dhaka .', 'http://bsdcbd.com/  Website Redesign, Mobie app, SEO', 'Qualified', '2022-06-14 06:02:47', '2022-06-15 12:36:55'),
(1649, 'MD. Hasan', 'it@zabeerhotel.com', '01711408955', NULL, NULL, 'Zabeer Hotel', '1256,M M Ali Road Jashore, Bangladesh', NULL, 'Quote Sent', '2022-06-14 06:06:37', '2022-06-14 06:06:37'),
(1650, 'Syed  Mahbubul', 'info@riveraintour.com', '01712292871', NULL, NULL, NULL, NULL, 'Informative Website', 'Qualified', '2022-06-14 06:28:10', '2022-06-14 08:06:58'),
(1651, 'Shahed Md Imran', 'info@royalvisiontourism.com', '01712100337', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2022-06-14 06:31:32', '2022-06-14 08:06:44'),
(1652, 'Syed Babar Uddin', 'kbstravels33@gmail.com', '01711593303', NULL, NULL, NULL, NULL, NULL, 'Qualified', '2022-06-14 06:40:38', '2022-06-14 08:06:28'),
(1653, 'Shanta Deb Saha', 'ajharnatrade@gmail.com', '01716936559', NULL, NULL, NULL, NULL, 'Informative Website', 'Qualified', '2022-06-14 06:45:30', '2022-06-14 08:05:52'),
(1654, 'Mohammad shah alam Patwary', 'arifislam123.feni@gmail.com', '01919141273', 'info@cfinteducation.com', NULL, NULL, NULL, NULL, 'Qualified', '2022-06-14 09:13:02', '2022-06-14 09:13:02'),
(1655, 'Foysal Zitu', 'it@waseqgroupbd.com', '01939210921', NULL, NULL, 'WASEQ GROUP', 'House # 5, Road # 08,  Sector # 06. Uttara, Dhaka,  Bangladesh', NULL, 'Quote Sent', '2022-06-14 10:11:26', '2022-06-14 10:11:26'),
(1656, 'Kamrul', 'kamrulchybd@gmail.com', '01716225752', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-06-15 07:30:56', '2022-06-15 07:30:56'),
(1657, 'Zahiruddin Chowdhury', 'classicoverseas21@gmail.com', '01819296538', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-06-15 09:39:04', '2022-06-21 04:19:22'),
(1658, 'Md Omor Faruk', 'omorfaruk8085@gmail.com', '01834112247', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal send package-1 Multivendor', 'Proposal Sent', '2022-06-18 06:33:06', '2022-06-18 07:33:04'),
(1659, 'Tamim', 'tamimkibria96@gmail.com', '01681219780', NULL, NULL, NULL, NULL, 'Ecommerce Website and seo proposal send whats app', 'Proposal Sent', '2022-06-18 07:32:55', '2022-06-18 07:33:11'),
(1660, 'Sushanta Sharma', NULL, '01771803432', NULL, NULL, NULL, NULL, NULL, 'Contacted', '2022-06-18 08:21:09', '2022-06-18 08:21:09'),
(1661, 'Md. Didar Hossan', 'dmjtradeinternational@gmail.com', '01727566506', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-06-18 08:22:46', '2022-06-18 08:22:46'),
(1662, 'Reazul Amin Pulok', 'reazul.asml@akijsteel.com', '0152-1105261', 'thshakil@akijbiax.com', NULL, NULL, NULL, 'Business Website Design and Development.', 'Quote Sent', '2022-06-18 11:53:49', '2022-06-18 12:21:28'),
(1663, 'City Furniture', 'cityfurniture1991@gmail.com', '01711702814', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-06-19 06:59:02', '2022-06-19 06:59:02'),
(1664, 'Mr Tamim', 'provet.tamim@gmail.com', '01847303362', NULL, NULL, NULL, NULL, 'Ecommerce Website Package-1', 'Qualified', '2022-06-19 09:48:44', '2022-06-19 09:50:04'),
(1665, 'Minazul', 'megh@site.theaircons.com', '01799384456', NULL, NULL, NULL, NULL, 'Ecommerce website mail id diba whats app a proposal send and mail id.', 'Proposal Sent', '2022-06-20 02:42:18', '2022-06-20 02:50:10'),
(1666, 'Zulfikar Ali', 'alibhotto@gmail.com', '01717578176', NULL, NULL, NULL, NULL, NULL, 'Quote Sent', '2022-06-20 08:38:54', '2022-06-20 08:38:54'),
(1667, 'Mahmud Boby', 'mahmud.pr@sub.edu.bd', '01911800947', NULL, NULL, 'State University of Bangladesh', NULL, '20.06.2022- state university er website banabe Quotation pathate hobe', 'Quote Sent', '2022-06-20 10:14:08', '2022-06-20 10:39:45'),
(1668, 'Reza', 'rezakarimmd@icloud.com', '01711595344', NULL, NULL, NULL, NULL, 'Ecommerce Website proposal send Whats App', 'Proposal Sent', '2022-06-21 08:58:43', '2022-06-21 08:59:00'),
(1669, 'Sujon', NULL, '01943431606 /  01613018146', NULL, NULL, NULL, NULL, NULL, 'Proposal Sent', '2022-06-21 11:52:04', '2022-06-22 04:02:44'),
(1670, 'Rakib', 'hosenrakibul99@gmail.com', '01870720006', NULL, NULL, NULL, NULL, 'Garment Production Systems', 'Quote Sent', '2022-06-21 11:56:39', '2022-06-21 12:40:26'),
(1671, 'Tamjit', NULL, '01705694592', NULL, NULL, NULL, NULL, 'xlclipping Services.com vackup kalka bolbo', 'Contacted', '2022-06-21 14:38:40', '2022-06-21 14:38:51'),
(1672, 'Masud', 'masud@kramtex.com', '01911091332', NULL, NULL, NULL, NULL, 'business website', 'Proposal Sent', '2022-06-21 14:49:25', '2022-06-21 14:49:39'),
(1673, 'Muhammadur Rahman (Swapnil)', 'care@karupannya.com.bd', '01712671499', NULL, NULL, 'Karupannya', NULL, NULL, 'Quote Sent', '2022-06-22 09:58:16', '2022-06-22 09:58:16');

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

--
-- Dumping data for table `client_project`
--

INSERT INTO `client_project` (`id`, `project_id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-07-28 16:26:50', '2022-07-28 16:26:50');

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

--
-- Dumping data for table `client_user`
--

INSERT INTO `client_user` (`id`, `client_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_invoices`
--

CREATE TABLE `custom_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL DEFAULT '2022-07-28',
  `total_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `trams_and_condition` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privicy_and_policy` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_invoices`
--

INSERT INTO `custom_invoices` (`id`, `client_id`, `user_id`, `subject`, `date`, `total_price`, `quantity`, `discount`, `trams_and_condition`, `privicy_and_policy`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 'this is for test', '2022-07-28', 2200, NULL, 200, '<p>trams of services</p>', '<p>payment policy</p>', 0, '2022-08-01 03:28:02', '2022-08-01 03:28:02'),
(2, 9, 1, 'invoice tow', '2022-07-28', 2500, NULL, 500, '<p>trams of services</p>', '<p>payment policy</p>', 1, '2022-08-01 04:43:05', '2022-08-01 04:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `designs`
--

CREATE TABLE `designs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designs`
--

INSERT INTO `designs` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ecommerce Website Design Package 4 (Multi-Vendor)', 60000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 20 GB\r\nMonthly Data Transfer - 200GB\r\nEmail Address (Business) - 30\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 30\r\nDesign Concept - Modern\r\nTotal Product Upload by Us - 100\r\nProduct Category Create by Us - 40\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nMulti-Vendor Registration\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nLive Chat\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 4 Times\r\nDelivery Timeline - 30 Days\r\nCMS/ Framework/ Platform - WooCommerce\r\nCustomer Support - Email/Chat/Phone', '2021-02-05 10:58:43', '2021-03-16 09:32:46', NULL),
(2, 'Ecommerce Website Design Package 3', 50000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 20 GB\r\nMonthly Data Transfer - 200GB\r\nEmail Address (Business) - 30\r\nHome page with animation\r\nDynamic Page Create by Us - up to 30\r\nDesign Concept - Advance\r\nTotal Product Upload by Us - 100\r\nProduct Category Create by Us - 40\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nLive Chat\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 4 Times\r\nDelivery Timeline - 25 Days\r\nCMS/ Framework/ Platform - WooCommerce\r\nCustomer Support - Email/Chat/Phone', '2021-02-05 10:59:05', '2021-03-16 09:30:00', NULL),
(3, 'Ecommerce Website Design Package 2', 35000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 10 GB\r\nMonthly Data Transfer - 100 GB\r\nEmail Address (Business) - 20\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 20\r\nDesign Concept - Modern\r\nTotal Product Upload by Us - 50\r\nProduct Category Create by Us - 30\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 3 Times\r\nDelivery Timeline - 20 Days\r\nCMS/ Framework/ Platform - Woocommerce\r\nCustomer Support - Email/Chat/Phone', '2021-02-12 14:00:02', '2021-07-12 08:38:34', NULL),
(4, 'Ecommerce Website Design Package 1', 25000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 5 GB\r\nMonthly Data Transfer - 50 GB\r\nEmail Address (Business) - 15\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 10\r\nDesign Concept - Basic\r\nTotal Product Upload by Us - 30\r\nProduct Category Create by Us - 20\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nGoogle Map Integration\r\nTotal Revisions - 2 Times\r\nDelivery Timeline - 15 Days\r\nCMS/ Framework/ Platform - Woocommerce\r\nCustomer Support - Email/Chat/Phone', '2021-02-12 14:01:51', '2021-03-16 05:37:57', NULL),
(6, 'Ecommerce Website Design Package 5', 200000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 10 GB\r\nMonthly Data Transfer - 100GB\r\nEmail Address (Business) - 20\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 20\r\nDesign Concept - Modern\r\nTotal Product Upload by Us - 50\r\nProduct Category Create by Us - 30\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 3 Times\r\nDelivery Timeline - 120 Days\r\nCMS/ Framework/ Platform - Laravel\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 09:35:19', '2021-03-16 09:42:38', NULL),
(7, 'Ecommerce Website Design Package 6 (Multi-Vendor)', 300000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 20 GB\r\nMonthly Data Transfer - 200GB\r\nEmail Address (Business) - 30\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 30\r\nDesign Concept - Modern\r\nTotal Product Upload by Us - 100\r\nProduct Category Create by Us - 40\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nMulti-Vendor Registration\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nLive Chat\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 4 Times\r\nDelivery Timeline - 150 Days\r\nCMS/ Framework/ Platform - Laravel\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 09:37:46', '2021-03-16 09:37:46', NULL),
(8, 'Ecommerce Website Design Package 7', 400000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 10 GB\r\nMonthly Data Transfer - 100GB\r\nEmail Address (Business) - 20\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 20\r\nDesign Concept - Modern\r\nTotal Product Upload by Us - 50\r\nProduct Category Create by Us - 30\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 3 Times\r\nDelivery Timeline - 120 Days\r\nCMS/ Framework/ Platform - Asp.net\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 09:42:11', '2021-03-16 09:42:11', NULL),
(9, 'Ecommerce Website Design Package 8 (Multi-Vendor)', 500000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 20 GB\r\nMonthly Data Transfer - 200GB\r\nEmail Address (Business) - 30\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 30\r\nDesign Concept - Modern\r\nTotal Product Upload by Us - 100\r\nProduct Category Create by Us - 40\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nMulti-Vendor Registration\r\nLogo Design (if needed)\r\nResponsive Design\r\nPayment Gateway Integration\r\nInventory Management\r\nContact Form\r\nLive Chat\r\nGoogle Map Integration\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 4 Times\r\nDelivery Timeline - 150 Days\r\nCMS/ Framework/ Platform - Asp.net\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 09:46:04', '2021-03-16 09:46:04', NULL),
(10, 'Informative Website Design Package 1', 15000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 2 GB\r\nMonthly Data Transfer- 20 GB\r\nEmail Address (Business) - 10\r\nHome page with animation\r\nDynamic Page Create by Us: Up to 8\r\nDesign Concept - Basic\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nTotal Revisions- 2 Times\r\nDelivery Timeline- 15 Days\r\nCMS/ Framework/Platform- Wordpress\r\nCustomer Support- Email/ Chat / Phone', '2021-03-16 09:51:07', '2021-03-16 09:52:28', NULL),
(11, 'Informative Website Design Package 2', 20000, '1 Domain (.com .net .org .info)\r\nWeb Hosting- 2 GB\r\nMonthly Data Transfer- 20GB\r\nEmail Address (Business)- 10\r\nHome page with animation\r\nDynamic Page Create by Us - Up to 15\r\nDesign Concept - Modarn\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions-3 Times\r\nDelivery Timeline- 20 Days\r\nCMS/ Framework/Platform - WordPress\r\nCustomer Support-Email/ Chat / Phone', '2021-03-16 09:52:07', '2021-03-16 09:52:07', NULL),
(12, 'Informative Website Design Package 3', 30000, '1 Domain (.com .net .org .info)\r\nWeb Hosting- 5 GB\r\nMonthly Data Transfer- 50 GB\r\nEmail Address (Business)- 15\r\nHome page with animation\r\nDynamic Page Create by Us: Up to 25\r\nDesign Concept- Advanced\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nLive Chat\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions- 4 Times\r\nDelivery Timeline - 25 Days\r\nCMS/ Framework/Platform- WordPress\r\nCustomer Support-Email/ Chat / Phone', '2021-03-16 09:53:53', '2021-03-16 09:54:06', NULL),
(13, 'Informative Website Design Package 4', 50000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 10 GB\r\nMonthly Data Transfer - 100 GB\r\nEmail Address (Business)- 20\r\nHome page with animation\r\nDynamic Page Create by Us: Up to 40\r\nDesign Concept - Elite\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nLive Chat\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 5 Times\r\nDelivery Timeline - 30 Days\r\nCMS/ Framework/Platform-WordPress\r\nCustomer Support- Email/ Chat / Phone', '2021-03-16 09:55:12', '2021-03-16 09:55:12', NULL),
(14, 'Informative Website Design Package 5 (Laravel)', 150000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 5 GB\r\nMonthly Data Transfer - 50 GB\r\nEmail Address (Business)- 15\r\nHome page with animation\r\nDynamic Page Create by Us: Up to 20\r\nDesign Concept - Modern\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nLive Chat\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 3 Times\r\nDelivery Timeline - 90 Days\r\nFramework/Platform- Laravel\r\nCustomer Support- Email/ Chat / Phone', '2021-03-16 09:56:26', '2021-03-16 10:07:31', NULL),
(15, 'Informative Website Design Package 6 (Laravel)', 200000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 10 GB\r\nMonthly Data Transfer - 100 GB\r\nEmail Address (Business)- 20\r\nHome page with animation\r\nDynamic Page Create by Us: Up to 40\r\nDesign Concept - Advanced\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nLive Chat\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 4 Times\r\nDelivery Timeline - 120 Days\r\nFramework/Platform-Laravel\r\nCustomer Support- Email/ Chat / Phone', '2021-03-16 10:01:28', '2021-03-16 10:07:13', NULL),
(16, 'Informative Website Design Package 7 (Asp.net)', 250000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 5 GB\r\nMonthly Data Transfer - 50 GB\r\nEmail Address (Business)- 15\r\nHome page with animation\r\nDynamic Page Create by Us: Up to 20\r\nDesign Concept - Modern\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nLive Chat\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 3 Times\r\nDelivery Timeline - 90 Days\r\nFramework/Platform- Asp.net\r\nCustomer Support- Email/ Chat / Phone', '2021-03-16 10:03:19', '2021-03-16 10:06:16', NULL),
(17, 'Informative Website Design Package 8 (Asp.net)', 300000, '1 Domain (.com .net .org .info)\r\nWeb Hosting - 10 GB\r\nMonthly Data Transfer - 100 GB\r\nEmail Address (Business)- 20\r\nHome page with animation\r\nDynamic Page Create by Us up to 40\r\nDesign Concept - Advanced\r\nLogo Design (if needed)\r\nResponsive Design\r\nPhoto Gallery\r\nGoogle Map\r\nContact Form\r\nLive Chat\r\nRoyalty-free images\r\nBasic SEO works (Onpage)\r\nTotal Revisions - 4 Times\r\nDelivery Timeline - 120 Days\r\nPlatform - Asp.net\r\nCustomer Support- Email/ Chat / Phone', '2021-03-16 10:05:41', '2021-03-16 10:05:41', NULL),
(18, 'Search Engine Optimization (SEO) Package 1', 72000, 'Price/mo. - ৳ 12,000/mo.\r\nTotal Keywords 5\r\nTimeline At least 4-6 months\r\nPrimary Keywords 2\r\nSecondary Keywords 3\r\nTarget Position 1-8\r\nInitial Analysis\r\nLocal SEO\r\nBusiness Citations\r\nInitial Backlink Check\r\nKeyword Research\r\nContent Duplicate Check\r\nOn Page Optimization\r\nOff Page Optimization\r\nContent Marketing\r\nSocial Media Optimize\r\nWhite Hat Method\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:13:30', '2021-03-16 10:13:30', NULL),
(19, 'Search Engine Optimization (SEO) Package 2', 120000, 'Price/mo. - ৳ 20,000/mo.\r\nTotal Keywords 10\r\nTimeline At least 4-6 months\r\nPrimary Keywords 4\r\nSecondary Keywords 6\r\nTarget Position 1-6\r\nInitial Analysis\r\nLocal SEO\r\nBusiness Citations\r\nInitial Backlink Check\r\nKeyword Research\r\nContent Duplicate Check\r\nOn Page Optimization\r\nOff Page Optimization\r\nContent Marketing\r\nSocial Media Optimize\r\nWhite Hat Method\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:15:12', '2021-03-16 10:15:12', NULL),
(20, 'Search Engine Optimization (SEO) Package 3', 192000, 'Price/mo. - ৳ 32,000/mo.\r\nTotal Keywords 16\r\nTimeline At least 4-6 months\r\nPrimary Keywords 8\r\nSecondary Keywords 8\r\nTarget Position 1-5\r\nInitial Analysis\r\nLocal SEO\r\nBusiness Citations\r\nInitial Backlink Check\r\nKeyword Research\r\nContent Duplicate Check\r\nOn Page Optimization\r\nOff Page Optimization\r\nContent Marketing\r\nSocial Media Optimize\r\nWhite Hat Method\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:16:40', '2021-03-16 10:16:40', NULL),
(21, 'Search Engine Optimization (SEO) Package 4', 288000, 'Price/mo. - ৳ 48,000/mo.\r\nTotal Keywords 32\r\nTimeline At least 4-6 months\r\nPrimary Keywords 16\r\nSecondary Keywords 16\r\nTarget Position 1-5\r\nInitial Analysis\r\nLocal SEO\r\nBusiness Citations\r\nInitial Backlink Check\r\nKeyword Research\r\nContent Duplicate Check\r\nOn Page Optimization\r\nOff Page Optimization\r\nContent Marketing\r\nSocial Media Optimize\r\nWhite Hat Method\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:18:20', '2021-03-16 10:18:20', NULL),
(22, 'Website Maintenance Service Package 1', 2000, 'Price/month\r\nTotal Time/ Month - 4hr\r\nWebsite Backup - Quarterly\r\nFull Website Check-up - Monthly\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:19:59', '2021-03-16 10:19:59', NULL),
(23, 'Website Maintenance Service Package 2', 5000, 'Price/month\r\nTotal Time/ Month - 10hr\r\nWebsite Backup -Monthly\r\nFull Website Check-up - Weekly\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:20:55', '2021-03-16 10:20:55', NULL),
(24, 'Website Maintenance Service Package 3', 10000, 'Price/month\r\nTotal Time/ Month - 24hr\r\nWebsite Backup - Weekly\r\nFull Website Check-up - Daily\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nSEO Works - 1 Keyword\r\nSocial Media Maintenance\r\nLive Remote Support\r\nIT Consulting\r\nOnsite/ Physical Support - 1Time\r\nEmergency Support\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:22:07', '2021-03-16 10:22:07', NULL),
(25, 'Website Maintenance Service Package 4', 20000, 'Price/month\r\nTotal Time/ Month - 56hr\r\nWebsite Backup - Daily\r\nFull Website Check-up - Daily\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nSEO Works -2Keyword\r\nSocial Media Maintenance\r\nLive Remote Support\r\nIT Consulting\r\nDedicated Project Manager\r\nOnsite/ Physical Support - 2Time\r\nEmergency Support\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 10:22:59', '2021-03-16 10:22:59', NULL),
(26, 'Website Maintenance Service Package 5', 30000, 'Price/month\r\nTotal Time/ Month - 85hr\r\nWebsite Backup - Daily\r\nFull Website Check-up - Daily\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nSEO Works - 4 Keyword\r\nSocial Media Maintenance\r\nLive Remote Support\r\nIT Consulting\r\nDedicated Project Manager\r\nOnsite/ Physical Support - 3 Time\r\nEmergency Support\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 15:07:21', '2021-03-16 15:07:21', NULL),
(27, 'Website Maintenance Service Package 6', 40000, 'Price/month\r\nTotal Time/ Month - 120hr\r\nWebsite Backup - Daily\r\nFull Website Check-up - Daily\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nSEO Works - 8 Keyword\r\nSocial Media Maintenance\r\nLive Remote Support\r\nIT Consulting\r\nDedicated Project Manager\r\nOnsite/ Physical Support - 4 Time\r\nEmergency Support\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 15:10:41', '2021-03-16 15:10:41', NULL),
(28, 'Website Maintenance Service Package 7', 50000, 'Price/month\r\nTotal Time/ Month - 140hr\r\nWebsite Backup - Daily\r\nFull Website Check-up - Daily\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nSEO Works - 12Keyword\r\nSocial Media Maintenance\r\nLive Remote Support\r\nIT Consulting\r\nDedicated Project Manager\r\nOnsite/ Physical Support - 6 Time\r\nEmergency Support\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 15:11:36', '2021-03-16 15:11:36', NULL),
(29, 'Website Maintenance Service Package 8', 100000, 'Price/month\r\nTotal Time/ Month - 300hr.\r\nWebsite Backup - Daily\r\nFull Website Check-up - Daily\r\nWebsite Content Updates\r\nVirus/Malware Scanning\r\nCheck Server Issue\r\nTroubleshooting\r\nSEO Works - 12Keyword\r\nSocial Media Maintenance\r\nLive Remote Support\r\nIT Consulting\r\nDedicated Project Manager\r\nOnsite/ Physical Support - 8Time\r\nEmergency Support\r\nCost For Extra Time -600tk/hr.\r\nMonthly Reporting\r\nCustomer Support- Email/Chat/Phone', '2021-03-16 15:13:36', '2021-03-16 15:13:36', NULL),
(30, 'Facebook Ads Monthly Package 1', 10000, 'Media Buying for New - 20USD\r\nPost Engagement/ Clicks - 30USD\r\nFacebook Post Visuals (Design/ Creative) - 04\r\nRevisions for Design Concept- 03\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:20:12', '2021-03-16 15:20:12', NULL),
(31, 'Facebook Ads Monthly Package 2', 20000, 'Media Buying for New - 40USD\r\nPost Engagement/ Clicks - 60USD\r\nFacebook Post Visuals (Design/ Creative) - 10\r\nRevisions for Design Concept- 03\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:20:54', '2021-03-16 15:20:54', NULL),
(32, 'Facebook Ads Monthly Package 3', 40000, 'Media Buying for New - 80USD\r\nPost Engagement/ Clicks - 140USD\r\nFacebook Post Visuals (Design/ Creative) - 20\r\nRevisions for Design Concept- 03\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:21:32', '2021-03-16 15:21:32', NULL),
(33, 'Facebook Ads Monthly Package 4', 50000, 'Media Buying for New - 100USD\r\nPost Engagement/ Clicks - 150USD\r\nFacebook Post Visuals (Design/ Creative) - 30\r\nRevisions for Design Concept- 03\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:22:28', '2021-03-16 15:22:28', NULL),
(34, 'Google Ads Monthly Package 1', 10000, 'Media Buying - 85USD\r\nUp to 3 times revisions for Ad Campaign\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:43:18', '2021-03-16 15:43:18', NULL),
(35, 'Google Ads Monthly Package 2', 20000, 'Media Buying - 170USD\r\nUp to 3 times revisions for Ad Campaign\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:49:36', '2021-03-16 15:49:36', NULL),
(36, 'Google Ads Monthly Package 3', 40000, 'Media Buying - 330USD\r\nUp to 3 times revisions for Ad Campaign\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:51:52', '2021-03-16 15:51:52', NULL),
(37, 'Google Ads Monthly Package 4', 50000, 'Media Buying - 415USD\r\nUp to 3 times revisions for Ad Campaign\r\nReach targeted visitor\r\nCompetitors Analysis\r\nCampaign Monitoring\r\nSocial Media Optimization\r\nReporting of campaign\r\nCustomer Support - Email/Chat/Phone', '2021-03-16 15:53:16', '2021-03-16 15:53:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '.COM Domain Name', 1000, NULL, '2021-02-05 10:59:28', '2021-02-17 17:50:46', NULL),
(2, '.NET Domain Name', 1000, NULL, '2021-02-05 10:59:46', '2021-02-17 17:50:42', NULL),
(3, '.ORG Domain Name', 1200, NULL, '2021-02-12 14:09:45', '2021-02-17 17:50:38', NULL),
(4, '.BIZ Domain Name', 1400, NULL, '2021-02-12 14:10:19', '2021-02-17 17:50:34', NULL),
(5, '.INFO Domain Name', 1000, NULL, '2021-02-12 14:11:32', '2021-02-17 17:50:30', NULL),
(6, '.BLOG Domain Name', 2800, NULL, '2021-02-12 14:12:23', '2021-02-17 17:50:26', NULL),
(7, '.SHOP Domain Name', 4200, NULL, '2021-02-12 14:12:43', '2021-02-17 17:50:22', NULL),
(8, '.COM.BD Domain Name', 2500, NULL, '2021-02-12 14:13:17', '2021-02-17 17:50:18', NULL),
(9, '.CO.UK Domain Name', 1000, NULL, '2021-02-12 14:23:15', '2021-02-17 17:50:14', NULL),
(10, '.CA Domain Name', 1500, NULL, '2021-02-12 14:24:47', '2021-02-17 17:49:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domain_quotation`
--

CREATE TABLE `domain_quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domain_quotation`
--

INSERT INTO `domain_quotation` (`id`, `domain_id`, `quotation_id`, `price`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1000, 0, 0, '2022-07-30 18:22:21', '2022-08-01 04:35:17'),
(3, 1, 557, 1000, 0, 0, '2022-08-01 03:35:11', '2022-08-01 03:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `platform_id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Wordpress Features 1', 6000, '2021-02-05 10:52:46', '2021-02-12 13:50:04', '2021-02-12 13:50:04'),
(2, 1, 'Wordpress Features 2', 2000, '2021-02-05 10:53:03', '2021-02-12 13:50:06', '2021-02-12 13:50:06'),
(3, 1, 'Wordpress Features 3', 1000, '2021-02-05 10:53:31', '2021-02-12 13:50:08', '2021-02-12 13:50:08'),
(4, 1, 'Wordpress Features 6', 600, '2021-02-05 10:54:08', '2021-02-12 13:50:09', '2021-02-12 13:50:09'),
(5, 1, 'Wordpress Features 10', 500, '2021-02-05 10:54:26', '2021-02-12 13:50:11', '2021-02-12 13:50:11'),
(6, 1, 'Wordpress Features 8', 200, '2021-02-05 10:54:51', '2021-02-12 13:50:13', '2021-02-12 13:50:13'),
(7, 2, 'Payment Gateway Integration', 15000, '2021-02-05 10:56:25', '2021-02-17 16:23:57', NULL),
(8, 2, 'Multi-Vendor Registration', 100000, '2021-02-05 10:56:57', '2021-02-17 16:20:32', NULL),
(9, 3, 'Multi-Vendor Registration', 10000, '2021-02-17 16:19:54', '2021-02-17 16:19:54', NULL),
(10, 3, 'Payment Gateway Integration', 2000, '2021-02-17 16:23:02', '2021-02-18 05:59:36', NULL),
(11, 2, 'Google Map Integration', 3000, '2021-02-17 16:35:17', '2021-02-17 16:35:28', NULL),
(12, 3, 'Google Map Integration', 500, '2021-02-17 16:35:43', '2021-02-18 05:58:31', NULL),
(13, 2, 'Basic SEO works (Onpage)', 10000, '2021-02-17 16:36:27', '2021-02-17 16:36:27', NULL),
(14, 3, 'Basic SEO works (Onpage)', 1000, '2021-02-17 16:36:42', '2021-02-18 05:58:06', NULL),
(15, 2, 'Multi-Language Using 3rd Party App', 10000, '2021-02-17 16:42:35', '2021-02-17 16:46:31', NULL),
(16, 3, 'Multi-Language Using 3rd Party App', 8000, '2021-02-17 16:43:35', '2021-02-17 16:46:19', NULL),
(17, 2, 'Multi-Language Using Google Translate', 5000, '2021-02-17 16:45:21', '2021-02-17 16:45:21', NULL),
(18, 3, 'Multi-Language Using Google Translate', 2000, '2021-02-17 16:45:40', '2021-02-17 16:45:40', NULL),
(19, 2, 'Delivery Within 90 Working Days', 15000, '2021-02-17 17:23:37', '2021-02-17 17:41:55', NULL),
(20, 2, 'Delivery Within 120 Working Days', 10000, '2021-02-17 17:24:06', '2021-02-17 17:41:47', NULL),
(21, 2, 'Delivery Within 150 Working Days', 5000, '2021-02-17 17:24:40', '2021-02-17 17:41:41', NULL),
(22, 3, 'Delivery Within 15 Working Days', 500, '2021-02-17 17:25:25', '2021-02-18 05:57:47', NULL),
(23, 3, 'Delivery Timeline: 20 Working Days', 2000, '2021-02-17 17:25:40', '2021-02-17 17:28:32', '2021-02-17 17:28:32'),
(24, 3, 'Delivery Within 25 Working Days', 500, '2021-02-17 17:26:13', '2021-02-18 05:57:52', NULL),
(25, 3, 'Delivery Within 30 Working Days', 500, '2021-02-17 17:26:30', '2021-02-18 05:57:58', NULL);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostings`
--

INSERT INTO `hostings` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '3GB Shared Hosting', 3000, '3000 (MB) Disk Space, 30000 (MB) Monthly Bandwidth, 5 FTP Accounts, 15 Email Accounts, 5 Databases, 5 Sub Domains, 3 Addon Domains', '2021-02-05 11:00:51', '2021-02-12 16:17:14', NULL),
(2, '2GB Shared Hosting', 2000, '2000 (MB) Disk Space, 20000 (MB) Monthly Bandwidth, 5 FTP Accounts, 10 Email Accounts, 5 Databases, 5 Sub Domains, 2 Addon Domains', '2021-02-05 11:01:07', '2021-02-12 16:16:13', NULL),
(3, '5GB Shared Hosting', 5000, '5000 (MB) Disk Space, 50000 (MB) Monthly Bandwidth, 5 FTP Accounts, 15 Email Accounts, 5 Databases, 5 Sub Domains, 3 Addon Domains', '2021-02-12 16:18:34', '2021-02-12 16:18:34', NULL),
(4, '10GB Shared Hosting', 8000, '10000 (MB) Disk Space, 100000 (MB) Monthly Bandwidth, 10 FTP Accounts, 20 Email Accounts, 10 Databases, 10 Sub Domains, 5 Addon Domains', '2021-02-12 16:20:22', '2021-02-12 16:20:22', NULL),
(5, '20GB Shared Hosting', 14000, '20000 (MB) Disk Space, 200000 (MB) Monthly Bandwidth, 20 FTP Accounts, 40 Email Accounts, 20 Databases, 20 Sub Domains, 5 Addon Domains', '2021-04-25 12:49:42', '2021-04-25 17:08:25', NULL),
(7, '50GB Shared Hosting', 25000, '50000 (MB) Disk Space, 500000 (MB) Monthly Bandwidth, 50 FTP Accounts, 100 Email Accounts, 50 Databases, 50 Sub Domains, 5 Addon Domains', '2021-04-25 17:04:09', '2021-04-25 17:14:13', NULL),
(8, 'VPS Hosting - 1CORE/2GB RAM/20GB SSD', 10000, '2GB RAM,\r\n1CPU CORE,\r\n20GB NVMe SSD,\r\n1 Dedicated IP,\r\n1TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nKernel-based Virtual Machine,\r\nServer Location USA\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-25 17:09:35', '2021-06-09 17:42:50', NULL),
(9, 'VPS Hosting - 1CORE/4GB RAM/40GB SSD', 25000, '4GB RAM,\r\n1CPU CORE,\r\n40GB NVMe SSD,\r\n1 Dedicated IP,\r\n2TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nKernel-based Virtual Machine,\r\nServer Location USA,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-26 09:54:11', '2021-04-26 09:54:11', NULL),
(10, 'VPS Hosting - 2CORE/6GB RAM/60GB SSD', 40000, '6GB RAM,\r\n2CPU CORE,\r\n60GB NVMe SSD,\r\n1 Dedicated IP,\r\n3TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nKernel-based Virtual Machine,\r\nServer Location USA,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-27 15:09:26', '2021-04-27 15:09:26', NULL),
(11, 'VPS Hosting - 2CORE/8GB RAM/80GB SSD', 50000, '8GB RAM,\r\n2CPU CORE,\r\n80GB NVMe SSD,\r\n1 Dedicated IP,\r\n4TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nKernel-based Virtual Machine,\r\nServer Location USA,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-27 15:12:33', '2021-04-27 15:12:33', NULL),
(12, 'VPS Hosting AWS - 1CORE/1GB RAM/40GB SSD', 12000, 'Amazon AWS VPS\r\n1GB RAM,\r\n1CPU CORE,\r\n40GB SSD,\r\n1 Dedicated IP,\r\n2TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nServer Location as Your Choice,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-28 06:07:13', '2021-04-28 06:07:13', NULL),
(13, 'VPS Hosting AWS - 1CORE/2GB RAM/60GB SSD', 20000, 'Amazon AWS VPS\r\n2GB RAM,\r\n1CPU CORE,\r\n60GB SSD,\r\n1 Dedicated IP,\r\n3TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nServer Location as Your Choice,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-28 06:10:33', '2021-04-28 06:10:33', NULL),
(14, 'VPS Hosting AWS - 2CORE/4GB RAM/80GB SSD', 30000, 'Amazon AWS VPS\r\n4GB RAM,\r\n2CPU CORE,\r\n80GB SSD,\r\n1 Dedicated IP,\r\n4TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nServer Location as Your Choice,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-28 06:12:26', '2021-04-28 06:12:26', NULL),
(15, 'VPS Hosting AWS -2CORE/8GB RAM/160GB SSD', 60000, 'Amazon AWS VPS\r\n8GB RAM,\r\n2CPU CORE,\r\n160GB SSD,\r\n1 Dedicated IP,\r\n5TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nServer Location as Your Choice,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-04-28 06:15:41', '2021-04-28 06:16:12', NULL),
(16, 'VPS Hosting DO- 2CORE/2GB RAM/60GB NVMe SSD', 25000, '2GB RAM,\r\nPremium Intel 2CPU CORE,\r\n60GB NVMe SSD,\r\n1 Dedicated IP,\r\n3TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nServer Location as Your Choice,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-08-17 11:49:01', '2021-09-11 08:03:02', NULL),
(17, 'VPS Hosting DO- 1CORE/1GB RAM/ 25GB NVMe SSD', 13000, '1GB RAM,\r\nPremium Intel 1CPU CORE,\r\n25GB NVMe SSD,\r\n1 Dedicated IP,\r\n1TB Bandwidth,\r\nExtremely Fast 1Gbps Uplink,\r\nServer Location as Your Choice,\r\nLinux OS as Your Choice,\r\nBasic Unmanaged', '2021-09-11 08:01:03', '2021-09-11 08:01:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hosting_quotation`
--

CREATE TABLE `hosting_quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hosting_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hosting_quotation`
--

INSERT INTO `hosting_quotation` (`id`, `hosting_id`, `quotation_id`, `price`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3000, 0, 0, '2022-07-30 18:22:21', '2022-08-01 04:35:17'),
(3, 1, 557, 3000, 0, 0, '2022-08-01 03:35:11', '2022-08-01 03:35:11');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `sub_total` int(10) UNSIGNED NOT NULL,
  `grand_total` int(10) UNSIGNED NOT NULL,
  `qtn` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `discount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_name`, `quantity`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>item one&nbsp;</p>', 1, 500, NULL, '2022-07-30 11:39:08', '2022-07-30 11:39:08'),
(2, 1, '<p>item tow</p>', 1, 300, 100, '2022-07-30 11:39:08', '2022-07-30 11:39:08'),
(3, 1, '<p>item three</p>', 1, 300, NULL, '2022-07-30 13:46:25', '2022-07-30 13:46:25'),
(4, 1, '<p>item 4</p>', 1, 600, 100, '2022-07-30 17:51:07', '2022-07-30 17:51:07'),
(5, 1, '<p>invoice item one</p>', 1, 500, NULL, '2022-08-01 03:19:54', '2022-08-01 03:19:54'),
(6, 1, '<p>invoice item &nbsp;tow</p>', 1, 1000, 500, '2022-08-01 03:19:54', '2022-08-01 03:19:54'),
(7, 1, '<p>item one</p>', 1, 1200, 200, '2022-08-01 03:28:02', '2022-08-01 03:28:02'),
(8, 1, '<p>item tow</p>', 1, 1000, NULL, '2022-08-01 03:28:02', '2022-08-01 03:28:02'),
(9, 2, '<p>itom one</p>', 1, 2500, 500, '2022-08-01 04:43:05', '2022-08-01 04:43:05'),
(10, 2, '<p>itom one</p>', 1, 2500, 1500, '2022-08-01 04:46:48', '2022-08-01 04:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HAND CASH', '2021-02-05 11:01:25', '2021-02-08 16:11:03'),
(2, 'CARD PAYMENT', '2021-02-05 11:01:35', '2021-02-05 11:01:35'),
(3, 'BKASH PAYMENT', '2021-02-05 11:01:43', '2021-02-08 16:11:39'),
(5, 'BANK TRANSFER', '2021-02-08 16:09:35', '2021-02-08 16:09:35'),
(6, 'CHEQUE PAYMENT', '2021-02-08 16:10:04', '2021-02-08 16:10:04'),
(7, 'NAGAD PAYMENT', '2021-02-08 16:11:27', '2021-02-08 16:11:27');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_03_31_114745_remove_backpackuser_model', 1),
(6, '2020_11_30_173916_create_permission_tables', 1),
(7, '2020_11_30_175733_create_features_table', 1),
(8, '2020_11_30_175851_create_platforms_table', 1),
(9, '2020_11_30_181138_create_works_table', 1),
(10, '2020_11_30_181600_create_quotations_table', 1),
(11, '2020_11_30_185300_create_feature_quotation_table', 1),
(12, '2020_12_03_212005_create_clients_table', 1),
(13, '2020_12_15_212759_create_designs_table', 1),
(14, '2020_12_15_213336_create_websites_table', 1),
(15, '2020_12_15_231208_create_hostings_table', 1),
(16, '2020_12_15_231952_create_domains_table', 1),
(17, '2020_12_21_204950_create_invoices_table', 1),
(18, '2021_01_27_190025_create_client_user_table', 1),
(19, '2021_01_28_191121_create_methods_table', 1),
(20, '2021_01_28_191241_create_purposes_table', 1),
(22, '2021_02_02_220626_create_projects_table', 1),
(23, '2021_02_02_221732_create_project_user_table', 1),
(25, '2021_02_04_202653_add_date_column_to_quotations_table', 1),
(26, '2021_02_04_202711_add_date_column_to_invoices_table', 1),
(27, '2021_02_13_172250_create_notes_table', 1),
(28, '2021_03_04_181509_add_discount_to_quotations_table', 1),
(29, '2021_03_14_130813_add_requirements_to_quotations_table', 1),
(30, '2022_06_27_120545_create_quotation_items_table', 1),
(31, '2022_07_07_071919_create_quotation_services_table', 1),
(32, '2022_07_07_072115_create_quotation_domain_table', 1),
(33, '2022_07_07_072136_create_quotation_hosting_table', 1),
(34, '2022_07_07_072151_create_quotation_invoice_table', 1),
(35, '2022_07_07_072219_create_quotation_packages_table', 1),
(36, '2022_07_18_093309_create_custom_invoices_table', 1),
(37, '2022_07_18_094912_create_invoice_items_table', 1),
(38, '2022_07_19_123304_create_hosting_quotation_table', 1),
(39, '2022_07_19_135732_create_domain_quotation_table', 1),
(40, '2022_07_19_140446_create_quotation_work_table', 1),
(41, '2022_07_19_141356_create_package_quotation_table', 1),
(42, '2022_07_24_090512_create_client_project_table', 1),
(46, '2021_01_28_191732_create_transactions_table', 2),
(47, '2021_02_03_192908_add_note_to_transactions_table', 2),
(48, '2022_07_30_183914_add_quotation_id_to_transactions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(62, 'App\\Models\\User', 27);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 27);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_quotation`
--

CREATE TABLE `package_quotation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `design_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_quotation`
--

INSERT INTO `package_quotation` (`id`, `design_id`, `quotation_id`, `price`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 60000, 0, 0, '2022-07-30 18:22:21', '2022-08-01 04:35:17'),
(3, 1, 557, 60000, 0, 0, '2022-08-01 03:35:11', '2022-08-01 03:35:11');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'list_feature', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(2, 'create_feature', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(3, 'update_feature', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(4, 'delete_feature', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(5, 'list_platform', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(6, 'create_platform', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(7, 'update_platform', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(8, 'delete_platform', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(9, 'list_work', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(10, 'create_work', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(11, 'update_work', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(12, 'delete_work', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(13, 'list_client', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(14, 'create_client', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(15, 'update_client', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(16, 'delete_client', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(17, 'list_design', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(18, 'create_design', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(19, 'update_design', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(20, 'delete_design', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(21, 'list_website', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(22, 'create_website', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(23, 'update_website', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(24, 'delete_website', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(25, 'list_hosting', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(26, 'create_hosting', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(27, 'update_hosting', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(28, 'delete_hosting', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(29, 'list_domain', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(30, 'create_domain', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(31, 'update_domain', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(32, 'delete_domain', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(33, 'list_quotation', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(34, 'create_quotation', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(35, 'update_quotation', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(36, 'delete_quotation', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(37, 'list_invoice', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(38, 'create_invoice', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(39, 'update_invoice', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(40, 'delete_invoice', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(41, 'list_method', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(42, 'create_method', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(43, 'update_method', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(44, 'delete_method', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(45, 'list_purpose', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(46, 'create_purpose', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(47, 'update_purpose', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(48, 'delete_purpose', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(49, 'list_transaction', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(50, 'create_transaction', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(51, 'update_transaction', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(52, 'delete_transaction', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(53, 'list_project', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(54, 'create_project', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(55, 'update_project', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(56, 'delete_project', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(57, 'progress project', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(58, 'list_note', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(59, 'create_note', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(60, 'update_note', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(61, 'delete_note', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(62, 'Website_coordinate', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Wordpress', 5000, 'WordPress is a free and open-source content management system', '2021-02-05 10:50:52', '2021-02-12 13:41:49', '2021-02-12 13:41:49'),
(2, 'LARAVEL FRAMEWORK - ECOMMERCE', 120000, 'Home Page with Animation Slide\r\nMobile-Friendly Responsive Design\r\nMax 50 Product Upload by Us\r\nMax 30 Product Category Create by Us\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto-Generated Bill/ Invoice\r\nInventory Management\r\nMax 2 Contact Form\r\nMax 3 Revisions', '2021-02-05 10:52:15', '2021-03-18 16:12:42', NULL),
(3, 'LARAVEL FRAMEWORK - INFORMATIVE', 100000, 'Home Page with Animation Slide\r\nMobile-Friendly Responsive Design\r\nHigh Security\r\nPhoto Gallery\r\nBlog\r\nRoyalty-free images\r\nMax 2 Contact Form\r\nMax 3 Revisions', '2021-02-12 13:38:52', '2021-03-18 16:19:16', NULL),
(4, 'RAW HTML (STATIC)', 12000, 'Hypertext Markup Language is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.', '2021-02-12 13:47:18', '2021-02-12 13:47:18', NULL),
(5, 'ASP.NET FRAMEWORK - INFORMATIVE', 150000, 'Home Page with Animation Slide\r\nMobile-Friendly Responsive Design\r\nHigh Security\r\nPhoto Gallery\r\nBlog\r\nRoyalty-free images\r\nMax 2 Contact Form\r\nMax 3 Revisions', '2021-02-12 13:49:47', '2021-03-18 16:20:26', NULL),
(6, 'ASP.NET FRAMEWORK - ECOMMERCE', 200000, 'Home Page with Animation Slide\r\nMobile-Friendly Responsive Design\r\nMax 50 Product Upload by Us\r\nMax 30 Product Category Create by Us\r\nHigh Security\r\nShopping Cart\r\nClients Registration and Account\r\nOrder Management Option\r\nShipment Calculation Option\r\nAuto Generated Bill/ Invoice\r\nInventory Management\r\nMax 2 Contact Form\r\nMax 3 Revisions', '2021-03-18 16:11:03', '2021-03-18 16:17:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credential` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `progress` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `user_id`, `client_id`, `date`, `start`, `end`, `description`, `credential`, `status`, `progress`, `files`, `created_at`, `updated_at`) VALUES
(15, 'saad ibne abdul awaal', 6, 0, '2021-02-08', '2021-02-08', '2021-02-22', 'asestechbd.com,  you have to collect the access from MD sir \r\nEcommerce pac 2 .', 'Nedd Content & Access', 'Complete', 100, NULL, '2021-02-13 22:31:55', '2021-02-27 00:21:00'),
(16, 'Israt jahan diana', 1, 0, '2021-02-08', '2021-02-08', '2021-02-22', 'deshiolimited.com and other descriction send in WhatsApp and email. \r\nEcommerce pac 1. live chat also included. need to make the logo of this site and have to maintain the traditional look.', 'Need Logo & Payment Information', 'Complete', 100, NULL, '2021-02-13 22:39:15', '2021-03-25 04:53:46'),
(17, 'Hams Group', 1, 0, '2021-01-13', '2021-02-03', '2021-02-23', NULL, NULL, 'Revision', 100, NULL, '2021-02-13 22:43:36', '2021-04-26 04:31:17'),
(22, 'padmaoxygenltd.com Informative Website 8-20 Page', 6, 0, '2021-02-20', '2021-02-20', '2021-03-10', 'Details ask zafar', 'admin2\r\n60265/frontend/pape\r\nadmin2@padmaoxygenltd.com', 'Testing', 100, NULL, '2021-02-20 12:33:09', '2021-03-03 03:56:45'),
(23, 'peskel.com multivendor ecoomerce', 1, 0, '2021-02-20', '2021-02-20', '2021-02-28', 'Multivendor ecommerce website hobe bilasy er moto.. domain whois theke dob details niye nen.. ar demo product and category upload kore all done kore diben.. ami mail e logo pathiye dibo...\r\n\r\n+60 11-2429 8252\r\nRaju khan \r\nContact whatsapp', 'admin2\r\n58860/fronten\r\nadmin2@peskel.com\r\nhttps://peskel.com/\r\n\r\nCP:\r\npeskelco\r\n09!IkI4a!gcZ9Y', 'Complete', 100, NULL, '2021-02-20 13:00:46', '2021-03-23 00:55:43'),
(25, 'childnews.co.uk News portal website', 7, 0, '2021-02-20', '2021-02-24', '2021-02-28', 'Childs Newspaper Website', 'admin2\r\n42760265/frontend/pap\r\nadmin2@childnews.co.uk', 'Revision', 100, NULL, '2021-02-20 13:38:57', '2021-03-08 05:16:08'),
(26, 'Bs Mart Ecommerce Website', 1, 0, '2021-02-23', '2021-02-23', '2021-03-01', NULL, 'CP:\r\nbsbdmart\r\n6YaXG[4oS)y96r', 'Complete', 100, NULL, '2021-02-23 05:27:09', '2021-03-25 04:54:04'),
(27, 'UDC Informative Business Website', 6, 0, '2021-02-16', '2021-02-16', '2021-02-28', NULL, 'http://demo.udceducation.com/\r\n\r\nWP Info\r\n\r\nuser: admin2\r\npass: Y%#@F5qU8J', 'Testing', 100, NULL, '2021-02-23 05:27:53', '2021-03-10 07:29:54'),
(28, 'https://steamboilerbd.com/', 7, 0, '2021-02-24', '2021-02-24', '2021-02-24', 'A steam boiler company website', 'https://steamboilerbd.com/wp-admin/\r\nuser: admin2\r\npass: paper_lantern/soft', 'Complete', 100, NULL, '2021-02-23 22:57:50', '2021-02-24 03:52:23'),
(29, 'http://fabriclagbe.com/wp-admin/', 7, 0, '2021-01-16', '2021-01-16', '2021-01-18', 'A Fabric Textile Company Business website', 'Admin2\r\n6JyM8UgOo1l_$1\r\n\r\nhttp://fabriclagbe.com/wp-admin/\r\n\r\nCp:\r\nfabricla\r\ng43Cz-00Q!nJOtAdmin2\r\n6JyM8UgOo1l_$1\r\n\r\nhttp://fabriclagbe.com/wp-admin/\r\n\r\nCp:\r\nfabricla\r\ng43Cz-00Q!nJOt', 'Complete', 100, NULL, '2021-02-23 23:01:21', '2021-02-24 03:52:32'),
(30, 'https://beliefbd.com/', 6, 0, '2021-02-17', '2021-02-20', '2021-02-24', 'All Kind Off Product Ecommerce  Website', 'admin2 \r\n242809/frontend/p\r\n\r\n\r\ninfo\r\nBeliefBd@Info.com', 'Revision', 100, NULL, '2021-02-24 06:39:10', '2021-02-28 23:19:06'),
(31, 'Ejaz Rasul', 7, 0, '2021-02-27', '2021-02-27', '2021-03-04', NULL, NULL, 'In Process', 39, NULL, '2021-02-27 00:16:56', '2021-05-22 02:53:58'),
(33, 'tanvi Dhaka eye', 5, 0, '2021-03-01', '2021-03-01', '2021-03-01', NULL, NULL, 'New', 0, NULL, '2021-03-01 06:27:42', '2021-05-24 02:54:35'),
(34, 'Tanveer H Chowdhury perfumeclub.shop', 1, 0, '2021-03-01', '2021-03-01', '2021-03-16', 'taj details din.', 'admin2\r\n24315/frontend/p\r\nadmin2@perfumeclub.shop\r\n\r\nCP:\r\nperfumec\r\n1KI4F6yb;4i]bU', 'Complete', 100, NULL, '2021-03-01 14:44:41', '2021-06-14 02:59:03'),
(35, 'Rawsan Ara skyfashion-bd.com', 1, 0, '2021-03-01', '2021-03-01', '2021-03-16', 'Taj Details din', 'admin2\r\n739324315/front\r\nadmin2@skyfashion-bd.com\r\n\r\nCP\r\nskyfashi\r\n[D415M7wiYIr;w', 'Revision', 100, NULL, '2021-03-01 15:07:08', '2021-05-03 02:42:45'),
(36, 'Isabella Binte Khalil rosepastrystudio.com', 1, 0, '2021-03-01', '2021-03-01', '2021-03-16', 'Details from abu zafar', 'admin2\r\n&JZ21&P7ooU4W1\r\nadmin2@rosepastrystudio.com\r\n\r\nCP:\r\nrosepast\r\n7yz]*4azLE0H1S', 'Complete', 100, NULL, '2021-03-01 15:17:42', '2021-04-24 02:24:30'),
(37, 'Shamim Zaman szmartbd.com', 1, 0, '2021-03-01', '2021-03-01', '2021-03-23', NULL, 'admin2\r\n324315/front\r\nadmin2@szmartbd.com\r\n\r\nCP:\r\nszmartbd\r\n]i7*1f6Vhx0PLI', 'Complete', 100, NULL, '2021-03-01 15:53:41', '2021-05-03 02:42:58'),
(38, 'Munir Hassan Mithu  appareltodaylimited.com.bd', 6, 0, '2021-03-01', '2021-03-01', '2021-03-25', 'ask taj', 'admin2\r\n24315/frontend/paper\r\nadmin2@appareltodaylimited.com.bd\r\n\r\nCP:\r\napparelt\r\nPO@b3NuqpW@895', 'Complete', 100, NULL, '2021-03-01 16:26:29', '2021-06-14 02:55:52'),
(39, 'Md. Houmayoun Kabir  rpnbd.org', 1, 0, '2021-03-01', '2021-03-01', '2021-03-23', 'taj details', 'admin2\r\n083/cpsess7739\r\nadmin2@rpnbd.org\r\n\r\nCP:\r\nrpnbdor1\r\n3u4oZYR3:s0[Kd', 'Revision', 100, NULL, '2021-03-01 16:48:44', '2021-03-25 04:53:16'),
(40, 'Eng:Gias Uddin Ahmed/Ceo', 6, 0, '2021-03-02', '2021-03-02', '2021-03-16', 'Ecommerce Website', NULL, 'New', 0, NULL, '2021-03-02 22:29:02', '2021-03-04 07:40:51'),
(41, 'Isanella Owner and Chef', 6, 0, '2021-03-03', '2021-02-28', '2021-03-18', 'Business Website', NULL, 'New', 0, NULL, '2021-03-02 22:34:48', '2021-03-04 07:40:21'),
(42, 'Isabella', 6, 0, '2021-02-27', '2021-02-28', '2021-03-18', 'Business Website', NULL, 'New', 0, NULL, '2021-03-02 22:57:42', '2021-03-04 07:40:32'),
(43, 'Digitech', 6, 0, '2021-03-01', '2021-03-04', '2021-03-22', 'Medical equipment Website.\r\n\r\nuser:admin2\r\npass:EFt49LHl#5\r\nhttps://digitech.rpnbd.org/wp-admin/', 'http://digitech-bd.com/wp-admin\r\nUser : admin\r\nPass: Ytpimd^6012*\r\n\r\n*** C-Panel Details:  Domain Name: digitech-bd.com\r\nhttps://chitra.exonhost.com:2083/\r\nUsername: digitec1\r\nPassword: Tx4f0eD7;LoN4+', 'Revision', 100, NULL, '2021-03-03 22:58:49', '2021-07-24 04:40:50'),
(45, 'Cutoutpix', 6, 0, '2021-03-14', '2021-03-22', '2021-03-27', 'https://docs.google.com/document/d/1o6xxHhUs_eLxIN-iJFAt_qPcmKmaJ3Ifr8crB-Lm7LM/edit?ts=604dd769\r\nCP:\r\nhttps://cutoutpix.com:2083/\r\n\r\nuser-cutocfpj \r\npass- Cutout@nst11223300\r\n\r\nwordpress login\r\nuser: admin\r\npass: .8SS1@ey4.pUq)\r\n\r\nWordpress-\r\nGmail- mrktngteams@gmail.com\r\nuser- Rahim06\r\npass- Cutout@nst11223300', 'CP:\r\nhttps://cutoutpix.com:2083/\r\n\r\nuser-cutocfpj \r\npass- Cutout@nst11223300\r\n\r\n\r\n\r\nWordpress-\r\nGmail- mrktngteams@gmail.com\r\nuser- Rahim06\r\npass- Cutout@nst11223300', 'Revision', 100, NULL, '2021-03-08 22:33:12', '2021-07-24 04:39:20'),
(47, 'smartdistributionbd.com', 6, 0, '2021-03-16', '2021-03-16', '2021-03-31', 'Demo gular pass reset kore then kaj start koren...  \r\ndemo1.smartdistributionbd.com\r\ndemo2.smartdistributionbd.com\r\ndemo3.smartdistributionbd.com\r\ndemo4.smartdistributionbd.com', 'CP:\r\nsmartdis\r\n#r7+DO2aq8cOU2\r\nhttps://host6.registrar-servers.com:2083/\r\nWP Info\r\nuser:admin2\r\npass:Smart/32/ctp', 'Complete', 100, NULL, '2021-03-16 09:13:15', '2021-12-02 03:57:27'),
(48, 'baribhara.com.bd Samsul Huda', 9, 0, '2021-03-18', '2021-03-18', '2021-03-31', 'Ask Mr Zafar', 'admin2\r\nj%8BuVM:oKSW7\r\nadmin2@baribhara.com.bd\r\n\r\nCP:\r\nbaribhar\r\nD0K@Bhz0Vz06z(', 'In Process', 95, NULL, '2021-03-18 03:31:43', '2021-09-12 06:20:05'),
(52, 'chalcheeni.com', 19, 0, '2021-03-21', '2021-03-24', '2021-04-05', 'vai 3,4 din er moddhe site ta aktu  live kore dan', 'CP: \r\nchalchee\r\n2O)@2tPRh2I8ar\r\n\r\nuser: admin2\r\npass: b1Ru%MX@hK\r\n\r\n$P$Bsblrj9@#$321', 'Revision', 100, NULL, '2021-03-21 03:09:12', '2022-06-22 07:09:08'),
(53, 'interiorbazarbd.com', 9, 0, '2021-03-24', '2021-03-24', '2021-04-08', 'Web Design pack-2 without domain\r\n*Company Name : Interior Bazar bd\r\n*Domain: www. interiorbazarbd.com\r\n*Hosting from creative tech park\r\nuser:evangelarchitectbd@gmail.com\r\npass: amin77654\r\nCP: interior 52.UbYD;p1m6cO wp user:admin2 pass:interior/fr/24/pap\r\n\r\n**https://dwlbd.com er moto Design korte hobe , aktu unique korben', 'CP:\r\ninterior\r\n52.UbYD;p1m6cO\r\n\r\nwp\r\nuser:admin2\r\npass:interior/fr/24/pap', 'Revision', 100, NULL, '2021-03-24 01:20:45', '2021-04-27 03:33:15'),
(54, 'rcdhakacity.org', 1, 0, '2021-03-29', '2021-03-29', '2021-04-15', 'www.rcdhakacity.org\r\npls flow to the flowing site...\r\nhttp://rcdhaka.org/\r\nhttps://www.venturasouthrotary.org/\r\nhttp://www.rcsdbd.org/\r\nhttp://rotarydhakanorthwest.org/', 'admin2\r\n72515/fronte\r\nadmin2@rcdhakacity.org\r\n\r\nCP:\r\n\r\nrcdhakac\r\nk5@t5O5;WoGA9d', 'Complete', 100, NULL, '2021-03-29 07:23:45', '2021-04-21 03:44:21'),
(55, 'aupbd.org', 6, 0, '2021-04-04', '2021-04-04', '2021-04-12', 'CP:\r\naupbdorg\r\n0S9fLw6a6F]K:t\r\n\r\nWP Info\r\nuser:admin2\r\npass:24335/frontend/p', 'CP:\r\naupbdorg\r\n0S9fLw6a6F]K:t\r\n\r\nWP Info\r\nuser:admin2\r\npass:24335/frontend/p', 'Complete', 100, NULL, '2021-04-04 01:20:42', '2021-09-12 04:50:30'),
(56, 'creativeducationservice.com', 7, 0, '2021-04-13', '2021-04-13', '2021-04-30', NULL, 'CP:\r\ncreativeducat\r\n1l;mTtL9xO.12F\r\n\r\n===Wp===\r\nUser: admin\r\npass: YB9MV%x@#@', 'Complete', 100, NULL, '2021-04-13 04:17:46', '2021-05-30 08:05:43'),
(58, 'rigelfood.com', 9, 0, '2021-04-22', '2021-04-22', '2021-04-29', 'details from jakir hossain', 'admin2\r\n99215974/fronte\r\nadmin2@rigelfood.com\r\n\r\nhttps://rigelfood.com/wp-admin/\r\n\r\nCP:\r\nrigelfoo\r\n)oUo8VO.K9jv94', 'Revision', 100, NULL, '2021-04-22 08:16:23', '2021-06-10 08:50:07'),
(59, 'holoplus.com.bd', 6, 0, '2021-04-24', '2021-04-24', '2021-05-05', 'Cpanel Info:\r\nusername: holopluscom\r\npassword : holo294#djfo', NULL, 'In Process', 39, NULL, '2021-04-24 04:16:53', '2021-07-24 04:39:57'),
(60, 'https://btazinternationalsourcing.com/', 7, 0, '2021-01-30', '2021-02-03', '2021-02-09', 'admin2\r\n3_rM)g57blRM\r\nadmin2@btazinternationalsourcing.com', NULL, 'Complete', 100, NULL, '2021-04-27 04:53:41', '2021-05-05 06:11:04'),
(61, 'hams.com.bd', 6, 0, '2021-04-27', '2021-04-27', '2021-05-04', NULL, 'CP:  http://www.hams.com.bd/cpanel\r\nuser:hamscomb \r\npass:rjA2(c)Ch0PN48\r\n\r\nhttps://hgl.hams.com.bd\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass: hgl/hams/ctp/123\r\n\r\n\r\nhttps://hfl.hams.com.bd\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass: hfl/hams/ctp/123\r\n\r\nhttps://dgwl.hams.com.bd\r\n\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass: dgwl/hams/ctp/123\r\n\r\nhttps://www.hams.com.bd/\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass:hams/ctp/123\r\n\r\nhttps://vil.hams.com.bd\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass:vil/hams/ctp/123', 'Revision', 100, NULL, '2021-04-27 06:50:36', '2021-12-29 06:59:06'),
(62, 'Banner  & product design', 9, 0, '2021-05-07', '2021-05-07', '2021-05-08', NULL, NULL, 'New', 0, NULL, '2021-05-08 04:09:40', '2021-05-08 04:09:40'),
(63, 'fishbasketbd.com', 9, 0, '2021-05-08', '2021-05-08', '2021-05-28', NULL, 'admin2\r\n4872114/frontend\r\nadmin2@fishbasketbd.com\r\n\r\nCP:\r\nfishbask\r\nVJ7ax407X)jR;n', 'New', 0, NULL, '2021-05-08 07:24:12', '2021-07-17 06:57:30'),
(64, 'sabziplus.com', 1, 0, '2021-05-08', '2021-05-08', '2021-05-30', NULL, 'admin2\r\n4872114/frontend/pa\r\nadmin2@sabziplus.com\r\n\r\nCP:\r\nsabziplu\r\n+]5LFh3k2ZI6iw', 'Revision', 100, NULL, '2021-05-08 09:40:37', '2021-05-30 08:06:06'),
(65, 'reneewme.com', 5, 0, '2021-05-18', '2021-05-18', '2021-05-31', NULL, 'WP:\r\nadmin2\r\n226460/frontend/p\r\nadmin2@reneewme.com\r\n\r\nCP:\r\nreneewme\r\n*1M9qJHD@6kom8', 'Revision', 100, NULL, '2021-05-18 12:53:23', '2021-06-05 06:48:48'),
(66, 'amenitybd.org/', 9, 0, '2021-05-20', '2021-05-21', '2021-06-04', NULL, NULL, 'New', 0, NULL, '2021-05-20 08:41:47', '2021-07-17 06:57:07'),
(68, 'btaz international sourcing', 7, 0, '2021-01-27', '2021-01-27', '2021-01-30', 'loging user name: admin2 password : 3_rM)g57blRM  CP: btazinte In4SU5L;fp9p6@', NULL, 'Complete', 100, NULL, '2021-05-22 02:16:27', '2021-05-22 02:49:26'),
(69, 'ktex', 7, 0, '2021-02-10', '2021-05-16', '2021-05-18', 'admin2\r\n495646/fronte', NULL, 'Complete', 100, NULL, '2021-05-22 02:40:20', '2021-05-22 02:49:39'),
(70, 'law cookies', 7, 0, '2021-01-31', '2021-02-01', '2021-02-03', 'https://lawcookies.com/\r\nadmin2\r\n4VUC@4&ewq60i1', NULL, 'Complete', 100, NULL, '2021-05-22 02:41:41', '2021-05-22 02:49:51'),
(71, 'text 1971', 7, 0, '2021-01-16', '2021-02-02', '2021-02-04', 'Admin2\r\nC2@$wn%%@eIl@\r\nhttps://text1971bd.com/wp-admin/\r\n=======================\r\nCp:\r\ntextbdco\r\nMhY)#xM8g38C9o\r\n\r\nwp user: Admin2\r\nwp password: C2@$wn%%@eIl@', NULL, 'Complete', 100, NULL, '2021-05-22 02:45:15', '2021-09-23 03:29:03'),
(72, 'reximecotextile.com', 7, 0, '2021-01-24', '2021-02-06', '2021-02-08', 'admin2\r\n:g@tZC$j3Lu5#1\r\nadmin2@reximecotextile.com\r\nCP:\r\nreximeco\r\n3Xn5-pqM8:u4ID', NULL, 'Complete', 100, NULL, '2021-05-22 02:49:01', '2021-05-22 02:50:11'),
(73, 'Sajid Solaiman ( sahabuddin Textile )', 7, 0, '2021-04-10', '2021-05-24', '2021-05-25', 'Mailed\r\nCP\r\nDomain: shahabuddintextiles.com\r\nUsername: shahabud\r\nPassword: jy65fEH7AJ.#w0', 'https://shahabuddintextiles.com/\r\nuser: admin\r\npass: $dcucLHEM4', 'Complete', 100, NULL, '2021-05-24 02:53:46', '2022-02-15 10:11:39'),
(74, 'mfasto.com', 1, 0, '2021-05-30', '2021-05-30', '2021-06-15', NULL, 'CP:\r\nmfasto.com\r\nmfastoco\r\nCh;#uT21u9M5Ya', 'Complete', 100, NULL, '2021-05-30 08:20:32', '2021-06-14 02:55:16'),
(75, 'https://crosslineapparelgroup.com kazi islam', 9, 0, '2021-06-07', '2021-06-07', '2021-06-20', 'Wordpress: \r\nuser: islam.crossline\r\npass: Crossline*dev.2021\r\n\r\nblue host: \r\nuser: crosslineapparelgroup.com\r\npassword: Jakir&dev21', NULL, 'New', 0, NULL, '2021-06-07 04:54:15', '2021-06-16 02:52:07'),
(76, 'proshikaorganic.com', 7, 0, '2021-02-08', '2021-02-18', '2021-02-21', NULL, 'admin2\r\n8280/frontend/', 'Complete', 100, NULL, '2021-06-08 06:06:37', '2022-02-15 10:11:25'),
(77, 'Alliance Leather Goods & Footwear Ltd.', 9, 0, '2021-06-16', '2021-06-16', '2021-06-26', 'Hosting/cPanel:\r\n==============\r\nhttp://affootwear.com/cpanel\r\nUser: affootwear\r\nPassword: af102030@#\r\n\r\nWebsite Admin Panel:\r\n===================\r\nLink: http://affootwear.com/wp-admin\r\nUser: alf\r\nPassword : alf@12345', NULL, 'Revision', 100, NULL, '2021-06-16 04:01:31', '2021-07-24 04:32:36'),
(78, 'Rizvi Fruits', 8, 0, '2021-06-19', '2021-06-19', '2021-06-22', 'rizvifruitsltd.com.bd\r\nCP:\r\nrizvifru\r\nB96jZ7:p1f:yQS', 'admin2   froneted/25a', 'Complete', 100, NULL, '2021-06-19 07:44:47', '2021-09-12 04:51:01'),
(79, 'xlclippingservices.com/', 7, 0, '2021-03-08', '2021-03-25', '2021-03-30', NULL, NULL, 'Complete', 100, NULL, '2021-06-23 04:22:24', '2022-02-15 10:11:10'),
(80, 'picasso43.com', 1, 0, '2021-07-01', '2021-07-01', '2021-07-19', 'Details from taj', 'admin2\r\n425/frontend/\r\nadmin2@picasso43.com\r\n\r\nCP:\r\npicassoc\r\nj6KY+S.nb9r30L', 'New', 0, NULL, '2021-07-01 09:57:33', '2021-07-01 09:57:33'),
(81, 'subbirlgedae.com', 9, 0, '2021-07-01', '2021-07-01', '2021-07-13', 'ask mr zafar', 'admin2@subbirlgedae.com\r\nadmin2\r\n7425/fronten\r\n\r\nCP:\r\nsubbirlgedae.com\r\nsubbirlg\r\nHYjN69e.16aMk)', 'Revision', 97, NULL, '2021-07-01 16:11:33', '2021-09-12 04:51:19'),
(82, 'canadalabourpoolinginc.ca', 9, 0, '2021-07-01', '2021-07-01', '2021-07-08', 'ask mr zafar', 'canadalabourpoolinginc.ca\r\nCP:\r\ncanadala\r\n@0KPi2xskF3.A5', 'Revision', 100, NULL, '2021-07-01 16:14:34', '2021-07-24 04:31:54'),
(83, 'neelamee.com', 1, 0, '2021-07-25', '2021-07-25', '2021-07-31', NULL, 'CP: \r\nneelamee\r\nqT4CG2*0nQa7g(', 'Revision', 100, NULL, '2021-07-25 02:47:53', '2021-08-08 08:32:30'),
(84, 'socksbazarbd.com', 6, 0, '2021-07-27', '2021-07-28', '2021-08-03', 'details from taj', 'CP:\r\nsocksbaz\r\nh9Rqh92*;H1tDZ\r\n\r\nwp info\r\nuser:admin2\r\npass: 2JsF%bR%&R', 'Complete', 100, NULL, '2021-07-28 07:25:17', '2021-08-26 09:49:56'),
(85, 'paramountsupershop.com', 1, 0, '2021-07-28', '2021-07-28', '2021-08-05', 'details from taj', 'CP:\r\nparamoun\r\nKt[-o40a1GhTC6', 'Revision', 100, NULL, '2021-07-28 07:32:06', '2021-08-08 08:32:05'),
(86, 'hiltonbd.com', 6, 0, '2021-07-28', '2021-07-28', '2021-08-10', 'details from taj\r\nCP:\r\nhiltonbd\r\nQ*u5k7tZF*5A1h', 'CP:\r\nhiltonbd\r\n!wx@#FJ{MB$O', 'In Process', 35, NULL, '2021-07-28 07:34:04', '2022-01-03 05:19:35'),
(87, 'shameemgemsjewels.com', 1, 0, '2021-07-28', '2021-07-28', '2021-08-04', 'details from taj', 'CP:\r\nshameemg\r\n*1urI2F6xZo*0Z', 'Revision', 100, NULL, '2021-07-28 07:36:25', '2021-08-21 04:07:13'),
(88, 'masbsl.com', 1, 0, '2021-07-29', '2021-07-29', '2021-08-29', 'details from taj', 'CP:\r\nmasbslco\r\n5ZEpBOj)0(a0l1', 'New', 0, NULL, '2021-07-31 12:03:22', '2021-07-31 12:03:22'),
(89, 'pearlartistry.com', 1, 0, '2021-08-16', '2021-08-16', '2021-08-23', 'Details from taj', 'CP:\r\npearlart\r\nI6mI-8Mt2I2o]n', 'Complete', 100, NULL, '2021-08-16 08:18:49', '2021-09-05 02:49:55'),
(90, 'ezma.org', 1, 0, '2021-08-18', '2021-08-18', '2021-08-31', 'from zafar', 'CP:\r\nezmaorg\r\n#*S0NUGe9f27ib', 'Complete', 100, NULL, '2021-08-18 05:34:21', '2021-09-21 09:37:06'),
(91, 'coronagroup', 8, 0, '2021-08-19', '2021-08-19', '2021-08-19', NULL, 'http://coronagrouplive.com/\r\nCP:\r\ncoronagr\r\n0:02EzTal5xTM*  wp-admin2   fronted/210', 'Complete', 100, NULL, '2021-08-19 06:39:47', '2021-09-12 04:49:55'),
(92, 'amenityn', 8, 0, '2021-08-19', '2021-08-19', '2021-08-19', 'https://demo.amenitybd.org/', 'cp -Username: amenityn\r\nPass : Uc-59KQmc]2Rl5   admin2    fronted12/fsa', 'Revision', 73, NULL, '2021-08-19 06:41:33', '2021-09-12 04:49:39'),
(93, 'texstylesbd.com', 6, 0, '2021-08-31', '2021-08-31', '2021-09-06', 'from taj', 'CP: \r\ntexstyle\r\ngG7[cX2YY6p*2p\r\n\r\nWP Info\r\nadmin2    6XBL@l&1f%', 'Revision', 100, NULL, '2021-08-31 19:28:41', '2021-10-09 07:09:47'),
(94, 'mbyarnslimited.com', 8, 0, '2021-09-02', '2021-09-02', '2021-09-09', 'details from zafar', 'CP\r\nmbyarnsl\r\n1;oYI8#Zc1cWj1\r\nadmin2\r\nfronted/32', 'Complete', 100, NULL, '2021-09-02 04:40:46', '2022-01-29 04:56:13'),
(95, 'boisako', 6, 0, '2021-07-27', '2021-07-27', '2021-08-06', 'CP: boisako.com.bd\r\nboisakoc\r\nV8y7fu1cK@[4YQ\r\n\r\n\r\nWP Info\r\n\r\nuser: admin2\r\npass: 3L3uY@KQSv', NULL, 'Complete', 100, NULL, '2021-09-06 09:02:20', '2021-09-06 09:02:34'),
(96, 'brandhallbd', 6, 0, '2021-08-06', '2021-08-06', '2021-09-13', 'https://brandhallbd.com/wp-admin\r\nWP Info\r\nuser:admin2\r\npass:brand/kjg/214/hall\r\n\r\n\r\nhttps://brandhallbd.com/cpanel\r\nCP:\r\nbrandhal\r\n)40(X40wafiZYY\r\nbrandhallbd.com\r\n\r\n\r\n\r\nhttps://brandhallbd.com/webmail\r\n\r\nEmail Info\r\n\r\nuser: admin2@brandhallbd.com\r\n\r\npass: se^vYYqaYagD\r\n\r\n\r\nuser:info@brandhallbd.com\r\n\r\npass: ena4ql^BB-n0', NULL, 'Complete', 100, NULL, '2021-09-06 09:04:34', '2021-09-06 09:04:48'),
(97, 'Rupashigroupbd.com', 19, 0, '2021-09-06', '2021-09-06', '2021-09-13', 'details from taj', 'Cpanel\r\n--------------\r\nUsername: rupashig\r\nPassword: RK.Rm2)uq70uM9\r\nIP Address: \r\n107.178.112.47\r\n\r\n\r\nWordPress\r\n----------------\r\nUsername: admin2\r\nPassword: $BLVqqwgn3Um', 'Revision', 100, NULL, '2021-09-06 09:33:57', '2022-06-02 04:29:37'),
(98, 'capellamarineservices.com', 1, 0, '2021-09-08', '2021-09-08', '2021-09-11', 'details from sabbir', 'CP:\r\ncapellam\r\nB5]T3cpz23UsA)', 'Revision', 100, NULL, '2021-09-08 04:19:32', '2022-01-29 04:56:28'),
(99, 'bissoshto.com', 6, 0, '2021-09-12', '2021-09-12', '2021-09-19', 'Details from zafar', 'CP:\r\nbissoshoto.com\r\nbissosho\r\n3tHVM*q0Qu[6w4\r\nadmin2\r\nfronted/28', 'Revision', 100, NULL, '2021-09-12 06:22:24', '2021-11-09 03:51:57'),
(100, 'ert-bd', 6, 0, '2021-09-12', '2021-09-12', '2021-09-15', 'https://www.ert-bd.com/wp-admin\r\n\r\nuser:admin2\r\npass:fronted/32', NULL, 'Revision', 100, NULL, '2021-09-14 08:10:52', '2021-11-17 09:24:29'),
(101, 'takowamarketingltd.com', 1, 0, '2021-09-15', '2021-09-15', '2021-09-22', 'details from sabbir', '******************* ডোমেইনের লগিন ইনফরমেশন *******************\r\nLogin: https://www.namecheap.com/myaccount/login.aspx\r\nUsername: takowamarketing2020\r\nPassword: Kdf48jhgaf@@#$##$@8J9j*0K\r\n\r\n******************* Hosting বা cPanel এর লগিন ইনফরমেশন *****************\r\nLogin Details\r\n\r\nUsername: takowam1\r\nPassword: 871qIg:PVr+2Qp\r\n\r\nControl Panel URL: http://85.187.128.35:2082/\r\nOnce your domain has propagated, you may also use http://www.takowamarketingltd.com:2082/\r\n\r\nServer Information\r\n\r\nServer Name: sg1-sr6\r\nServer IP: 85.187.128.35\r\n\r\nIf you are using an existing domain with your new hosting account, you will need to update the nameservers to point to the nameservers listed below.\r\n\r\nNameserver 1: ns1.ithostbd10.com (85.187.128.35)\r\nNameserver 2: ns2.ithostbd10.com (85.187.128.35)\r\n\r\nfronted/42 admin2', 'Revision', 100, NULL, '2021-09-15 06:28:09', '2022-01-25 10:38:39'),
(102, 'bonizmarket.com', 1, 0, '2021-09-15', '2021-09-15', '2021-09-22', 'details from taj', 'bonizmarket.com\r\nCP:\r\nbonizmar\r\nlbSu98#.F4w9FS', 'Revision', 100, NULL, '2021-09-15 08:23:55', '2021-10-06 08:56:09'),
(103, 'capellashipmanagement.com', 8, 0, '2021-09-21', '2021-09-21', '2021-09-21', NULL, 'admin2  frontend82/', 'New', 0, NULL, '2021-09-21 04:32:56', '2021-09-21 04:32:56'),
(104, 'capellashipmanagement.com', 6, 0, '2021-09-21', '2021-09-21', '2021-09-21', NULL, 'admin2\r\n@P<@EaQP7A8%F   \r\nb3V&9BSVH#&qU\r\n\r\nadmin2\r\nRIi4t`&9Ds@$%\r\n\r\nCpanel Info\r\nuser:capewfhq\r\npass:o3U7PpWMCqK3l4mTHzVi', 'Revision', 100, NULL, '2021-09-21 04:36:45', '2021-11-22 11:04:05'),
(105, 'thebolaw.com', 1, 0, '2021-09-26', '2021-09-26', '2021-09-30', NULL, 'CP:\r\nthebolaw\r\nbDCt3;0X50Wx[q', 'Revision', 100, NULL, '2021-09-26 07:07:15', '2021-10-06 08:55:58'),
(106, 'https://whitediamondhotel.net/', 8, 0, '2021-09-26', '2021-09-26', '2021-09-26', NULL, 'ZgtS9Vr5b5wwAwF     whitedi1\r\nControl Panel URL: http://94.154.159.139:2082\r\n\r\nadmin2 \r\nfrontend/95', 'Complete', 100, NULL, '2021-09-26 10:38:25', '2021-11-07 04:18:35'),
(107, 'tshirtplace-loggia.com', 1, 0, '2021-10-04', '2021-10-04', '2021-10-11', 'Details from taj', 'CP:\r\ntshirtpl\r\ne0)Y67DwzX7@Cc\r\ntshirtplace-loggia.com', 'Revision', 100, NULL, '2021-10-04 08:00:46', '2021-11-07 04:19:13'),
(108, 'theleadstyleltd.com', 8, 0, '2021-10-05', '2021-10-05', '2021-10-12', 'details from sabbir', 'CP:\r\ntheleads\r\n2GwceCC8u0:V@0\r\n\r\nadmin2\r\nfrontend/57', 'Complete', 100, NULL, '2021-10-05 07:07:41', '2021-11-07 04:18:23'),
(109, 'ihsinspection.com', 8, 0, '2021-10-05', '2021-10-05', '2021-10-12', 'details from sabbir', 'CP:\r\nihsinspe\r\nn6bF4Ap:m8K0G[\r\n\r\nadmin2\r\nfrontend/92', 'Complete', 100, NULL, '2021-10-05 07:09:13', '2022-01-08 09:19:39'),
(110, 'passagebd.com', 6, 0, '2021-10-06', '2021-10-06', '2021-10-13', 'details from taj', 'CP:\r\npassageb\r\nQ5bR66E.Hm3c]c\r\n\r\nWP Info\r\n\r\nuser:admin2\r\n\r\npass:fZDF39$E0$', 'Revision', 100, NULL, '2021-10-06 08:29:44', '2021-10-18 10:36:16'),
(111, 'panthera-pe.com', 1, 0, '2021-10-06', '2021-10-06', '2021-10-13', 'details from taj', 'CP:\r\npanthera\r\nT!J1Lo5ga0Vq]4', 'Revision', 100, NULL, '2021-10-06 09:37:26', '2021-11-07 04:17:49'),
(112, 'bengaltexglobal.com', 6, 0, '2021-10-09', '2021-10-09', '2021-10-15', NULL, 'Cpanel Info\r\n| UserName: bengaltexglobal\r\n| PassWord: ^!?1)UoOj??,\r\n\r\nWP Info\r\n\r\nuser: admin2\r\npass: 4Dc$Hfq@%]qWC', 'Complete', 100, NULL, '2021-10-09 04:43:47', '2021-10-28 11:19:39'),
(113, 'alrighttexinc.ca', 6, 0, '2020-12-14', '2020-12-09', '2020-12-14', NULL, 'admin2\r\n#2o%d4hPU#p773\r\nadmin2@alrighttexinc.ca\r\n\r\n https://alrighttexinc.ca/wp-admin/\r\n\r\n\r\nCP:\r\n\r\nalrightt\r\nm7Sk4TH9-K@g0x', 'Complete', 100, NULL, '2021-10-09 06:59:30', '2021-10-09 06:59:43'),
(114, 'khanautomotiveltd.com', 8, 0, '2021-10-14', '2021-10-14', '2021-10-21', 'details from sabbir', 'khanautomotiveltd.com\r\nCP:\r\nkhanauto\r\nY940b.iC[Jhp4U\r\nadmin2\r\nfrontend/38', 'Revision', 100, NULL, '2021-10-14 07:12:09', '2021-11-07 04:18:06'),
(115, 'nexusshopbd.com', 1, 0, '2021-10-14', '2021-10-14', '2021-10-28', 'details from taj', 'nexusshopbd.com\r\nCP:\r\nnexussho\r\n78.Bu5rMh3NC(u', 'Complete', 100, NULL, '2021-10-14 09:12:23', '2021-10-28 11:19:26'),
(116, 'rentacarindhaka.com', 6, 0, '2021-10-28', '2021-10-30', '2021-11-01', NULL, 'CP:\r\nrentacar\r\nM[neQss9[0QY99', 'Revision', 100, NULL, '2021-10-28 11:17:18', '2021-11-04 03:04:58'),
(117, 'islamicshopbd.com', 6, 0, '2021-11-03', '2021-11-03', '2021-11-10', 'details from taj', 'islamicshopbd.com/cpanel\r\nCP: \r\nislamics\r\n@4M5jgWOhN7[c4', 'Complete', 100, NULL, '2021-11-03 10:38:05', '2022-03-31 07:53:41'),
(118, 'futuristiclimited.com', 6, 0, '2021-11-07', '2021-11-07', '2021-11-14', 'details from taj', 'CP:\r\nfuturist\r\n@i4CYK+ojCy980', 'Revision', 100, NULL, '2021-11-07 09:18:14', '2021-11-13 08:12:51'),
(119, 'akaiaksho.com', 1, 0, '2021-11-14', '2021-11-14', '2021-11-21', 'details from taj', 'CP:\r\nbongoway\r\nM:tYp7u:24h7PA', 'Testing', 100, NULL, '2021-11-14 08:07:10', '2021-12-08 03:47:25'),
(120, 'oplusbd.com', 1, 0, '2021-11-17', '2021-11-17', '2021-11-30', 'details from zafar', 'cp:\r\noplusbdc\r\n0;Yr]3IVnQs5o3', 'Revision', 100, NULL, '2021-11-17 09:28:09', '2021-12-08 03:47:45'),
(121, 'waterplusbd.com', 1, 0, '2021-11-21', '2021-11-21', '2021-11-28', 'details from zafar', 'waterplusbd.com\r\nCP:\r\nwaterplu\r\ntQ0t[QU!e06p1S1', 'Complete', 100, NULL, '2021-11-21 13:27:57', '2022-06-09 09:07:47'),
(122, 'aliairtravelsandtours.com', 7, 0, '2021-11-22', '2021-11-22', '2021-11-30', 'details from mohin', 'CP:\r\naliairtr\r\n8@2AzM2Wtv5V#q\r\n\r\nWP Info\r\n\r\nuser:admin2\r\npass:tPV6A%Gh#l', 'Revision', 100, NULL, '2021-11-22 11:01:51', '2021-12-18 03:50:03'),
(123, 'dressdesignbd.com', 1, 0, '2021-11-29', '2021-11-29', '2021-12-06', 'details from mohin\r\nnew domain tamimfashionzone.com added', 'CP:\r\ndressdes\r\nQQdw]UCkz6+522', 'Complete', 100, NULL, '2021-11-29 10:32:22', '2022-01-08 09:17:54'),
(124, 'aayantoursbd.com', 13, 0, '2021-11-29', '2021-11-29', '2021-12-08', 'details from taj', 'CP:\r\naayantou\r\n(rg51WDA3fmL0[\r\n\r\nwp : \r\nadmin2\r\npasswo@#aayan425', 'Revision', 100, NULL, '2021-11-29 14:05:49', '2022-06-13 11:19:47'),
(125, 'alifeshopbd.com', 6, 0, '2021-11-29', '2021-11-29', '2021-12-08', 'details from taj', 'CP:\r\nalifesho\r\nszI2jE8!;W8u3O', 'Revision', 90, NULL, '2021-11-29 14:08:06', '2022-06-02 02:44:15'),
(126, 'weldits.com', 6, 0, '2021-12-19', '2021-12-19', '2021-12-31', 'Details from Taj', 'CP:\r\nwelditsc\r\n7.h475Fq]sSNgP\r\n\r\n\r\nWP Info\r\nhttps://weldits.com/wp-admin/\r\nuser:admin2\r\n\r\npass:#2#X1KAqOU', 'Revision', 100, NULL, '2021-12-19 11:44:20', '2022-01-08 09:17:05'),
(127, 'rifataluminium.com', 6, 0, '2021-12-19', '2021-12-19', '2021-12-31', 'details from taj', 'CP:\r\nrifatalu\r\n5cY3D(36XY)knz\r\n\r\nWp-\r\nUser: admin\r\nPassword: hKjqYVZ8@f', 'Revision', 100, NULL, '2021-12-19 12:11:54', '2022-01-08 09:16:42'),
(128, 'porch-magazine.com', 1, 0, '2022-01-06', '2022-01-06', '2022-01-07', 'sample: https://interiorsmagazine.com/', 'porch-magazine.com\r\nCP:\r\nporchmag\r\nat7g9:#JbOKX37', 'Revision', 100, NULL, '2022-01-06 10:28:35', '2022-01-08 09:16:54'),
(129, 'murgibd.com', 1, 0, '2022-01-08', '2022-01-08', '2022-01-15', 'details from taj', 'CP:\r\nmurgibdc\r\n0;71;YzYk5hAWm', 'Revision', 100, NULL, '2022-01-08 12:46:38', '2022-01-27 09:44:33'),
(130, 'atnibd.com', 1, 0, '2022-01-08', '2022-01-08', '2022-01-22', 'details from taj', 'atnibd.com\r\nCP:\r\natnibdco\r\nw0T@o1PZr)4m8O', 'New', 0, NULL, '2022-01-08 13:13:19', '2022-06-22 10:44:50'),
(131, 'pacificviewelectro.com', 1, 0, '2022-01-16', '2022-01-16', '2022-01-23', NULL, 'CP:\r\npacificv\r\nkSVdY!2t951H-v', 'Revision', 100, NULL, '2022-01-16 11:40:45', '2022-01-27 10:05:58'),
(132, 'knitxbd.com', 6, 0, '2022-01-19', '2022-01-19', '2022-01-26', 'details from taj', 'CP:\r\nknitxbdc\r\n)W)ac08pXH1Nz8\r\nWP:\r\nadmin\r\n7XbuZGZ&@W', 'Complete', 100, NULL, '2022-01-19 10:11:58', '2022-02-22 04:56:26'),
(133, 'bumrungrad-bangladesh.com', 1, 0, '2022-01-24', '2022-01-24', '2022-01-31', 'demo site: bumrungrad.com\r\nhttps://bangladesh.bumrungrad.com/en/contact-us\r\nhttps://intmedicaltreatment.com/bumrungrad-international-hospital', 'CP:\r\nbanglad\r\n5Vy9dM0-9SYv:', 'Complete', 100, NULL, '2022-01-24 09:48:39', '2022-04-24 06:23:11'),
(134, 'khanautomotiveltd.com', 13, 0, '2021-12-18', '2021-12-20', '2021-12-31', NULL, 'cpanel : \r\nuser : khanauto\r\npass : Y940b.iC[Jhp4U\r\n\r\nwp-login : \r\nuser : admin\r\npass : admin@#khanauto', 'Complete', 100, NULL, '2022-01-29 05:04:22', '2022-02-22 04:56:33'),
(135, 'tamimfashionzone.com', 13, 0, '2022-01-01', '2022-01-01', '2022-01-05', NULL, 'Cpanel : \r\nusername : dressdes\r\npassword : QQdw]UCkz6+522\r\n\r\nwp-login : \r\nusername : admin2\r\npassword : s7AW$4n5U%', 'Complete', 100, NULL, '2022-01-29 05:08:14', '2022-01-29 05:08:53'),
(136, 'panthera-pe.com', 13, 0, '2022-01-10', '2022-01-10', '2022-01-12', NULL, 'Cpanel:\r\nusername : panthera\r\npassword : T!J1Lo5ga0Vq]4\r\n\r\nwp-admin:\r\nusername : admin\r\npassword : EA@dF7A2&a', 'Complete', 100, NULL, '2022-01-29 05:12:38', '2022-01-29 05:12:56'),
(137, 'nahabd.com', 6, 0, '2022-01-27', '2022-01-27', '2022-01-31', 'details from zafar', 'CP:\r\nnahabdco\r\nC#0I-6Y3u1Rcxj', 'Complete', 100, NULL, '2022-01-29 17:53:50', '2022-03-21 05:53:48'),
(138, 'zrfoundationbd.org', 13, 0, '2022-02-05', '2022-02-05', '2022-02-19', 'details from zafar', 'CP:\r\nzrfounda\r\nS-JXnn!2z1z58x', 'Revision', 100, NULL, '2022-02-05 07:32:15', '2022-05-14 02:39:19'),
(139, 'nuchembd.com', 6, 0, '2022-02-05', '2022-02-05', '2022-02-19', 'details from taj', 'CP:\r\nnuchembd\r\nz84h4g.9SZxU(M\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass: &@H%91Pn#j', 'Complete', 100, NULL, '2022-02-05 07:54:25', '2022-05-18 03:26:53'),
(140, 'alburoojinternationalltd.com', 19, 0, '2022-02-15', '2022-02-15', '2022-02-22', NULL, 'CP:\r\nalburooj\r\n36+jL1DtY8r.Sm\r\n\r\nWp Access\r\n=============================\r\nadmin2\r\n$P$Bxc', 'Complete', 100, NULL, '2022-02-15 09:26:04', '2022-06-09 03:13:58'),
(141, 'pharmachordbd.com', 6, 0, '2022-02-15', '2022-02-15', '2022-02-22', 'details from taj', 'CP:\r\npharmach\r\n-;3ThFj95k6mYD\r\n\r\nWP Info\r\nhttps://pharmachordbd.com/wp-admin/\r\nuser:admin2\r\n\r\npass: 6D8k&#S$Cv', 'Revision', 95, NULL, '2022-02-15 10:10:34', '2022-05-30 07:45:10'),
(142, 'brumd.com', 6, 0, '2022-02-16', '2022-02-16', '2022-02-28', NULL, 'CP:\r\nbrumdcom\r\nU9g.K4)Dj49Wxw\r\n\r\nhttps://brumd.com/wp-admin\r\nWP Info\r\n\r\nuser:admin2\r\n\r\npass: Brum@#ctp/3214\r\n\r\nhttps://brumd.com/webmail\r\nEmail Info\r\n\r\nuser:admin2@brumd.com\r\n\r\npass:^{f[x?Q}wmrC', 'Complete', 100, NULL, '2022-02-16 10:04:15', '2022-05-18 03:25:50'),
(143, 'baribhara.com.bd', 1, 0, '2022-02-16', '2022-02-16', '2022-02-17', NULL, 'admin2\r\nj%8BuVM:oKSW7\r\nadmin2@baribhara.com.bd\r\n\r\nCP:\r\nbaribhar\r\nD0K@Bhz0Vz06z(', 'Complete', 100, NULL, '2022-02-16 10:18:17', '2022-02-22 04:57:03'),
(144, '3rotno.com', 5, 0, '2022-02-22', '2022-02-22', '2022-03-01', 'details from taj', 'CP: \r\nrotnocom\r\n5hs.M4R.7S4gdY', 'New', 0, NULL, '2022-02-22 08:57:44', '2022-06-02 03:51:55'),
(145, 'asianlivscorner.se', 1, 0, '2022-02-23', '2022-02-23', '2022-02-23', NULL, 'login: https://asianlivscorner.se:2083/\r\nuser: asianliv\r\npass: gH.8l+hE5w27WI\r\n\r\nhttps://corporate.vip6.noc401.com:2083/\r\nasianliv\r\ngH.8l+hE5w27WI1', 'Complete', 100, NULL, '2022-02-23 12:00:25', '2022-06-14 12:49:30'),
(146, 'psc.com.bd', 1, 0, '2022-02-24', '2022-02-24', '2022-02-28', NULL, 'CP:\r\npsccombd\r\n50203/scripts4', 'Complete', 100, NULL, '2022-02-24 08:36:40', '2022-02-24 09:05:32'),
(147, 'nclbd.org', 6, 0, '2022-03-02', '2022-03-02', '2022-03-28', NULL, 'https://nclbd.org/cpanel\r\nsonicpri\r\nFn#+r!!fg**6#', 'New', 0, NULL, '2022-03-02 09:05:31', '2022-03-16 11:55:52'),
(148, 'recommendbd.com', 6, 0, '2022-03-02', '2022-03-02', '2022-03-16', 'details from taj', 'cp:\r\nrecommen\r\nT;516WqKiY7(hb\r\nWP Info\r\nhttps://recommendbd.com/wp-admin/\r\nuser:admin2\r\n\r\npass:p#3C5TSYbS\r\n\r\nWebmail Info\r\nhttps://recommendbd.com/webmail\r\nuser: info@recommendbd.com\r\npass: eClQxn$k%#9a\r\n\r\n\r\nuser: admin2@recommendbd.com\r\npass: x4D+%*KJu^lU', 'Complete', 100, NULL, '2022-03-02 17:12:01', '2022-05-18 03:24:35'),
(149, 'nuransbd.com', 6, 0, '2022-03-02', '2022-03-02', '2022-03-16', 'details from taj', 'cp:\r\nnuransbd\r\n23O@K+bDUw88fh\r\n\r\nhttps://nuransbd.com/wp-admin\r\nWp Info\r\n\r\nuser:admin2\r\n\r\npass:cyB@N2FRt&\r\n\r\nhttps://nuransbd.com/webmail\r\nWebmail Info\r\n\r\nuser: admin2@nuransbd.com\r\n\r\npass: l3d}1RviwcRn', 'Complete', 100, NULL, '2022-03-02 17:17:50', '2022-05-18 03:24:02'),
(150, 'tginternationaluk.com', 1, 0, '2022-03-05', '2022-03-05', '2022-03-19', 'details from taj', 'CP:\r\ntgintern\r\nbb54wDPwIK5.9.', 'Revision', 100, NULL, '2022-03-05 18:53:27', '2022-04-13 03:23:37'),
(151, 'signboard-factory.com', 1, 0, '2022-03-12', '2022-03-12', '2022-03-19', 'details from babu', 'CP:\r\nsignboar\r\n16ZGV5hY[ex5:e', 'New', 0, NULL, '2022-03-12 09:25:37', '2022-03-12 09:25:37'),
(152, 'nafnabd.com', 5, 0, '2022-03-12', '2022-03-12', '2022-03-19', 'details from taj', 'CP: \r\nnafnabdc\r\nu5Ij2SxJd92]!A\r\n\r\nhttps://nafnabd.com/wp-admin/\r\nWP info\r\n\r\nuser:admin2\r\npass:8E4KSeKN&z', 'Revision', 97, NULL, '2022-03-12 10:25:38', '2022-06-01 10:15:25'),
(153, 'catengineeringbd.com', 13, 0, '2022-03-12', '2022-03-12', '2022-03-26', 'details from taj', 'CP:\r\ncatengin\r\nb13fj#Al5G8TL;\r\n\r\nwp-admin :\r\nusername : admin3\r\npassword : pass@#catadmin', 'Revision', 100, NULL, '2022-03-12 10:33:09', '2022-05-15 04:49:14'),
(154, 'techstreetltd.com', 1, 0, '2022-03-31', '2022-03-31', '2022-04-14', 'details from taj', 'CP:\r\ntechstre\r\n:e)U7iF7iE4y0Y', 'Complete', 100, NULL, '2022-03-31 09:07:19', '2022-04-02 03:20:14'),
(155, 'rngroup-bd.com', 6, 0, '2022-04-03', '2022-04-03', '2022-04-17', 'from taj', 'CP:\r\nrngroupb\r\nVm6YFk7(N]96cf\r\n\r\nWP Info\r\n\r\nuser:admin2\r\n\r\npass:02Q&@fGY#u\r\n\r\nrngroup-bd.com\r\n\r\n\r\nWebmail Info\r\nhttps://rngroup-bd.com/webmail\r\n\r\nuser:info@rngroup-bd.com\r\npass:HF5@7B^Y+Sk6', 'Revision', 100, NULL, '2022-04-03 16:08:57', '2022-05-15 04:51:20'),
(156, 'myprimebox.com', 5, 0, '2022-04-03', '2022-04-03', '2022-04-17', 'details from taj', 'CP:\r\nmyprimeb\r\n#98pt6szZUK0P;\r\n\r\nWP Info https://myprimebox.com/wp-admin/\r\n\r\nuser: admin2\r\npass:O&&1WYRt3@', 'Revision', 90, NULL, '2022-04-03 16:12:04', '2022-06-01 10:14:52'),
(157, 'shipsagroup.com', 4, 0, '2022-04-09', '2022-04-09', '2022-04-23', 'details from zafar', 'CP:\r\nshipsagr\r\nJ(2RLP76xy3.uo', 'Revision', 90, NULL, '2022-04-09 14:06:47', '2022-05-25 03:43:05'),
(158, 'holidayexpt.com', 1, 0, '2022-04-09', '2022-04-09', '2022-04-23', NULL, 'CP:\r\nholidaye\r\nEz*3kR6yX4;Js01', 'Revision', 100, NULL, '2022-04-09 14:11:35', '2022-06-09 09:08:37'),
(159, 'oranzdot.com', 1, 0, '2022-04-09', '2022-04-09', '2022-04-23', 'details from babu vai', 'CP:\r\noranzdot\r\np30QuL29h]tT]B', 'New', 0, NULL, '2022-04-09 14:12:45', '2022-06-04 05:48:30'),
(160, 'paakhihome.com', 6, 0, '2022-04-11', '2022-04-11', '2022-04-18', 'details from mohin & Saad', 'CP:\r\npaakhiho\r\n7m)pM0t-SS0gU5\r\n\r\nWP Info\r\n\r\nuser: admin2\r\n\r\npass: 7c3Ojx#$US', 'Revision', 100, NULL, '2022-04-11 08:13:07', '2022-05-28 04:38:36'),
(161, 'balapur.com.bd', 1, 0, '2022-04-11', '2022-04-11', '2022-04-18', 'details from zafar & saad', 'CP:\r\nbalapurc\r\nqQ#8o5S7tXA8f[', 'Revision', 100, NULL, '2022-04-11 08:16:32', '2022-05-28 04:38:53'),
(162, 'crowdhomes.com.bd', 1, 0, '2022-04-20', '2022-04-20', '2022-04-27', 'details from zafar', 'CP: \r\ncrowdhom\r\nK:0Jkp)Jr139jT', 'Revision', 100, NULL, '2022-04-20 14:58:29', '2022-05-25 03:43:21'),
(163, 'dbkp.com.bd', 13, 0, '2022-04-20', '2022-04-20', '2022-04-27', 'details from mohin', 'CP:\r\ndbkpcomb\r\ngaNhJA3]2E9t3+\r\n/\r\nwp-admin : \r\nadmin3\r\npassw00@#dbkpch', 'Revision', 100, NULL, '2022-04-20 15:37:29', '2022-05-25 03:43:35'),
(164, 'zoomfashion.ctp.com.bd', 1, 0, '2022-04-20', '2022-04-20', '2022-04-20', NULL, 'login: zoomfashion.ctp.com.bd\r\nuser: admin\r\npass: admin@Zoom125', 'New', 0, NULL, '2022-04-20 18:09:32', '2022-04-20 18:09:32'),
(165, 'surakoreanrestaurant.com', 1, 0, '2022-04-21', '2022-04-21', '2022-04-29', 'details from taj', 'CP:\r\nsurakore\r\n[64!OK6CsaL9xn', 'New', 0, NULL, '2022-04-21 09:34:38', '2022-04-21 09:34:38'),
(166, 'nakshikatharmath.com', 14, 0, '2022-04-28', '2022-04-28', '2022-05-06', 'details from rony', 'CP:\r\nnakshika\r\nESHqr56Pl3@j-1', 'New', 0, NULL, '2022-04-28 07:50:48', '2022-05-07 11:39:21'),
(167, 'Cat Engineering', 14, 0, '2022-03-09', '2022-04-07', '2022-04-07', NULL, NULL, 'New', 0, NULL, '2022-05-07 11:39:01', '2022-05-07 11:39:01'),
(168, 'Nclbd7', 14, 0, '2022-02-28', '2022-05-07', '2022-05-07', NULL, NULL, 'New', 0, NULL, '2022-05-07 11:42:23', '2022-05-07 11:42:23'),
(169, 'bbmcorporationbd.com', 1, 0, '2022-05-18', '2022-05-18', '2022-05-25', 'details from zafar', 'CP:\r\nbbmcorpo\r\nVd865#@hA6oPBp', 'New', 0, NULL, '2022-05-18 14:22:08', '2022-05-18 14:22:08'),
(170, 'bkgroupcompanies.com', 5, 0, '2022-05-19', '2022-05-19', '2022-05-26', 'details from taj', 'bkgroupcompanies.com\r\nCP:\r\nbkgroupc\r\niIO8;w725a*PUy\r\n\r\nWP Info https://bkgroupcompanies.com/wp-admin/\r\n\r\nuser:admin2\r\npass:a$@ZNY1M@b', 'New', 0, NULL, '2022-05-19 06:59:25', '2022-06-02 03:47:26'),
(171, 'academic-aid.com', 5, 0, '2022-05-19', '2022-05-19', '2022-05-26', 'Details from taj', 'CP:\r\nacademic\r\nO;mZA24e)aM6g4\r\n\r\nWP Info\r\nhttps://academic-aid.com/wp-admin/\r\nuser:admin2\r\npass: #LMXy9RbZC', 'Revision', 100, NULL, '2022-05-19 07:00:39', '2022-06-06 10:46:11'),
(172, 'alnadeemsteel.com', 6, 0, '2022-05-30', '2021-11-18', '2021-11-27', 'wp info\r\n\r\nuser:admin\r\n\r\npass:$P$B8hRJP2s.', NULL, 'Complete', 100, NULL, '2022-05-30 06:29:02', '2022-05-30 06:30:08'),
(173, 'dfwairportshuttle.net', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'CP:\r\nhttps://host6.registrar-servers.com/cpanel\r\n\r\ndfwtaxiandlimo\r\n89877/scrip\r\n\r\ndomain: dfwairportshuttle.net\r\n\r\n\r\nWP Info\r\n\r\nuser:admin2\r\n\r\npass:oKMoQ2E%#W4]g', NULL, 'Complete', 100, NULL, '2022-05-30 06:29:25', '2022-05-30 06:29:58'),
(174, 'emonihari.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'https://emonihari.com/wp-admin/\r\nadmin2\r\n356316/fronte\r\n\r\nCP:\r\n\r\nemonihari\r\n@eWQ3]5m33XDgn', NULL, 'Complete', 100, NULL, '2022-05-30 06:31:09', '2022-05-30 06:38:16'),
(175, 'updatesourcing.com', 6, 0, '2022-05-30', '2020-12-15', '2020-12-17', 'admin2\r\nG#6aH0eO#3qk:2\r\nadmin2@updatesourcing.com\r\n\r\nhttp://updatesourcing.com/wp-admin/\r\n\r\n\r\nCP:\r\n\r\nupdateso\r\npI6#oBF4]6L3kl', NULL, 'Complete', 100, NULL, '2022-05-30 06:34:38', '2022-05-30 06:35:00'),
(176, 'blcengr.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n0120451/front\r\nadmin2@blcengr.com\r\n\r\nhttps://blcengr.com/wp-admin/\r\n\r\n\r\nCP: \r\n\r\nblcengr1\r\n1rgT2(sLxJ7)L1', NULL, 'Complete', 100, NULL, '2022-05-30 06:35:53', '2022-05-30 06:36:05'),
(177, 'globalproductbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\nV@F:C2rNj#s#K2\r\n\r\nadmin2@globalproductbd.com\r\n\r\nCP:\r\n\r\nglobalpr\r\n\r\na1zT]HhY00!S7z', NULL, 'Complete', 100, NULL, '2022-05-30 06:36:46', '2022-05-30 06:36:56'),
(178, 'fatihahhalalfood.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'CP: \r\n\r\nfatihahh\r\n.l57EtiAo0W1[T\r\n\r\nfatihahhalalfood.com', NULL, 'Complete', 100, NULL, '2022-05-30 06:37:32', '2022-05-30 06:38:29'),
(179, 'alrighttexinc.ca', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n#2o%d4hPU#p773\r\nadmin2@alrighttexinc.ca\r\n\r\n https://alrighttexinc.ca/wp-admin/\r\n\r\n\r\nCP:\r\n\r\nalrightt\r\nm7Sk4TH9-K@g0x', NULL, 'Complete', 100, NULL, '2022-05-30 06:39:20', '2022-05-30 06:39:31'),
(180, 'climaxgarblimited.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\n$K83wZLECW\r\nmark@climaxgarblimited.com', NULL, 'Complete', 100, NULL, '2022-05-30 06:40:06', '2022-05-30 06:40:17'),
(181, 'traveliatoursbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n#9V?pcG8sU$B45\r\n\r\nadmin2@traveliatoursbd.com\r\n\r\n\r\n https://traveliatoursbd.com/wp-admin/\r\n\r\n\r\nCP:\r\n\r\ntravelia\r\n\r\nl679g3UeXYp)U;', NULL, 'Complete', 100, NULL, '2022-05-30 06:41:01', '2022-05-30 06:41:27'),
(182, 'kartixworld.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\nulous/index.liv\r\nadmin2@kartixworld.com\r\n\r\n\r\nkartixworld.com/cpanel\r\nuser : kartixworld\r\npass : sayeem@8899', NULL, 'Complete', 100, NULL, '2022-05-30 06:41:52', '2022-05-30 06:42:21'),
(183, 'psc.com.bd', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'CP\r\npsc.com.bd\r\n\r\nuser: psccombd\r\npass: gLo3VRs0;c)C70', NULL, 'Complete', 100, NULL, '2022-05-30 06:43:06', '2022-05-30 06:43:48'),
(184, 'www.aviation.com.bd', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'Link: www.aviation.com.bd/cpanel\r\nUser: aviation\r\nPass: Aerobd@311281', NULL, 'Complete', 100, NULL, '2022-05-30 06:44:21', '2022-05-30 06:44:46'),
(185, 'bilasy.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n$P$B0HPx16PY\r\nadmin2@bilasy.com\r\nhttps://bilasy.com/', NULL, 'Complete', 100, NULL, '2022-05-30 06:45:15', '2022-05-30 06:49:45'),
(186, 'manisha engineering', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'CP \r\nmanisha1\r\nq#38a8-cb3GTCA', NULL, 'Complete', 100, NULL, '2022-05-30 06:46:22', '2022-05-30 06:49:35'),
(187, 'hameemtextiles.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n@2&m7Cbh&e#Zf22\r\nadmin2@hameemtextiles.com\r\n\r\nCP:\r\n\r\nhameemte\r\ns@kUX1J7ue4:W4', NULL, 'Complete', 100, NULL, '2022-05-30 06:47:03', '2022-05-30 06:49:25'),
(188, 'baba.com.bd', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'wp info: \r\nuser: admin\r\npass: baba@321#', NULL, 'Complete', 100, NULL, '2022-05-30 06:47:46', '2022-05-30 06:49:14'),
(189, 'steamboilerbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\npaper_lantern/soft\r\n\r\nadmin2@steamboilerbd.com\r\n\r\nhttps://steamboilerbd.com/wp-admin/\r\n\r\nCP:\r\n\r\nsteamboi\r\nX4osis*2Y:51UV', NULL, 'Complete', 100, NULL, '2022-05-30 06:50:12', '2022-05-30 06:50:32'),
(190, 'gallerybangladesh.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n\r\nJ#d&GrAS^B1WQ11\r\n\r\nadmin2@gallerybangladesh.com\r\n\r\nhttp://gallerybangladesh.com/wp-admin/\r\n\r\n\r\nCP:\r\n\r\ngalleryb\r\n\r\ny28#fW1lR8(JWo', NULL, 'Complete', 100, NULL, '2022-05-30 06:51:07', '2022-05-30 06:51:37'),
(191, 'artfurnishersbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n85055/fronten\r\nhttp://artfurnishersbd.com/wp-admin/\r\n\r\n\r\nCP:\r\n\r\nartfurni\r\n68tu1MO@UCd1s#', NULL, 'Complete', 100, NULL, '2022-05-30 06:53:35', '2022-05-30 06:53:58'),
(192, 'bogradiabeticsomity.org', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\n\r\n781343/frontend/paper\r\n\r\ninfo@bogradiabeticsomity.org\r\n\r\nhttp://bogradiabeticsomity.org/wp-login.php\r\n\r\nCP:\r\nbogradia\r\nlt17Ivw4.HY@8P', NULL, 'Complete', 100, NULL, '2022-05-30 06:55:15', '2022-05-30 06:55:42'),
(193, 'idab.com.bd', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n031628/fronten\r\n\r\nhttp://idab.com.bd/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 06:56:29', '2022-05-30 06:56:46'),
(194, 'mrfabric.co.uk', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n\r\nQ%a&Yo?RIJT8I23\r\n\r\nadmin2@mrfabric.co.uk\r\n\r\nhttp://mrfabric.co.uk/wp-admin\r\n\r\nCP\r\n\r\nmrfabric\r\nE+W13Ra)24xbmN', NULL, 'Complete', 100, NULL, '2022-05-30 06:57:19', '2022-05-30 06:57:41'),
(195, 'spice-n-organics.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'spice-n-organics.com\r\n\r\nCP\r\n\r\nspicenor\r\nCN4.5cM07zQw#x\r\n\r\nwp\r\nspice-n-organics.com/wp-admin \r\n\r\nadmin2\r\n$P$BueghMeOj362Z', NULL, 'Complete', 100, NULL, '2022-05-30 06:58:09', '2022-05-30 06:58:18'),
(196, 'giantstepbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\n2LVKgHU#%?9$d1\r\nadmin2@giantstepbd.com\r\nhttp://giantstepbd.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 06:59:23', '2022-05-30 06:59:33'),
(197, 'emestc.com/', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\nRQhn9B$qT$xI01\r\n\r\nadmin2@emestc.com\r\n\r\nhttp://emestc.com/wp-admin/\r\n\r\nCP\r\nemestcco\r\nB2rR3)n7Ho+u6A', NULL, 'Complete', 100, NULL, '2022-05-30 07:00:27', '2022-05-30 07:04:10'),
(198, 'refreshlimited.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n8G#$@jgg#Gja%1\r\nhttp://refreshlimited.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:01:20', '2022-05-30 07:01:39'),
(199, 'digitechbiz.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\ns3#92ZTi%E3\r\ninfo@digitechbiz.com\r\n\r\n\r\nhttps://digitechbiz.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:02:01', '2022-05-30 07:02:38'),
(200, 'vape dubai', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'WP Info\r\nuser:admin2\r\npass:dubaivape@#321', NULL, 'Complete', 100, NULL, '2022-05-30 07:03:47', '2022-05-30 07:03:58'),
(201, 'valanciassecret.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\nqrX@TVy1XKN$l1\r\nhttp://valanciassecret.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:04:49', '2022-05-30 07:05:15'),
(202, 'readyassetbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'readyass\r\n31f1[qD:AX7Kzj\r\nreadyassetbd.com', NULL, 'Complete', 100, NULL, '2022-05-30 07:05:36', '2022-05-30 07:05:57'),
(203, 'royalpopulartrustmarket.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'royalpop\r\n.53jvhISQ2:lN3\r\nroyalpopulartrustmarket.com', NULL, 'Complete', 100, NULL, '2022-05-30 07:06:19', '2022-05-30 07:08:27'),
(204, 'dfwairportlimo.net', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'dfwairportlimo.net\r\nmark\r\n64454/fronten', NULL, 'Complete', 100, NULL, '2022-05-30 07:07:44', '2022-05-30 07:08:36'),
(205, 'coronagrouplive.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'coronagrouplive.com\r\nCP:\r\ncoronagr\r\n0:02EzTal5xTM*', NULL, 'New', 0, NULL, '2022-05-30 07:08:55', '2022-05-30 07:08:55'),
(206, 'moitriprint.com', 1, 0, '2022-05-30', '2022-05-30', '2022-06-08', 'details from mohin', 'CP:\r\nmoitriprint.com/cpanel\r\nmoitripr\r\nAfY9:22g5Nhc)Z', 'New', 0, NULL, '2022-05-30 07:09:33', '2022-05-30 07:09:33'),
(207, 'rizvifruitsltd.com.bd', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'rizvifruitsltd.com.bd\r\nCP:\r\nrizvifru\r\nB96jZ7:p1f:yQS', NULL, 'Complete', 100, NULL, '2022-05-30 07:10:05', '2022-05-30 07:11:01'),
(208, 'rakhalini.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'http://rakhalini.com/wp-admin/\r\nmark\r\n\r\n1EkGjJQE@9CUz2\r\n\r\nadmin2@rakhalini.com\r\n\r\nCP: \r\n\r\nrakhalin\r\n\r\nqxuEV[Yi6(A594', NULL, 'Complete', 100, NULL, '2022-05-30 07:11:25', '2022-05-30 07:11:54'),
(209, 'hasanenterprisebd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\n765/fronte\r\nshadman@creativetechpark.com\r\n\r\n\r\nCP:\r\nuser: hasanenterprise\r\npass: igLWWVQN52c\r\n\r\nhasanenterprisebd.com', NULL, 'Complete', 100, NULL, '2022-05-30 07:12:24', '2022-05-30 07:12:47'),
(210, 'nexalimited.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\n158860/frontend\r\n\r\nhttp://nexalimited.com/wp-admin/\r\n\r\nCP:\r\nnexalimi\r\n2*GjoH]S83aW6p', NULL, 'Complete', 100, NULL, '2022-05-30 07:13:24', '2022-05-30 07:13:33'),
(211, 'anniprintingpress.com', 1, 0, '2022-05-30', '2022-05-30', '2022-05-30', NULL, 'CP:\r\nanniprin\r\n1w)#x9CM4FdN0i\r\nanniprintingpress.com\r\n\r\n\r\nhttp://anniprintingpress.com/wp-admin\r\nuser: admin2\r\npass: 6M%OF4bBG#qCR', 'Complete', 100, NULL, '2022-05-30 07:21:49', '2022-06-13 06:13:23'),
(212, 'asestechbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'asestech\r\nnxF19J;52WMz;j\r\nasestechbd.com', NULL, 'Complete', 100, NULL, '2022-05-30 07:22:42', '2022-05-30 07:22:59'),
(213, 'ktexbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n495646/fronte\r\nadmin2@ktexbd.com\r\nhttps://ktexbd.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:23:47', '2022-05-30 07:24:23'),
(214, 'deshiolimited.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n3/cpsess8680\r\nadmin2@deshiolimited.com\r\nhttps://deshiolimited.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:25:07', '2022-05-30 07:25:23'),
(215, 'bsbdmart.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n560/frontend/pap\r\nadmin2@bsbdmart.com\r\nhttps://bsbdmart.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:25:50', '2022-05-30 07:29:57'),
(216, 'gsac.com.bd', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'http://gsac.com.bd/wp-admin/\r\nadmin2\r\noxXUmyUh2jlCe7V', NULL, 'Complete', 100, NULL, '2022-05-30 07:27:19', '2022-05-30 07:29:47'),
(217, 'mridhagroup.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'CP:\r\nmridhagroup.com\r\nmridhagr\r\nN!e8Ng@0vY36Mj', NULL, 'Complete', 100, NULL, '2022-05-30 07:28:31', '2022-05-30 07:29:37'),
(218, 'nstarrgroup.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'admin2\r\n$P$BsCkodTN5tK\r\n\r\nCP\r\nnstarrgr\r\nSPQ[kL7+5gg05u\r\nnstarrgroup.com\r\nadmin2@nstarrgroup.com', NULL, 'Complete', 100, NULL, '2022-05-30 07:29:18', '2022-05-30 07:30:28'),
(219, 'vaultmonarch.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'Admin2\r\n0&rLDK$p8e&AS\r\n\r\nvaultmonarch.com\r\n\r\nCP:\r\nvaultmon\r\nTu4YuYH21)hj-8', NULL, 'Complete', 100, NULL, '2022-05-30 07:31:04', '2022-05-30 07:31:28'),
(220, 'dhakaeye.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'Cp\r\ndhakaeye\r\nY0j[hjHV6y1@8X\r\n\r\ndhakaeye.com', NULL, 'Complete', 100, NULL, '2022-05-30 07:31:49', '2022-05-30 07:32:17');
INSERT INTO `projects` (`id`, `name`, `user_id`, `client_id`, `date`, `start`, `end`, `description`, `credential`, `status`, `progress`, `files`, `created_at`, `updated_at`) VALUES
(221, 'princessgallerybd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'mark\r\n96619/front\r\n\r\nhttp://princessgallerybd.com/wp-admin/', NULL, 'Complete', 100, NULL, '2022-05-30 07:32:45', '2022-05-30 07:33:06'),
(222, 'idealprotectionbd.com', 6, 0, '2022-05-30', '2022-05-30', '2022-05-30', 'WP:\r\nadmin2\r\n\\8N@FjET#FgCG1\r\nhttps://idealprotectionbd.com/\r\n\r\nCP:\r\nidealpro\r\nU5]AA)03lA2gxk', NULL, 'Complete', 100, NULL, '2022-05-30 07:33:27', '2022-05-30 07:34:15'),
(223, 'boshonbd.com', 1, 0, '2022-05-30', '2022-05-30', '2022-06-07', 'details from taj', 'CP:\r\nboshonbd\r\nfG5U)Gn:0l90xX', 'New', 0, NULL, '2022-05-30 11:16:18', '2022-06-22 10:43:13'),
(224, 'Elsultan.com.au', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, 'https://www.crazydomains.com.au/login/domain-name-login/\r\nUser Name: elsultan\r\npassword: WARMA1234*\r\n\r\n\r\nadmin11\r\nkjanlkfkjdjnous@#$321', 'New', 0, NULL, '2022-06-01 10:17:00', '2022-06-22 00:29:07'),
(225, 'Balapur.com.bd', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, 'WordPress\r\n---------------\r\nUsername: admin\r\nPassword: balapuradmin123\r\nLogin link: https://balapur.com.bd/wp-admin/\r\n\r\nCpanel\r\n------------\r\nUsername: balapurc\r\nPassword:\r\nLogin link: https://balapur.com.bd/cpanel/', 'New', 0, NULL, '2022-06-01 10:24:10', '2022-06-01 10:24:10'),
(226, 'Shipsagroup.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:25:08', '2022-06-01 10:25:08'),
(227, 'Paakhihome.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:28:38', '2022-06-01 10:28:38'),
(228, 'Luxurybless.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:29:30', '2022-06-01 10:29:30'),
(229, 'Bgols.net', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:29:58', '2022-06-01 10:29:58'),
(230, 'Residencyturkey.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:30:20', '2022-06-01 10:30:20'),
(231, 'Moitriprint.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:31:01', '2022-06-01 10:31:01'),
(232, 'Tarekmasud.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-01', NULL, NULL, 'New', 0, NULL, '2022-06-01 10:32:13', '2022-06-01 10:32:13'),
(233, 'discoverinternationalservice.com', 19, 0, '2022-06-01', '2022-06-01', '2022-06-15', NULL, 'Cpanel\r\n--------------\r\nUsername: discove4\r\nPassword: DWo!o00VsgG6@8\r\n\r\nWordPress\r\n----------------\r\nUsername: admin11\r\nPassword: discover@#$123', 'New', 0, NULL, '2022-06-01 13:00:08', '2022-06-02 12:33:17'),
(234, 'st0ffa.com', 19, 0, '2022-06-02', '2022-06-02', '2022-06-16', 'details from zafar', 'CP:\r\nstffacom\r\nHtM989t(IZn7u+\r\n\r\n\r\nadmin11\r\nJ$B40O$t5h\r\n\r\n\r\nmail:\r\ninfo\r\n!#?2W9@R8_*p', 'New', 0, NULL, '2022-06-02 16:28:29', '2022-06-22 08:16:55'),
(235, 'henryopt-fiber.com', 1, 0, '2022-06-04', '2022-06-04', '2022-06-18', 'details from bishal', 'cp:\r\nhenryopt\r\n0x+fhO2kN+XB05', 'New', 0, NULL, '2022-06-04 09:22:00', '2022-06-04 09:22:00'),
(236, 'hrgroupbd.net', 19, 0, '2022-06-04', '2022-06-04', '2022-06-11', 'details from taj', 'CP:\r\nhrgroupb\r\nxxXS[aT15;E97i', 'New', 0, NULL, '2022-06-04 09:23:50', '2022-06-14 04:53:03'),
(237, 'afrinknit.com', 19, 0, '2022-06-04', '2022-06-04', '2022-06-18', 'details from zafar', 'CP:\r\nafrinkni\r\njf9X(vO72RX]x8\r\n\r\n\r\nwp:\r\nadmin11\r\nafrinknit@#$123', 'New', 0, NULL, '2022-06-04 09:50:06', '2022-06-05 02:28:00'),
(238, 'turkiyetourist.com', 1, 0, '2022-06-04', '2022-06-04', '2022-06-18', 'need one logo along with turkey flag and national bird.', 'CP:\r\nturkiyet\r\nj07!SXNS.5rk1v\r\n\r\n\r\nWP:\r\nadmin22\r\n8644/fronte', 'New', 0, NULL, '2022-06-04 13:26:24', '2022-06-04 13:26:24'),
(239, 'topnotchassignments.net', 13, 0, '2022-06-05', '2022-06-05', '2022-06-19', 'details from zafar', 'CP:\r\ntopnotc1\r\n[T-xoClZ6W99s3\r\n\r\nwp: \r\nuser: admin3\r\npass : passwr@#notchadmin360', 'New', 0, NULL, '2022-06-05 05:43:56', '2022-06-05 08:42:46'),
(240, 'discoverthailandco.com', 1, 0, '2022-06-05', '2022-06-05', '2022-06-19', NULL, 'CP\r\nhttps://discoverthailandco.com:2083/\r\nthaimedics\r\n36084158/scrip\r\n\r\npublic_html/discoverthailandco.com\r\n\r\nWP\r\nadmin33\r\ness61755882', 'New', 0, NULL, '2022-06-05 15:45:10', '2022-06-05 17:12:55'),
(241, 'Bdlwc.net', 19, 0, '2022-06-09', '2022-06-09', '2022-06-09', NULL, 'Cpanel:\r\nUser Name: bdlwcnet\r\nPassword: 0Axhz30@tyr5614253', 'New', 0, NULL, '2022-06-09 09:24:07', '2022-06-09 09:24:07'),
(242, 'Asaduzzaman nur', 4, 0, '2022-06-10', '2022-06-10', '2022-06-22', 'https://vintagefashionhouse.com/wp-login.php\r\nUser: developer\r\nPass: webadmin@vintagefashionhouse2022Bangladesh', NULL, 'New', 0, NULL, '2022-06-10 06:59:36', '2022-06-10 07:06:21'),
(243, 'gie.com.bd', 19, 0, '2022-06-19', '2022-06-19', '2022-06-21', 'details from mohin', 'CP:\r\ngiecomb1\r\nj1H92oL!bp*1KF\r\n\r\nwp:\r\nadmin3\r\npasswr@#gieadmin3\r\n\r\n\r\nadmin232\r\n2@G1OYNnmv', 'New', 0, NULL, '2022-06-19 07:28:54', '2022-06-22 17:18:55'),
(244, 'restaurantbasmati.com', 1, 0, '2022-06-22', '2022-06-22', '2022-06-24', 'details from zafar', 'CP:\r\nrestaura\r\nH8neWSoAn76!6(', 'New', 0, NULL, '2022-06-22 10:41:11', '2022-06-22 10:41:11'),
(245, 'rahmans-academy.com', 1, 0, '2022-06-22', '2022-06-22', '2022-06-27', 'details from taj', 'Cp:\r\nrahmansa\r\n6A;5Sm.6i1EeIo', 'New', 0, NULL, '2022-06-22 10:42:17', '2022-06-22 10:42:17');

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

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`id`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 2, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 4, 3, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 8, 2, NULL, NULL),
(8, 8, 3, NULL, NULL),
(12, 10, 2, NULL, NULL),
(13, 10, 3, NULL, NULL),
(14, 11, 3, NULL, NULL),
(15, 12, 2, NULL, NULL),
(16, 12, 3, NULL, NULL),
(19, 15, 5, NULL, NULL),
(27, 15, 6, NULL, NULL),
(28, 17, 5, NULL, NULL),
(29, 17, 6, NULL, NULL),
(30, 20, 3, NULL, NULL),
(31, 21, 2, NULL, NULL),
(32, 21, 6, NULL, NULL),
(34, 22, 4, NULL, NULL),
(36, 23, 6, NULL, NULL),
(38, 24, 6, NULL, NULL),
(39, 25, 1, NULL, NULL),
(40, 25, 4, NULL, NULL),
(41, 26, 4, NULL, NULL),
(42, 26, 6, NULL, NULL),
(43, 27, 4, NULL, NULL),
(44, 27, 6, NULL, NULL),
(45, 25, 6, NULL, NULL),
(46, 25, 7, NULL, NULL),
(47, 28, 1, NULL, NULL),
(48, 28, 4, NULL, NULL),
(49, 28, 7, NULL, NULL),
(50, 29, 1, NULL, NULL),
(51, 29, 4, NULL, NULL),
(52, 29, 7, NULL, NULL),
(53, 30, 1, NULL, NULL),
(54, 30, 4, NULL, NULL),
(55, 30, 6, NULL, NULL),
(56, 30, 7, NULL, NULL),
(61, 24, 5, NULL, NULL),
(62, 24, 7, NULL, NULL),
(63, 22, 6, NULL, NULL),
(64, 22, 7, NULL, NULL),
(65, 22, 5, NULL, NULL),
(68, 33, 5, NULL, NULL),
(69, 34, 5, NULL, NULL),
(70, 34, 6, NULL, NULL),
(71, 35, 5, NULL, NULL),
(72, 35, 6, NULL, NULL),
(74, 36, 6, NULL, NULL),
(75, 37, 5, NULL, NULL),
(76, 37, 6, NULL, NULL),
(77, 38, 5, NULL, NULL),
(79, 39, 5, NULL, NULL),
(80, 39, 6, NULL, NULL),
(81, 36, 7, NULL, NULL),
(85, 43, 1, NULL, NULL),
(86, 43, 4, NULL, NULL),
(88, 43, 7, NULL, NULL),
(89, 38, 6, NULL, NULL),
(90, 36, 4, NULL, NULL),
(91, 24, 4, NULL, NULL),
(92, 16, 5, NULL, NULL),
(93, 16, 6, NULL, NULL),
(94, 27, 7, NULL, NULL),
(95, 44, 4, NULL, NULL),
(96, 44, 6, NULL, NULL),
(97, 45, 4, NULL, NULL),
(99, 46, 5, NULL, NULL),
(100, 46, 6, NULL, NULL),
(101, 47, 5, NULL, NULL),
(102, 47, 6, NULL, NULL),
(103, 48, 4, NULL, NULL),
(105, 49, 6, NULL, NULL),
(106, 50, 2, NULL, NULL),
(107, 50, 6, NULL, NULL),
(108, 51, 5, NULL, NULL),
(109, 51, 6, NULL, NULL),
(110, 45, 7, NULL, NULL),
(114, 53, 9, NULL, NULL),
(115, 53, 6, NULL, NULL),
(117, 54, 1, NULL, NULL),
(119, 55, 8, NULL, NULL),
(120, 56, 6, NULL, NULL),
(121, 54, 6, NULL, NULL),
(122, 57, 6, NULL, NULL),
(126, 58, 9, NULL, NULL),
(127, 57, 9, NULL, NULL),
(128, 55, 4, NULL, NULL),
(129, 43, 8, NULL, NULL),
(131, 59, 9, NULL, NULL),
(133, 60, 1, NULL, NULL),
(134, 60, 5, NULL, NULL),
(135, 60, 7, NULL, NULL),
(136, 61, 5, NULL, NULL),
(137, 61, 6, NULL, NULL),
(138, 56, 7, NULL, NULL),
(139, 62, 9, NULL, NULL),
(142, 63, 9, NULL, NULL),
(143, 64, 5, NULL, NULL),
(144, 64, 6, NULL, NULL),
(145, 59, 4, NULL, NULL),
(146, 65, 5, NULL, NULL),
(148, 66, 9, NULL, NULL),
(149, 67, 1, NULL, NULL),
(150, 67, 5, NULL, NULL),
(151, 67, 7, NULL, NULL),
(152, 68, 1, NULL, NULL),
(153, 68, 5, NULL, NULL),
(154, 68, 7, NULL, NULL),
(155, 69, 1, NULL, NULL),
(156, 69, 4, NULL, NULL),
(157, 69, 7, NULL, NULL),
(158, 70, 7, NULL, NULL),
(159, 70, 1, NULL, NULL),
(160, 70, 5, NULL, NULL),
(161, 71, 1, NULL, NULL),
(162, 71, 4, NULL, NULL),
(163, 71, 7, NULL, NULL),
(164, 72, 1, NULL, NULL),
(165, 72, 4, NULL, NULL),
(166, 72, 7, NULL, NULL),
(167, 73, 5, NULL, NULL),
(168, 73, 7, NULL, NULL),
(169, 65, 6, NULL, NULL),
(171, 74, 5, NULL, NULL),
(172, 74, 6, NULL, NULL),
(173, 48, 8, NULL, NULL),
(175, 58, 6, NULL, NULL),
(176, 75, 4, NULL, NULL),
(177, 75, 6, NULL, NULL),
(178, 75, 9, NULL, NULL),
(179, 76, 1, NULL, NULL),
(180, 76, 5, NULL, NULL),
(181, 76, 7, NULL, NULL),
(182, 77, 6, NULL, NULL),
(183, 77, 9, NULL, NULL),
(184, 78, 4, NULL, NULL),
(185, 78, 8, NULL, NULL),
(186, 79, 7, NULL, NULL),
(187, 80, 5, NULL, NULL),
(188, 81, 4, NULL, NULL),
(189, 81, 8, NULL, NULL),
(191, 82, 4, NULL, NULL),
(192, 82, 6, NULL, NULL),
(194, 80, 6, NULL, NULL),
(195, 83, 1, NULL, NULL),
(196, 83, 6, NULL, NULL),
(197, 83, 9, NULL, NULL),
(198, 84, 5, NULL, NULL),
(199, 84, 6, NULL, NULL),
(200, 85, 5, NULL, NULL),
(201, 85, 6, NULL, NULL),
(202, 86, 5, NULL, NULL),
(203, 86, 6, NULL, NULL),
(204, 87, 5, NULL, NULL),
(205, 87, 6, NULL, NULL),
(206, 88, 5, NULL, NULL),
(207, 88, 6, NULL, NULL),
(208, 89, 5, NULL, NULL),
(209, 89, 6, NULL, NULL),
(210, 90, 4, NULL, NULL),
(211, 90, 8, NULL, NULL),
(212, 90, 9, NULL, NULL),
(213, 91, 8, NULL, NULL),
(214, 92, 8, NULL, NULL),
(215, 58, 8, NULL, NULL),
(216, 93, 5, NULL, NULL),
(217, 93, 6, NULL, NULL),
(218, 94, 4, NULL, NULL),
(219, 94, 8, NULL, NULL),
(220, 95, 5, NULL, NULL),
(221, 95, 6, NULL, NULL),
(222, 96, 5, NULL, NULL),
(223, 96, 6, NULL, NULL),
(224, 97, 5, NULL, NULL),
(226, 98, 6, NULL, NULL),
(227, 98, 8, NULL, NULL),
(228, 98, 10, NULL, NULL),
(229, 99, 6, NULL, NULL),
(230, 99, 8, NULL, NULL),
(231, 100, 6, NULL, NULL),
(232, 100, 8, NULL, NULL),
(233, 101, 6, NULL, NULL),
(236, 102, 5, NULL, NULL),
(237, 102, 6, NULL, NULL),
(238, 103, 10, NULL, NULL),
(239, 104, 8, NULL, NULL),
(240, 105, 5, NULL, NULL),
(241, 105, 6, NULL, NULL),
(242, 106, 8, NULL, NULL),
(243, 106, 4, NULL, NULL),
(244, 107, 5, NULL, NULL),
(245, 107, 6, NULL, NULL),
(246, 108, 6, NULL, NULL),
(247, 108, 10, NULL, NULL),
(248, 109, 6, NULL, NULL),
(249, 109, 10, NULL, NULL),
(250, 109, 8, NULL, NULL),
(251, 110, 5, NULL, NULL),
(252, 110, 6, NULL, NULL),
(253, 111, 5, NULL, NULL),
(254, 111, 6, NULL, NULL),
(255, 112, 6, NULL, NULL),
(256, 113, 6, NULL, NULL),
(257, 108, 8, NULL, NULL),
(258, 114, 6, NULL, NULL),
(259, 114, 10, NULL, NULL),
(260, 114, 8, NULL, NULL),
(261, 115, 5, NULL, NULL),
(262, 115, 6, NULL, NULL),
(263, 116, 6, NULL, NULL),
(264, 106, 6, NULL, NULL),
(265, 104, 6, NULL, NULL),
(266, 92, 6, NULL, NULL),
(267, 94, 6, NULL, NULL),
(268, 117, 5, NULL, NULL),
(269, 117, 6, NULL, NULL),
(270, 71, 6, NULL, NULL),
(271, 118, 5, NULL, NULL),
(272, 118, 6, NULL, NULL),
(273, 118, 7, NULL, NULL),
(274, 119, 5, NULL, NULL),
(275, 119, 6, NULL, NULL),
(276, 119, 7, NULL, NULL),
(277, 120, 4, NULL, NULL),
(278, 120, 6, NULL, NULL),
(279, 121, 4, NULL, NULL),
(281, 122, 6, NULL, NULL),
(282, 122, 11, NULL, NULL),
(283, 123, 6, NULL, NULL),
(284, 123, 11, NULL, NULL),
(285, 124, 5, NULL, NULL),
(287, 125, 5, NULL, NULL),
(288, 125, 6, NULL, NULL),
(289, 104, 7, NULL, NULL),
(290, 122, 7, NULL, NULL),
(291, 126, 5, NULL, NULL),
(292, 126, 6, NULL, NULL),
(293, 127, 5, NULL, NULL),
(294, 127, 6, NULL, NULL),
(295, 127, 7, NULL, NULL),
(296, 126, 7, NULL, NULL),
(297, 128, 6, NULL, NULL),
(298, 129, 5, NULL, NULL),
(299, 129, 6, NULL, NULL),
(300, 130, 5, NULL, NULL),
(302, 131, 6, NULL, NULL),
(303, 132, 5, NULL, NULL),
(304, 132, 6, NULL, NULL),
(305, 133, 6, NULL, NULL),
(306, 101, 4, NULL, NULL),
(307, 101, 7, NULL, NULL),
(308, 132, 7, NULL, NULL),
(309, 132, 13, NULL, NULL),
(310, 134, 4, NULL, NULL),
(311, 134, 13, NULL, NULL),
(312, 135, 6, NULL, NULL),
(313, 135, 11, NULL, NULL),
(314, 135, 13, NULL, NULL),
(315, 136, 5, NULL, NULL),
(316, 136, 13, NULL, NULL),
(317, 137, 4, NULL, NULL),
(318, 137, 6, NULL, NULL),
(319, 138, 4, NULL, NULL),
(320, 138, 13, NULL, NULL),
(321, 139, 5, NULL, NULL),
(322, 139, 6, NULL, NULL),
(325, 141, 5, NULL, NULL),
(326, 141, 6, NULL, NULL),
(327, 142, 5, NULL, NULL),
(328, 142, 6, NULL, NULL),
(329, 143, 13, NULL, NULL),
(330, 144, 5, NULL, NULL),
(332, 145, 1, NULL, NULL),
(336, 146, 6, NULL, NULL),
(337, 146, 13, NULL, NULL),
(338, 147, 6, NULL, NULL),
(339, 148, 5, NULL, NULL),
(340, 148, 6, NULL, NULL),
(341, 149, 5, NULL, NULL),
(342, 149, 6, NULL, NULL),
(343, 137, 13, NULL, NULL),
(344, 150, 5, NULL, NULL),
(346, 151, 6, NULL, NULL),
(347, 152, 5, NULL, NULL),
(349, 153, 5, NULL, NULL),
(350, 153, 6, NULL, NULL),
(351, 153, 13, NULL, NULL),
(352, 154, 5, NULL, NULL),
(353, 154, 6, NULL, NULL),
(354, 155, 5, NULL, NULL),
(355, 155, 6, NULL, NULL),
(356, 156, 5, NULL, NULL),
(358, 157, 4, NULL, NULL),
(359, 157, 13, NULL, NULL),
(362, 158, 11, NULL, NULL),
(364, 160, 6, NULL, NULL),
(365, 160, 11, NULL, NULL),
(366, 161, 4, NULL, NULL),
(367, 161, 6, NULL, NULL),
(368, 159, 13, NULL, NULL),
(369, 162, 4, NULL, NULL),
(370, 162, 13, NULL, NULL),
(371, 163, 11, NULL, NULL),
(372, 163, 13, NULL, NULL),
(373, 164, 1, NULL, NULL),
(374, 165, 5, NULL, NULL),
(377, 166, 14, NULL, NULL),
(378, 167, 14, NULL, NULL),
(379, 168, 14, NULL, NULL),
(380, 169, 4, NULL, NULL),
(381, 169, 13, NULL, NULL),
(382, 52, 4, NULL, NULL),
(383, 52, 13, NULL, NULL),
(384, 170, 5, NULL, NULL),
(386, 171, 5, NULL, NULL),
(388, 125, 13, NULL, NULL),
(389, 172, 6, NULL, NULL),
(390, 173, 6, NULL, NULL),
(391, 174, 6, NULL, NULL),
(392, 175, 6, NULL, NULL),
(393, 176, 6, NULL, NULL),
(394, 177, 6, NULL, NULL),
(395, 178, 6, NULL, NULL),
(396, 179, 6, NULL, NULL),
(397, 180, 6, NULL, NULL),
(398, 181, 6, NULL, NULL),
(399, 182, 6, NULL, NULL),
(400, 183, 6, NULL, NULL),
(401, 184, 6, NULL, NULL),
(402, 185, 6, NULL, NULL),
(403, 186, 6, NULL, NULL),
(404, 187, 6, NULL, NULL),
(405, 188, 6, NULL, NULL),
(406, 189, 6, NULL, NULL),
(407, 190, 6, NULL, NULL),
(408, 191, 6, NULL, NULL),
(409, 192, 6, NULL, NULL),
(410, 193, 6, NULL, NULL),
(411, 194, 6, NULL, NULL),
(412, 195, 6, NULL, NULL),
(413, 196, 6, NULL, NULL),
(414, 197, 6, NULL, NULL),
(415, 198, 6, NULL, NULL),
(416, 199, 6, NULL, NULL),
(417, 200, 6, NULL, NULL),
(418, 201, 6, NULL, NULL),
(419, 202, 6, NULL, NULL),
(420, 203, 6, NULL, NULL),
(421, 204, 6, NULL, NULL),
(422, 205, 6, NULL, NULL),
(423, 206, 11, NULL, NULL),
(424, 207, 6, NULL, NULL),
(425, 208, 6, NULL, NULL),
(426, 209, 6, NULL, NULL),
(427, 210, 6, NULL, NULL),
(429, 212, 6, NULL, NULL),
(430, 213, 6, NULL, NULL),
(431, 214, 6, NULL, NULL),
(432, 215, 6, NULL, NULL),
(433, 216, 6, NULL, NULL),
(434, 217, 6, NULL, NULL),
(435, 218, 6, NULL, NULL),
(436, 219, 6, NULL, NULL),
(437, 220, 6, NULL, NULL),
(438, 221, 6, NULL, NULL),
(439, 222, 6, NULL, NULL),
(440, 223, 5, NULL, NULL),
(441, 97, 19, NULL, NULL),
(442, 156, 19, NULL, NULL),
(443, 152, 19, NULL, NULL),
(444, 224, 5, NULL, NULL),
(445, 224, 19, NULL, NULL),
(446, 225, 4, NULL, NULL),
(447, 225, 19, NULL, NULL),
(448, 226, 19, NULL, NULL),
(449, 227, 19, NULL, NULL),
(450, 228, 19, NULL, NULL),
(451, 229, 19, NULL, NULL),
(452, 230, 19, NULL, NULL),
(453, 231, 19, NULL, NULL),
(454, 232, 19, NULL, NULL),
(455, 233, 19, NULL, NULL),
(456, 170, 13, NULL, NULL),
(458, 224, 13, NULL, NULL),
(459, 144, 13, NULL, NULL),
(460, 130, 13, NULL, NULL),
(461, 97, 13, NULL, NULL),
(462, 152, 13, NULL, NULL),
(463, 234, 4, NULL, NULL),
(464, 234, 19, NULL, NULL),
(465, 165, 19, NULL, NULL),
(466, 159, 19, NULL, NULL),
(467, 235, 17, NULL, NULL),
(468, 235, 19, NULL, NULL),
(469, 236, 5, NULL, NULL),
(470, 236, 19, NULL, NULL),
(471, 237, 4, NULL, NULL),
(472, 237, 19, NULL, NULL),
(473, 238, 19, NULL, NULL),
(475, 239, 4, NULL, NULL),
(476, 239, 13, NULL, NULL),
(477, 240, 19, NULL, NULL),
(478, 171, 13, NULL, NULL),
(479, 140, 11, NULL, NULL),
(480, 140, 19, NULL, NULL),
(481, 158, 19, NULL, NULL),
(482, 121, 19, NULL, NULL),
(483, 158, 13, NULL, NULL),
(484, 241, 4, NULL, NULL),
(485, 241, 19, NULL, NULL),
(486, 242, 4, NULL, NULL),
(487, 242, 1, NULL, NULL),
(488, 242, 19, NULL, NULL),
(489, 52, 19, NULL, NULL),
(490, 211, 5, NULL, NULL),
(491, 211, 13, NULL, NULL),
(492, 211, 19, NULL, NULL),
(493, 124, 13, NULL, NULL),
(494, 236, 13, NULL, NULL),
(495, 243, 11, NULL, NULL),
(496, 243, 13, NULL, NULL),
(497, 244, 4, NULL, NULL),
(498, 244, 19, NULL, NULL),
(499, 245, 5, NULL, NULL),
(500, 245, 19, NULL, NULL),
(501, 223, 19, NULL, NULL),
(502, 130, 19, NULL, NULL),
(503, 243, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purposes`
--

CREATE TABLE `purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purposes`
--

INSERT INTO `purposes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'INVOICE', '2021-02-05 11:02:10', '2021-02-05 11:02:10'),
(3, 'OFFICE FOOD', '2021-02-05 11:02:22', '2021-02-05 11:02:22'),
(4, 'MOBILE BILL', '2021-02-05 11:02:36', '2021-02-08 16:15:29'),
(6, 'TRANSPORT COST', '2021-02-08 16:16:20', '2021-02-08 16:16:20'),
(7, 'DOMAIN & HOSTING', '2021-02-08 16:16:51', '2021-02-08 16:18:28'),
(8, 'GOOGLE ADS', '2021-02-08 16:17:52', '2021-02-08 16:20:48'),
(9, 'FACEBOOK ADS', '2021-02-08 16:20:57', '2021-02-08 16:20:57'),
(10, 'OFFICE RENT', '2021-02-08 16:22:14', '2021-02-08 16:22:14'),
(11, 'EMPLOYEE SALARY', '2021-02-08 16:23:28', '2021-02-08 16:23:28'),
(12, 'UTILITY BILL (ELEC, NET)', '2021-02-08 16:30:45', '2021-02-08 16:31:20'),
(13, 'OTHERS COSTING', '2021-02-11 08:06:45', '2021-02-11 08:06:45'),
(14, 'EQUIPMENT PURCHASE', '2021-07-17 06:37:18', '2021-07-17 06:37:18'),
(15, 'OUTSOURCING', '2021-07-26 12:29:15', '2021-07-26 12:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_until` date NOT NULL,
  `website_id` bigint(20) UNSIGNED DEFAULT NULL,
  `platform_id` bigint(20) UNSIGNED DEFAULT NULL,
  `design_id` bigint(20) UNSIGNED DEFAULT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hosting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page` int(11) DEFAULT 1,
  `page_price` int(11) DEFAULT 0,
  `additional` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_price` int(11) DEFAULT 0,
  `content_page` int(11) DEFAULT NULL,
  `content_price` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_of_service` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `discount` int(10) UNSIGNED DEFAULT NULL,
  `additional2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional2_price` int(11) DEFAULT 0,
  `additional3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional3_price` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `client_id`, `subject`, `valid_until`, `website_id`, `platform_id`, `design_id`, `domain_id`, `hosting_id`, `page`, `page_price`, `additional`, `additional_price`, `content_page`, `content_price`, `note`, `payment_policy`, `terms_of_service`, `status`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `date`, `discount`, `additional2`, `additional2_price`, `additional3`, `additional3_price`) VALUES
(1, 9, 'this is subject', '2022-08-10', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, '<p>payment policy</p>', '<p>trams of services</p>', 0, 1, '2022-08-01 04:35:17', '2022-08-01 04:35:17', NULL, '2022-08-25', NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_domain`
--

CREATE TABLE `quotation_domain` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_hosting`
--

CREATE TABLE `quotation_hosting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hosting_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_invoices`
--

CREATE TABLE `quotation_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `quantity` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_items`
--

INSERT INTO `quotation_items` (`id`, `quotation_id`, `itemname`, `price`, `discount`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>item one</p>', 1000, 500, 1, '2022-08-01 04:35:17', '2022-08-01 04:35:17'),
(2, 1, '<p>item tow</p>', 3000, 1000, 1, '2022-08-01 04:35:17', '2022-08-01 04:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_packages`
--

CREATE TABLE `quotation_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_service`
--

CREATE TABLE `quotation_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_work`
--

CREATE TABLE `quotation_work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_work`
--

INSERT INTO `quotation_work` (`id`, `work_id`, `quotation_id`, `price`, `quantity`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1000, 0, 0, '2022-07-30 18:22:21', '2022-08-01 04:35:17'),
(2, 1, 557, 1000, 2, 100, '2022-08-01 03:35:11', '2022-08-01 03:35:11'),
(3, 2, 557, 4000, 0, 0, '2022-08-01 03:35:11', '2022-08-01 03:35:11'),
(4, 3, 557, 20000, 0, 1000, '2022-08-01 03:35:11', '2022-08-01 03:35:11'),
(5, 17, 1, 3000, 0, 0, '2022-08-01 04:35:17', '2022-08-01 04:35:17'),
(6, 20, 1, 2000, 0, 0, '2022-08-01 04:35:17', '2022-08-01 04:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39'),
(2, 'Developer', 'web', '2022-08-01 05:54:39', '2022-08-01 05:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` bigint(20) UNSIGNED NOT NULL,
  `purpose_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `pay_amount` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total_pay` int(11) NOT NULL DEFAULT 0,
  `old_total_pay` int(11) NOT NULL DEFAULT 0,
  `total_due` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `log` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `method_id`, `purpose_id`, `user_id`, `client_id`, `invoice_id`, `quotation_id`, `amount`, `pay_amount`, `discount`, `total_pay`, `old_total_pay`, `total_due`, `date`, `log`, `type`, `created_at`, `updated_at`, `note`) VALUES
(23, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-11 03:30:56', '2021-02-11 03:30:56', 'Shadman mobile bill'),
(24, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-12 15:57:19', '2021-02-12 15:57:19', 'CALL CENTER PHONE BILL'),
(26, 3, 1, 1, 2, 11, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'in', '2021-02-13 08:18:51', '2021-02-13 08:18:51', NULL),
(27, 1, 3, 4, NULL, NULL, NULL, 385, NULL, NULL, 0, 0, NULL, '2021-02-01', NULL, 'out', '2021-02-14 22:15:54', '2021-02-14 22:15:54', 'nasta-165,secrute-70,coffee-50,Tea leaf-55,mobile bill(zafar-30,salman-15).'),
(28, 1, 3, 4, NULL, NULL, NULL, 140, NULL, NULL, 0, 0, NULL, '2021-02-02', NULL, 'out', '2021-02-14 22:23:51', '2021-02-14 22:23:51', 'Nasta-60,mobilesirbank-42,mobile bill zafar-50,Ada-30.'),
(29, 1, 3, 4, NULL, NULL, NULL, 250, NULL, NULL, 0, 0, NULL, '2021-02-03', NULL, 'out', '2021-02-14 22:43:35', '2021-02-14 22:43:35', 'sir cash-100,mobile bill(t20-z20),securate-50,nasta-30,cotone bute-30.'),
(30, 1, 3, 4, NULL, NULL, NULL, 205, NULL, NULL, 0, 0, NULL, '2021-02-04', NULL, 'out', '2021-02-14 22:57:23', '2021-02-14 22:57:23', 'mobile-taj-50,mobile zafar-20,mobile-s-20,nasta75,office to gulshan-20,mobile zafar-20'),
(31, 1, 13, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-02-06', NULL, 'out', '2021-02-17 22:38:55', '2021-02-17 22:38:55', 'tiso-15,mobile--(z)40,coffee-2-20,nasta-75.'),
(32, 1, 13, 4, NULL, NULL, NULL, 902, NULL, NULL, 0, 0, NULL, '2021-02-07', NULL, 'out', '2021-02-17 23:07:56', '2021-02-17 23:07:56', 'mobilebill(T50+Z30+I20),Sucice-25,mastori-100,Zl(office to bank)-10,Zafar Back-200,Zl(officeto meeting,nasta-140,Zl(Imtiaj internet)-27,Sakib Rent-100,Nasta-200,mobile bile Bank sir-84,goole Adds Bank-1000'),
(35, 1, 13, 1, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-18 09:44:18', '2021-02-18 09:44:18', 'Tissu Paper Sakib Kinse'),
(36, 1, 3, 1, NULL, NULL, NULL, 2210, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-18 09:46:57', '2021-02-18 09:46:57', 'Sultan Birani, Cocacola, Jali Kabab Abu Zafar Khoroch Korse.'),
(37, 6, 1, 1, 2, 14, NULL, 11000, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'in', '2021-02-18 09:49:05', '2021-02-18 09:49:05', NULL),
(38, 1, 13, 4, NULL, NULL, NULL, 708, NULL, NULL, 0, 0, NULL, '2021-02-08', NULL, 'out', '2021-02-19 22:33:40', '2021-02-19 22:33:40', 'Sakib-Ada,Sakib-sugar,sir,Taj,zafar,Sakib,Zafar,Imtaj,Salman,Sakib-TeaLeaf,Sakib-Food,Hand Sanitizer-sakib,TisoPaper-Sakib.'),
(39, 1, 3, 4, NULL, NULL, NULL, 64, NULL, NULL, 0, 0, NULL, '2021-02-09', NULL, 'out', '2021-02-22 22:41:25', '2021-02-22 22:41:25', 'nasta-sakib,'),
(40, 1, 4, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-02-10', NULL, 'out', '2021-02-22 22:44:58', '2021-02-22 22:44:58', 'mobile bill(z),'),
(41, 1, 12, 4, NULL, NULL, NULL, 600, NULL, NULL, 0, 0, NULL, '2021-02-10', NULL, 'out', '2021-02-22 22:46:19', '2021-02-22 22:46:19', 'zafar'),
(42, 1, 3, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-02-10', NULL, 'out', '2021-02-22 22:47:12', '2021-02-22 22:47:12', 'nasta-sakib'),
(43, 1, 12, 4, NULL, NULL, NULL, 1900, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:49:24', '2021-02-22 22:49:24', 'new line internet-zafar'),
(44, 1, 6, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:50:22', '2021-02-22 22:50:22', 'Hammem Group-Sakib'),
(45, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:51:19', '2021-02-22 22:51:19', 'Foto Copy-Sakib'),
(46, 1, 4, 4, NULL, NULL, NULL, 96, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:52:53', '2021-02-22 22:52:53', 'zafar,taj'),
(47, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:53:53', '2021-02-22 22:53:53', 'mobile glass-sakib'),
(48, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:54:42', '2021-02-22 22:54:42', 'nasta-sakib'),
(49, 1, 13, 4, NULL, NULL, NULL, 17, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:55:23', '2021-02-22 22:55:23', 'Tiso-Sakib'),
(50, 5, 4, 4, NULL, NULL, NULL, 126, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:57:13', '2021-02-22 22:57:13', 'mobile bill-sir'),
(51, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-11', NULL, 'out', '2021-02-22 22:58:05', '2021-02-22 22:58:05', 'sir-nogot'),
(52, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:46:40', '2021-02-23 01:46:40', 'Photo Copy'),
(53, 1, 6, 4, NULL, NULL, NULL, 125, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:47:59', '2021-02-23 01:47:59', 'office to meeting(lunch)'),
(54, 1, 6, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:48:46', '2021-02-23 01:48:46', 'sakib'),
(55, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:49:35', '2021-02-23 01:49:35', 'Sakib-Key'),
(56, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:50:24', '2021-02-23 01:50:24', 'Sakib'),
(57, 1, 13, 4, NULL, NULL, NULL, 65, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:51:29', '2021-02-23 01:51:29', 'Bome coial-Sakib'),
(58, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:53:02', '2021-02-23 01:53:02', 'Photo 8 Pice-80tk-Zafar'),
(59, 1, 13, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-02-13', NULL, 'out', '2021-02-23 01:54:24', '2021-02-23 01:54:24', 'Sir-Zafar'),
(60, 1, 13, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-02-14', NULL, 'out', '2021-02-23 01:58:24', '2021-02-23 01:58:24', 'visiting Card-Zafar'),
(61, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-14', NULL, 'out', '2021-02-23 01:59:41', '2021-02-23 01:59:41', 'z-20,t-30'),
(62, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-14', NULL, 'out', '2021-02-23 02:00:21', '2021-02-23 02:00:21', 'coffee-Sakib'),
(63, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-14', NULL, 'out', '2021-02-23 02:01:44', '2021-02-23 02:01:44', 'Zafar back'),
(64, 1, 3, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-02-15', NULL, 'out', '2021-02-23 02:03:08', '2021-02-23 02:03:08', 'Nasta-Sakib'),
(65, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-15', NULL, 'out', '2021-02-23 02:03:57', '2021-02-23 02:03:57', 'Taj-Sakib'),
(66, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-15', NULL, 'out', '2021-02-23 02:04:45', '2021-02-23 02:04:45', 'Coffee-Sakib'),
(67, 1, 13, 4, NULL, NULL, NULL, 390, NULL, NULL, 0, 0, NULL, '2021-02-15', NULL, 'out', '2021-02-23 02:06:03', '2021-02-23 02:06:03', 'Office Meeting-josime uddine'),
(68, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-02-15', NULL, 'out', '2021-02-23 02:06:54', '2021-02-23 02:06:54', 'zafar-zafar'),
(69, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-02-15', NULL, 'out', '2021-02-23 02:07:45', '2021-02-23 02:07:45', 'Nasta-Sakib'),
(70, 5, 4, 1, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-02-22', NULL, 'out', '2021-02-23 15:10:22', '2021-02-23 15:10:22', 'shadman 01639200002'),
(71, 5, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-02-21', NULL, 'out', '2021-02-23 15:11:03', '2021-02-23 15:11:03', 'domain usd buy'),
(72, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-02-21', NULL, 'out', '2021-02-23 15:11:35', '2021-02-23 15:11:35', 'usd google ads'),
(73, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-02-23', NULL, 'out', '2021-02-23 15:13:09', '2021-02-23 15:13:09', '0163920002'),
(74, 1, 13, 4, NULL, NULL, NULL, 26, NULL, NULL, 0, 0, NULL, '2021-02-08', NULL, 'out', '2021-02-23 22:30:22', '2021-02-23 22:30:22', 'Shakib'),
(75, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:33:23', '2021-02-23 22:33:23', 'Taj-Sakib'),
(76, 1, 4, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:34:04', '2021-02-23 22:34:04', 'Salman-Sakib'),
(77, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:35:03', '2021-02-23 22:35:03', 'Zafar-Sakib'),
(78, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:35:51', '2021-02-23 22:35:51', 'Zafar-Sakib'),
(79, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:37:30', '2021-02-23 22:37:30', 'Zafar -Back'),
(80, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:40:48', '2021-02-23 22:40:48', 'Zafar-Office to Meeting (tea)-Imtiaj'),
(81, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:41:18', '2021-02-23 22:41:18', 'Sakib-Ada'),
(82, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:42:20', '2021-02-23 22:42:20', 'Sakib-vime saban'),
(83, 1, 3, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:42:58', '2021-02-23 22:42:58', 'Sakib-Tea leaf'),
(84, 1, 3, 4, NULL, NULL, NULL, 91, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:43:39', '2021-02-23 22:43:39', 'Sakib-nasta'),
(85, 5, 8, 4, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-02-16', NULL, 'out', '2021-02-23 22:45:27', '2021-02-23 22:45:27', 'Sir-Gool Ads 3'),
(86, 1, 13, 4, NULL, NULL, NULL, 145, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 22:48:00', '2021-02-23 22:48:00', 'Zafar-office to meeting and lunch'),
(87, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 22:50:42', '2021-02-23 22:50:42', 'zafar-Sakib'),
(88, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 22:51:42', '2021-02-23 22:51:42', 'Taj vie-Sakib'),
(89, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 22:53:11', '2021-02-23 22:53:11', 'Taj internet-Sakib'),
(90, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 22:57:03', '2021-02-23 22:57:03', 'Taj-Sir Coffee'),
(91, 1, 4, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 22:57:51', '2021-02-23 22:57:51', 'Imtiaj-Sakib'),
(92, 1, 13, 4, NULL, NULL, NULL, 800, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 23:00:03', '2021-02-23 23:00:03', 'Sakib-Card'),
(93, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'out', '2021-02-23 23:00:58', '2021-02-23 23:00:58', 'Sakib- Nasta'),
(94, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-24 04:58:24', '2021-02-24 04:58:24', '01888001212'),
(95, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-24 04:58:47', '2021-02-24 04:58:47', '1000 taka ads'),
(96, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-25 03:12:28', '2021-02-25 03:12:28', 'usd buy'),
(97, 1, 3, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-27 22:07:53', '2021-02-27 22:07:53', 'sultan-Zafar'),
(98, 1, 3, 4, NULL, NULL, NULL, 110, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-27 22:08:40', '2021-02-27 22:08:40', 'Cock-Zafar'),
(99, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-27 22:09:13', '2021-02-27 22:09:13', 'Sakib-coffee'),
(100, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-27 22:10:11', '2021-02-27 22:10:11', 'Sakib-Tiso'),
(101, 1, 3, 4, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-02-18', NULL, 'out', '2021-02-27 22:11:03', '2021-02-27 22:11:03', 'Zafar-Paid'),
(102, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:12:48', '2021-02-27 22:12:48', 'Zafar'),
(103, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:14:07', '2021-02-27 22:14:07', 'office to meeting-Zafar'),
(104, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:15:12', '2021-02-27 22:15:12', 'taj'),
(105, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:16:17', '2021-02-27 22:16:17', 'Zafar'),
(106, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:21:55', '2021-02-27 22:21:55', 'nasta-Sakib'),
(107, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:23:29', '2021-02-27 22:23:29', 'zafar'),
(108, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:24:39', '2021-02-27 22:24:39', 'Taj'),
(109, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:25:26', '2021-02-27 22:25:26', 'Imtiaj'),
(110, 1, 13, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'out', '2021-02-27 22:28:53', '2021-02-27 22:28:53', 'Zafar Back'),
(111, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-02-22', NULL, 'out', '2021-02-28 22:14:50', '2021-02-28 22:14:50', 'Sakib-Sugar'),
(112, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-02-22', NULL, 'out', '2021-02-28 22:16:24', '2021-02-28 22:16:24', 'Sakib-Picture cliend Sample (2)Pice'),
(113, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-22', NULL, 'out', '2021-02-28 22:17:46', '2021-02-28 22:17:46', 'Sakib-Clind'),
(114, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-22', NULL, 'out', '2021-02-28 22:18:22', '2021-02-28 22:18:22', 'Sakib'),
(115, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-02-22', NULL, 'out', '2021-02-28 22:19:02', '2021-02-28 22:19:02', 'Sakib-Nasta'),
(116, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-23', NULL, 'out', '2021-02-28 22:21:20', '2021-02-28 22:21:20', 'Sakib-Zafar'),
(117, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-23', NULL, 'out', '2021-02-28 22:22:58', '2021-02-28 22:22:58', 'Sakib-Coffee'),
(118, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-23', NULL, 'out', '2021-02-28 22:23:42', '2021-02-28 22:23:42', 'Zafar Back'),
(119, 1, 10, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'out', '2021-02-28 22:25:09', '2021-02-28 22:25:09', 'Zafar-0ffice working and coffee'),
(120, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-23', NULL, 'out', '2021-02-28 22:26:00', '2021-02-28 22:26:00', 'Sakib-Nasta'),
(121, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:28:05', '2021-02-28 22:28:05', 'Sakib- coff ee'),
(122, 1, 12, 4, NULL, NULL, NULL, 610, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:29:17', '2021-02-28 22:29:17', 'Sakib'),
(123, 1, 13, 4, NULL, NULL, NULL, 17, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:29:55', '2021-02-28 22:29:55', 'Sakib-Tiso'),
(124, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:30:33', '2021-02-28 22:30:33', 'Sakib-Saban'),
(125, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:31:35', '2021-02-28 22:31:35', 'Sakib-Hagajul'),
(126, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:32:22', '2021-02-28 22:32:22', 'Sakib-Taj'),
(127, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:33:10', '2021-02-28 22:33:10', 'Sakib-Zafar'),
(128, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:34:25', '2021-02-28 22:34:25', 'Taj-internet bill (meeting)'),
(129, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-02-24', NULL, 'out', '2021-02-28 22:35:30', '2021-02-28 22:35:30', 'Sakib-nasta'),
(130, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:37:49', '2021-02-28 22:37:49', 'Sakib'),
(131, 5, 7, 4, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:38:49', '2021-02-28 22:38:49', 'Sir'),
(132, 5, 8, 4, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:39:28', '2021-02-28 22:39:28', 'Sir'),
(133, 5, 4, 4, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:40:13', '2021-02-28 22:40:13', 'Sir'),
(134, 5, 7, 4, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:41:34', '2021-02-28 22:41:34', 'Sir -Goole Adds'),
(135, 5, 4, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:42:24', '2021-02-28 22:42:24', 'Sir'),
(136, 1, 13, 4, NULL, NULL, NULL, 65, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:43:12', '2021-02-28 22:43:12', 'Sir'),
(137, 1, 13, 4, NULL, NULL, NULL, 35, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:43:56', '2021-02-28 22:43:56', 'sir'),
(138, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-02-28 22:45:06', '2021-02-28 22:45:06', 'Zafar-Back'),
(139, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-02-26', NULL, 'out', '2021-02-28 22:49:39', '2021-02-28 22:49:39', 'Sakib'),
(140, 5, 10, 4, NULL, NULL, NULL, 720, NULL, NULL, 0, 0, NULL, '2021-02-26', NULL, 'out', '2021-02-28 22:50:32', '2021-02-28 22:50:32', 'sir'),
(141, 5, 13, 4, NULL, NULL, NULL, 14000, NULL, NULL, 0, 0, NULL, '2021-02-26', NULL, 'out', '2021-02-28 22:52:02', '2021-02-28 22:52:02', 'Sir-Laptup'),
(142, 1, 13, 4, NULL, NULL, NULL, 470, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:53:22', '2021-02-28 22:53:22', 'Sakib-mastory equpment'),
(143, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:54:22', '2021-02-28 22:54:22', 'Sakib-Scrop'),
(144, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:54:58', '2021-02-28 22:54:58', 'Sakib-Coffee'),
(145, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:55:31', '2021-02-28 22:55:31', 'Sakib'),
(146, 1, 13, 4, NULL, NULL, NULL, 160, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:56:18', '2021-02-28 22:56:18', 'Sir'),
(147, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:57:05', '2021-02-28 22:57:05', 'Sakib-Taj'),
(148, 1, 13, 4, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:57:52', '2021-02-28 22:57:52', 'Zafar-Mastory'),
(149, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:58:34', '2021-02-28 22:58:34', 'Zafar Back'),
(150, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-02-27', NULL, 'out', '2021-02-28 22:59:04', '2021-02-28 22:59:04', 'Sakib'),
(151, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-02-28 23:01:43', '2021-02-28 23:01:43', 'Sakib-taj'),
(152, 1, 13, 4, NULL, NULL, NULL, 38, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-02-28 23:02:19', '2021-02-28 23:02:19', 'Taj'),
(153, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-02-28 23:03:17', '2021-02-28 23:03:17', 'Sakib-Zafar'),
(154, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-02-28 23:05:08', '2021-02-28 23:05:08', 'Sakib'),
(155, 5, 4, 1, NULL, NULL, NULL, 126, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-03-01 09:24:31', '2021-03-01 09:24:31', '01888001212'),
(156, 5, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-03-01 09:27:54', '2021-03-01 09:27:54', 'domain apparel today .bd and rpnbd, skyfashion, rose pestry'),
(157, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'out', '2021-03-01 09:28:23', '2021-03-01 09:28:23', 'usd buy'),
(158, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-01', NULL, 'out', '2021-03-01 22:24:02', '2021-03-01 22:24:02', 'Sakib-Taj'),
(159, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-01', NULL, 'out', '2021-03-01 22:24:40', '2021-03-01 22:24:40', 'Sakib-Zafar'),
(160, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-01', NULL, 'out', '2021-03-01 22:25:27', '2021-03-01 22:25:27', 'Sakib-Imtiaj'),
(161, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-03-01', NULL, 'out', '2021-03-01 22:26:08', '2021-03-01 22:26:08', 'Sakib'),
(162, 1, 13, 4, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, '2021-03-01', NULL, 'out', '2021-03-01 22:26:40', '2021-03-01 22:26:40', 'Sakib'),
(163, 1, 10, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-03-01', NULL, 'out', '2021-03-01 22:27:41', '2021-03-01 22:27:41', 'Sir'),
(164, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 12:44:23', '2021-03-02 12:44:23', 'domain'),
(165, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:05:41', '2021-03-02 22:05:41', 'Zafar And Imtiaj(office meeting)'),
(166, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:08:05', '2021-03-02 22:08:05', 'Sakib'),
(167, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:09:19', '2021-03-02 22:09:19', 'Zafar'),
(168, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:09:43', '2021-03-02 22:09:43', 'Sakib'),
(169, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:10:30', '2021-03-02 22:10:30', 'Sakib-Ada'),
(170, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:11:01', '2021-03-02 22:11:01', 'Sakib-long'),
(171, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'out', '2021-03-02 22:11:55', '2021-03-02 22:11:55', 'Sakib-Tea Leaf'),
(172, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-03', NULL, 'out', '2021-03-04 03:04:25', '2021-03-04 03:04:25', NULL),
(173, 1, 4, 1, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-02-25', NULL, 'out', '2021-03-05 10:33:20', '2021-03-05 10:33:20', '01888001212'),
(174, 6, 1, 4, 16, 19, NULL, 18000, NULL, NULL, 0, 0, NULL, '2021-02-20', NULL, 'in', '2021-03-06 02:11:35', '2021-03-06 02:11:35', NULL),
(175, 6, 1, 4, 16, 19, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-03-02', NULL, 'in', '2021-03-06 02:12:08', '2021-03-06 02:12:08', NULL),
(176, 1, 13, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-03-03', NULL, 'out', '2021-03-07 02:01:54', '2021-03-07 02:01:54', 'Zafar Back'),
(177, 1, 13, 4, NULL, NULL, NULL, 250, NULL, NULL, 0, 0, NULL, '2021-03-03', NULL, 'out', '2021-03-07 02:02:48', '2021-03-07 02:02:48', 'Khata-Sakib'),
(178, 1, 4, 4, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2021-03-03', NULL, 'out', '2021-03-07 02:03:14', '2021-03-07 02:03:14', 'Sir'),
(179, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-03-03', NULL, 'out', '2021-03-07 02:03:48', '2021-03-07 02:03:48', 'Sakib'),
(180, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:06:03', '2021-03-07 02:06:03', 'Sir'),
(181, 1, 6, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:07:11', '2021-03-07 02:07:11', 'Sakib'),
(182, 1, 13, 4, NULL, NULL, NULL, 800, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:08:18', '2021-03-07 02:08:18', 'Sakib'),
(183, 1, 7, 4, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:28:30', '2021-03-07 02:28:30', 'sir'),
(184, 5, 8, 4, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:30:13', '2021-03-07 02:30:13', 'sir'),
(185, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:35:55', '2021-03-07 02:35:55', 'Zafar'),
(186, 1, 13, 4, NULL, NULL, NULL, 570, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:37:44', '2021-03-07 02:37:44', 'office Equpment'),
(187, 1, 13, 4, NULL, NULL, NULL, 265, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:38:31', '2021-03-07 02:38:31', 'Sakib-Mouse'),
(188, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:39:18', '2021-03-07 02:39:18', 'sir'),
(189, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:39:55', '2021-03-07 02:39:55', 'Sakib'),
(190, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:40:55', '2021-03-07 02:40:55', 'Sakib-Taj'),
(191, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:41:47', '2021-03-07 02:41:47', 'Sakib-Zafar'),
(192, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-04', NULL, 'out', '2021-03-07 02:42:11', '2021-03-07 02:42:11', 'Sakib'),
(193, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-06', NULL, 'out', '2021-03-07 02:46:05', '2021-03-07 02:46:05', 'Coffee-sir'),
(194, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-03-06', NULL, 'out', '2021-03-07 02:46:50', '2021-03-07 02:46:50', 'Sakib'),
(195, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-03-07', NULL, 'out', '2021-03-08 22:05:14', '2021-03-08 22:05:14', 'Sakib'),
(196, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-07', NULL, 'out', '2021-03-08 22:05:58', '2021-03-08 22:05:58', 'Sakib-Taj'),
(197, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-07', NULL, 'out', '2021-03-08 22:06:38', '2021-03-08 22:06:38', 'Sakib-zafar'),
(198, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-03-07', NULL, 'out', '2021-03-08 22:08:37', '2021-03-08 22:08:37', 'Laptop-Zafar'),
(199, 1, 13, 4, NULL, NULL, NULL, 700, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:10:51', '2021-03-08 22:10:51', 'Zafar(Keyboard-2)'),
(200, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:11:54', '2021-03-08 22:11:54', 'Zafar-clind Nazmul'),
(201, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:12:40', '2021-03-08 22:12:40', 'Zafar-Tiso'),
(202, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:13:49', '2021-03-08 22:13:49', 'Sakib-Taj'),
(203, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:14:27', '2021-03-08 22:14:27', 'Sakib-Zafar'),
(204, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:15:30', '2021-03-08 22:15:30', 'Sakib-Nasim'),
(205, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:16:35', '2021-03-08 22:16:35', 'Sakib-Zakir'),
(206, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:17:21', '2021-03-08 22:17:21', 'Sakib'),
(207, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-03-08', NULL, 'out', '2021-03-08 22:18:30', '2021-03-08 22:18:30', 'Sakib-Vim Powder'),
(208, 6, 13, 4, NULL, NULL, NULL, 88521, NULL, NULL, 0, 0, NULL, '2021-03-07', NULL, 'out', '2021-03-08 22:24:24', '2021-03-08 22:24:24', 'Sir-Salary'),
(209, 1, 12, 4, NULL, NULL, NULL, 900, NULL, NULL, 0, 0, NULL, '2021-03-09', NULL, 'out', '2021-03-09 22:23:47', '2021-03-09 22:23:47', 'Zafar-net-2'),
(210, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-09', NULL, 'out', '2021-03-09 22:24:37', '2021-03-09 22:24:37', 'Zafar-Taj'),
(211, 1, 12, 4, NULL, NULL, NULL, 600, NULL, NULL, 0, 0, NULL, '2021-03-09', NULL, 'out', '2021-03-09 22:25:47', '2021-03-09 22:25:47', 'Zafar-internet-1'),
(212, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-03-09', NULL, 'out', '2021-03-09 22:26:27', '2021-03-09 22:26:27', 'Sakib'),
(213, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:23:07', '2021-03-10 22:23:07', 'Tea Leaf'),
(214, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:24:10', '2021-03-10 22:24:10', 'Sakib-Sugar'),
(215, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:24:55', '2021-03-10 22:24:55', 'Sakib-Ada'),
(216, 1, 13, 4, NULL, NULL, NULL, 35, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:26:04', '2021-03-10 22:26:04', 'Sakib-Pen(7 Pice)'),
(217, 1, 4, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:26:52', '2021-03-10 22:26:52', 'Sakib-Zafar'),
(218, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:28:07', '2021-03-10 22:28:07', 'Sakib-Salman'),
(219, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-10 22:29:15', '2021-03-10 22:29:15', 'Sakib'),
(220, 1, 6, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-11', NULL, 'out', '2021-03-10 22:37:30', '2021-03-10 22:37:30', 'Sakib-Bank'),
(221, 1, 12, 4, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-03-11', NULL, 'out', '2021-03-10 22:38:22', '2021-03-10 22:38:22', 'Sakib-Zafar'),
(222, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-03-11', NULL, 'out', '2021-03-11 06:45:06', '2021-03-11 06:45:06', 'Sakib'),
(223, 5, 4, 1, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-13 11:59:29', '2021-03-13 11:59:29', '01639200002, 01888001212'),
(224, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-10', NULL, 'out', '2021-03-13 11:59:52', '2021-03-13 11:59:52', NULL),
(225, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-13 23:15:56', '2021-03-13 23:15:56', '2 domain'),
(226, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-13', NULL, 'out', '2021-03-14 00:36:26', '2021-03-14 00:36:26', 'Taj'),
(227, 1, 4, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-03-13', NULL, 'out', '2021-03-14 00:37:41', '2021-03-14 00:37:41', 'Sakib-Zafar'),
(228, 1, 6, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-03-13', NULL, 'out', '2021-03-14 00:39:25', '2021-03-14 00:39:25', 'Zafar-imtiaj(gulshan-2)Meeting'),
(229, 1, 13, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 00:41:18', '2021-03-14 00:41:18', 'Sakib-Adapter'),
(230, 1, 13, 4, NULL, NULL, NULL, 46, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 00:45:13', '2021-03-14 00:45:13', 'Taj-internet'),
(231, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 22:21:57', '2021-03-14 22:21:57', 'Sakib-coffee(2)'),
(232, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 22:23:02', '2021-03-14 22:23:02', 'Sakib'),
(233, 1, 3, 4, NULL, NULL, NULL, 125, NULL, NULL, 0, 0, NULL, '2021-03-15', NULL, 'out', '2021-03-14 22:26:04', '2021-03-14 22:26:04', 'Sakib-chicken'),
(234, 1, 13, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 22:27:06', '2021-03-14 22:27:06', 'Secrute-5'),
(235, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 22:30:43', '2021-03-14 22:30:43', 'Sakib-coffee-3'),
(236, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-14', NULL, 'out', '2021-03-14 22:32:23', '2021-03-14 22:32:23', 'zafar back'),
(237, 1, 10, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-15', NULL, 'out', '2021-03-15 22:22:09', '2021-03-15 22:22:09', 'Zafar'),
(238, 1, 13, 4, NULL, NULL, NULL, 13592, NULL, NULL, 0, 0, NULL, '2021-03-15', NULL, 'out', '2021-03-15 22:23:55', '2021-03-15 22:23:55', 'Tradelisance Inclouding cost'),
(239, 5, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-16 04:34:06', '2021-03-16 04:34:06', '01639200002, 01888001212'),
(240, 3, 1, 1, 8, 25, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'in', '2021-03-16 14:44:51', '2021-03-16 14:44:51', NULL),
(241, 2, 1, 1, 8, 26, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'in', '2021-03-16 14:49:39', '2021-03-16 14:49:39', NULL),
(242, 2, 1, 1, 8, 27, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'in', '2021-03-16 16:01:28', '2021-03-16 16:01:28', NULL),
(247, 1, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-18 07:13:23', '2021-03-18 07:13:23', '01888001212'),
(251, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-21 06:04:27', '2021-03-21 06:04:27', NULL),
(252, 1, 4, 1, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-20', NULL, 'out', '2021-03-21 06:04:58', '2021-03-21 06:04:58', '01888001212'),
(253, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-21 08:19:44', '2021-03-21 08:19:44', NULL),
(254, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-21 09:37:56', '2021-03-21 09:37:56', NULL),
(255, 1, 4, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:20:05', '2021-03-21 22:20:05', 'taj'),
(256, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:20:47', '2021-03-21 22:20:47', 'Sakib-Zafar'),
(257, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:21:31', '2021-03-21 22:21:31', 'Sakib-Imtiaj'),
(258, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:22:20', '2021-03-21 22:22:20', 'Sakib-Jakir'),
(259, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:23:19', '2021-03-21 22:23:19', 'Sakib-Md Nasim'),
(260, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:24:03', '2021-03-21 22:24:03', 'Sakib-Ada'),
(261, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:24:51', '2021-03-21 22:24:51', 'Sakib-coffee'),
(262, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:26:18', '2021-03-21 22:26:18', 'Sakib-Tiso'),
(263, 1, 3, 4, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:26:52', '2021-03-21 22:26:52', 'Sakib'),
(264, 1, 6, 4, NULL, NULL, NULL, 131, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:37:15', '2021-03-21 22:37:15', 'sir'),
(265, 1, 6, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:37:57', '2021-03-21 22:37:57', 'sir'),
(266, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:38:27', '2021-03-21 22:38:27', 'Sakib'),
(267, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-16', NULL, 'out', '2021-03-21 22:39:13', '2021-03-21 22:39:13', 'Zafar back'),
(268, 1, 1, 9, 173, 33, NULL, 11000, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'in', '2021-03-21 23:56:25', '2021-03-21 23:56:25', NULL),
(269, 1, 6, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 01:54:07', '2021-03-22 01:54:07', 'Office work-Zafar'),
(270, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 01:54:45', '2021-03-22 01:54:45', 'Sakib'),
(271, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 01:58:58', '2021-03-22 01:58:58', 'Sakib-Zafar'),
(272, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 01:59:30', '2021-03-22 01:59:30', 'Sakib-Taj'),
(273, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 02:00:17', '2021-03-22 02:00:17', 'Sakib-Suger'),
(274, 1, 3, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 02:00:56', '2021-03-22 02:00:56', 'Sakib-Tea Leaf'),
(275, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 02:01:38', '2021-03-22 02:01:38', 'Sakib-Long'),
(276, 1, 3, 4, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 02:02:27', '2021-03-22 02:02:27', 'Sakib'),
(277, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-03-18', NULL, 'out', '2021-03-22 02:03:42', '2021-03-22 02:03:42', 'Sakib-Hagagiol'),
(278, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-03-20', NULL, 'out', '2021-03-22 02:05:26', '2021-03-22 02:05:26', 'Sakib'),
(279, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-20', NULL, 'out', '2021-03-22 02:06:01', '2021-03-22 02:06:01', 'internet-Taj'),
(280, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:07:21', '2021-03-22 02:07:21', 'Zafar-Hammem group'),
(281, 1, 13, 4, NULL, NULL, NULL, 12, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:08:02', '2021-03-22 02:08:02', 'Zafar-Stamp'),
(282, 1, 13, 4, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:09:07', '2021-03-22 02:09:07', 'fotocopy 2 pice-Sakib'),
(283, 1, 6, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:09:49', '2021-03-22 02:09:49', 'Sakib-Bank'),
(284, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:10:36', '2021-03-22 02:10:36', 'Sakib-Taj'),
(285, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:11:11', '2021-03-22 02:11:11', 'Sakib-Zafar'),
(286, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:11:50', '2021-03-22 02:11:50', 'Sakib-Nasim'),
(287, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:12:33', '2021-03-22 02:12:33', 'Sakib-Jakir'),
(288, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:13:10', '2021-03-22 02:13:10', 'Sakib-shaban'),
(289, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:14:03', '2021-03-22 02:14:03', 'Sakib-Wheal powder'),
(290, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:14:49', '2021-03-22 02:14:49', 'Sakib'),
(291, 1, 13, 4, NULL, NULL, NULL, 220, NULL, NULL, 0, 0, NULL, '2021-03-21', NULL, 'out', '2021-03-22 02:16:19', '2021-03-22 02:16:19', 'Zafar and jakir(office working) nasta'),
(292, 3, 1, 9, 318, 36, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'in', '2021-03-23 00:17:20', '2021-03-23 00:17:20', NULL),
(293, 3, 1, 9, 318, 36, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'in', '2021-03-23 00:17:21', '2021-03-23 00:17:21', NULL),
(294, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-22', NULL, 'out', '2021-03-23 01:49:30', '2021-03-23 01:49:30', 'Zafar-Taj Internet'),
(295, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-03-22', NULL, 'out', '2021-03-23 01:50:19', '2021-03-23 01:50:19', 'Zafar Back'),
(296, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-22', NULL, 'out', '2021-03-23 01:50:59', '2021-03-23 01:50:59', 'Sakib-Jakir'),
(297, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-03-22', NULL, 'out', '2021-03-23 01:51:35', '2021-03-23 01:51:35', 'Sakib'),
(298, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-22', NULL, 'out', '2021-03-23 01:52:19', '2021-03-23 01:52:19', 'Sakib-Ada'),
(299, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-22', NULL, 'out', '2021-03-23 01:53:36', '2021-03-23 01:53:36', 'Sakib-Kaligira'),
(300, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'out', '2021-03-23 01:55:13', '2021-03-23 01:55:13', 'Sakib-Bank'),
(301, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'out', '2021-03-23 01:56:02', '2021-03-23 01:56:02', 'Sakib'),
(302, 3, 1, 9, 318, 35, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'in', '2021-03-23 06:47:23', '2021-03-23 06:47:23', NULL),
(303, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'out', '2021-03-23 08:55:17', '2021-03-23 08:55:17', 'Server 1 Renew'),
(304, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'out', '2021-03-24 22:22:54', '2021-03-24 22:22:54', 'Sakib-Nasim'),
(305, 1, 3, 4, NULL, NULL, NULL, 135, NULL, NULL, 0, 0, NULL, '2021-03-23', NULL, 'out', '2021-03-24 22:24:15', '2021-03-24 22:24:15', 'Sakib'),
(306, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:30:56', '2021-03-24 22:30:56', 'Sakib-Jakir'),
(307, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:31:36', '2021-03-24 22:31:36', 'Sakib-Nasim'),
(308, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:32:15', '2021-03-24 22:32:15', 'Sakib-Taj'),
(309, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:32:55', '2021-03-24 22:32:55', 'Sakib-Imtiaj'),
(310, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:33:38', '2021-03-24 22:33:38', 'Sakib-Zafar'),
(311, 1, 13, 4, NULL, NULL, NULL, 160, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:35:10', '2021-03-24 22:35:10', 'zafar-jakir-nasta'),
(312, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-24', NULL, 'out', '2021-03-24 22:36:08', '2021-03-24 22:36:08', 'Zafar Back'),
(313, 5, 4, 1, NULL, NULL, NULL, 24, NULL, NULL, 0, 0, NULL, '2021-03-25', NULL, 'out', '2021-03-25 07:02:49', '2021-03-25 07:02:49', '01639200002'),
(314, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-03-25', NULL, 'out', '2021-03-26 22:13:38', '2021-03-26 22:13:38', 'Sakib-Tiso'),
(315, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-25', NULL, 'out', '2021-03-26 22:14:27', '2021-03-26 22:14:27', 'Sakib-Taj'),
(316, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-25', NULL, 'out', '2021-03-26 22:15:30', '2021-03-26 22:15:30', 'Sakib-Zafar'),
(317, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-03-25', NULL, 'out', '2021-03-26 22:16:03', '2021-03-26 22:16:03', 'Sakib'),
(318, 1, 13, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-03-25', NULL, 'out', '2021-03-26 22:17:53', '2021-03-26 22:17:53', 'Developer Salman-cliend meeting-nasta'),
(319, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-27', NULL, 'out', '2021-03-27 22:29:55', '2021-03-27 22:29:55', 'Zafar Back'),
(320, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-27', NULL, 'out', '2021-03-27 22:30:22', '2021-03-27 22:30:22', 'Sakib'),
(321, 1, 6, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:08:13', '2021-03-28 22:08:13', 'meeting(Zafar-Nasim)'),
(322, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:08:48', '2021-03-28 22:08:48', 'Sakib-Suger'),
(323, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:10:34', '2021-03-28 22:10:34', 'Sakib-Tea Leaf'),
(324, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:12:02', '2021-03-28 22:12:02', 'Sakib-Coffee-2'),
(325, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:12:31', '2021-03-28 22:12:31', 'Sakib'),
(326, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:13:24', '2021-03-28 22:13:24', 'Sakib-mase and vimsaban'),
(327, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:13:58', '2021-03-28 22:13:58', 'Sakib-Zafar'),
(328, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:14:44', '2021-03-28 22:14:44', 'Sakib-jakir'),
(329, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:15:19', '2021-03-28 22:15:19', 'Sakib-Nasim'),
(330, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:16:07', '2021-03-28 22:16:07', 'Sakib-Taj'),
(331, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:16:41', '2021-03-28 22:16:41', 'Sakib-Ada'),
(332, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-03-28', NULL, 'out', '2021-03-28 22:17:13', '2021-03-28 22:17:13', 'Zafar'),
(333, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-29 08:16:04', '2021-03-29 08:16:04', NULL),
(334, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-29 08:16:21', '2021-03-29 08:16:21', NULL),
(335, 1, 4, 1, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-29 08:17:18', '2021-03-29 08:17:18', '01888001212'),
(336, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-29 08:23:32', '2021-03-29 08:23:32', '01639200002'),
(337, 1, 3, 1, NULL, NULL, NULL, 220, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-29 08:26:37', '2021-03-29 08:26:37', 'Roll for 2 days'),
(338, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-31 00:19:13', '2021-03-31 00:19:13', 'Sakib-Zafar'),
(339, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-31 00:20:23', '2021-03-31 00:20:23', 'Eastern Bank-Zafar'),
(340, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-29', NULL, 'out', '2021-03-31 00:21:27', '2021-03-31 00:21:27', 'Sakib-sir photo 4 pice'),
(341, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:54:41', '2021-04-01 01:54:41', 'Sakib-Taj vie'),
(342, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:55:35', '2021-04-01 01:55:35', 'Zafar-Nasim'),
(343, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:56:15', '2021-04-01 01:56:15', 'sakib'),
(344, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:56:44', '2021-04-01 01:56:44', 'Sakib'),
(345, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:57:42', '2021-04-01 01:57:42', 'Sakib-Zafar'),
(346, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:58:22', '2021-04-01 01:58:22', 'Sakib-Taj'),
(347, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:59:00', '2021-04-01 01:59:00', 'Sakib-Jakir vie'),
(348, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 01:59:50', '2021-04-01 01:59:50', 'Sakib-Imtiaj'),
(349, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-03-31', NULL, 'out', '2021-04-01 02:00:48', '2021-04-01 02:00:48', 'Sakib'),
(350, 1, 12, 4, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-04-01', NULL, 'out', '2021-04-01 05:18:45', '2021-04-01 05:18:45', 'Sakib'),
(351, 1, 6, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-04-01', NULL, 'out', '2021-04-01 05:19:31', '2021-04-01 05:19:31', 'Sakib-Bank'),
(352, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-04-01', NULL, 'out', '2021-04-01 07:11:34', '2021-04-01 07:11:34', 'Sakib'),
(353, 2, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-04-03', NULL, 'out', '2021-04-03 02:16:03', '2021-04-03 02:16:03', NULL),
(354, 5, 1, 5, 446, 41, NULL, 4200, NULL, NULL, 0, 0, NULL, '2021-03-15', NULL, 'in', '2021-04-03 23:17:05', '2021-04-03 23:17:05', NULL),
(355, 1, 3, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-04-03', NULL, 'out', '2021-04-05 21:48:12', '2021-04-05 21:48:12', 'sakib'),
(356, 1, 4, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:49:14', '2021-04-05 21:49:14', 'Sakib-Sir'),
(357, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:49:47', '2021-04-05 21:49:47', 'Sakib-Zafar'),
(358, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:50:37', '2021-04-05 21:50:37', 'Sakib-Taj'),
(359, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:51:28', '2021-04-05 21:51:28', 'Sakib-Nasim'),
(360, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:52:11', '2021-04-05 21:52:11', 'Sakib-Imtiaj'),
(361, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:52:41', '2021-04-05 21:52:41', 'Sakib'),
(362, 1, 13, 4, NULL, NULL, NULL, 290, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:53:54', '2021-04-05 21:53:54', 'Sakib-Mirpur And Nikaton'),
(363, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-04-04', NULL, 'out', '2021-04-05 21:56:24', '2021-04-05 21:56:24', 'Sakib basia gaor gono chaisa');
INSERT INTO `transactions` (`id`, `method_id`, `purpose_id`, `user_id`, `client_id`, `invoice_id`, `quotation_id`, `amount`, `pay_amount`, `discount`, `total_pay`, `old_total_pay`, `total_due`, `date`, `log`, `type`, `created_at`, `updated_at`, `note`) VALUES
(364, 1, 3, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-04-07', NULL, 'out', '2021-04-07 03:32:07', '2021-04-07 03:32:07', 'Taj back'),
(365, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-07', NULL, 'out', '2021-04-07 03:33:26', '2021-04-07 03:33:26', 'Sakib-Zafar'),
(366, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-07', NULL, 'out', '2021-04-07 03:34:03', '2021-04-07 03:34:03', 'Sakib-Taj'),
(367, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-07', NULL, 'out', '2021-04-07 03:34:43', '2021-04-07 03:34:43', 'Sakib-Salman'),
(368, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-04-07', NULL, 'out', '2021-04-07 03:35:17', '2021-04-07 03:35:17', 'Sakib-nikaton'),
(369, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-09 23:57:52', '2021-04-09 23:57:52', 'Sakib-Hagasul'),
(370, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-09 23:59:06', '2021-04-09 23:59:06', 'Sakib-Taj'),
(371, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-10 00:00:16', '2021-04-10 00:00:16', 'Sakib-Zafar'),
(372, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-10 22:03:38', '2021-04-10 22:03:38', 'Sakib(taj vie ar chaque bonany)6800tk city bank chaque'),
(373, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-10 22:04:49', '2021-04-10 22:04:49', 'Sakib-Jakir'),
(374, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-10 22:05:39', '2021-04-10 22:05:39', 'Sakib-Intiaj'),
(375, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-10 22:06:31', '2021-04-10 22:06:31', 'Sakib-Taj'),
(376, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-10', NULL, 'out', '2021-04-10 22:08:18', '2021-04-10 22:08:18', 'Sakib-Zafar'),
(377, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-04-11', NULL, 'out', '2021-04-11 02:22:53', '2021-04-11 02:22:53', 'sakib coffee khore jano taka nica'),
(378, 1, 6, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-04-11', NULL, 'out', '2021-04-11 02:24:52', '2021-04-11 02:24:52', 'Digitack poran clind meeting(Zafar+Nasim) Runing kage'),
(379, 1, 13, 4, NULL, NULL, NULL, 18, NULL, NULL, 0, 0, NULL, '2021-04-12', NULL, 'out', '2021-04-11 23:34:14', '2021-04-11 23:34:14', 'Sakib-Tiso'),
(380, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-12', NULL, 'out', '2021-04-12 02:21:11', '2021-04-12 02:21:11', 'Sakib-Zafar'),
(381, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-04-12', NULL, 'out', '2021-04-12 03:22:21', '2021-04-12 03:22:21', 'Sakib-Sugar'),
(382, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-04-12', NULL, 'out', '2021-04-12 04:46:13', '2021-04-12 04:46:13', 'Sakib-Digitack logo Scane'),
(383, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-13', NULL, 'out', '2021-04-13 04:18:32', '2021-04-13 04:18:32', 'Sakib-Zafar'),
(384, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-04-13', NULL, 'out', '2021-04-13 04:22:32', '2021-04-13 04:22:32', 'Sakib-Taj'),
(385, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-13', NULL, 'out', '2021-04-13 04:23:23', '2021-04-13 04:23:23', 'Sakib-Imtiaj'),
(386, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-04-13', NULL, 'out', '2021-04-13 04:24:30', '2021-04-13 04:24:30', 'Sakib-jakir'),
(387, 1, 4, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-04-13', NULL, 'out', '2021-04-13 04:25:07', '2021-04-13 04:25:07', 'Sakib-Salman'),
(388, 5, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-04-15', NULL, 'out', '2021-04-18 09:43:08', '2021-04-18 09:43:08', NULL),
(389, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-04-18', NULL, 'out', '2021-04-18 09:43:23', '2021-04-18 09:43:23', NULL),
(390, 3, 1, 9, 472, 42, NULL, 11000, NULL, NULL, 0, 0, NULL, '2021-04-20', NULL, 'in', '2021-04-20 08:16:17', '2021-04-20 08:16:17', NULL),
(391, 5, 1, 5, 468, 44, NULL, 12000, NULL, NULL, 0, 0, NULL, '2021-04-21', NULL, 'in', '2021-04-21 07:15:34', '2021-04-21 07:15:34', NULL),
(392, 6, 1, 5, 446, 41, NULL, 6800, NULL, NULL, 0, 0, NULL, '2021-04-08', NULL, 'in', '2021-04-21 07:16:28', '2021-04-21 07:16:28', NULL),
(393, 6, 1, 5, 162, 38, NULL, 34280, NULL, NULL, 0, 0, NULL, '2021-04-21', NULL, 'in', '2021-04-21 07:17:44', '2021-04-21 07:17:44', NULL),
(394, 1, 4, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-04-26', NULL, 'out', '2021-04-26 04:54:35', '2021-04-26 04:54:35', 'bole kora 25 ar pora bola 50 tk desa sakib(jakir)'),
(395, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-26', NULL, 'out', '2021-04-26 04:55:32', '2021-04-26 04:55:32', 'Sakib-Zafar'),
(396, 1, 4, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-04-26', NULL, 'out', '2021-04-26 04:56:17', '2021-04-26 04:56:17', 'Sakib-Taj'),
(397, 1, 4, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-04-26', NULL, 'out', '2021-04-26 04:57:04', '2021-04-26 04:57:04', 'Sakib-Imtiaj'),
(398, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-04-26', NULL, 'out', '2021-04-26 06:58:08', '2021-04-26 06:58:08', 'Sakib-saban'),
(399, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-27', NULL, 'out', '2021-04-27 07:25:08', '2021-04-27 07:25:08', 'Sakib-Imtiaj'),
(400, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-04-28', NULL, 'out', '2021-04-28 03:54:37', '2021-04-28 03:54:37', 'Sakib-Salman'),
(401, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-04-28', NULL, 'out', '2021-04-28 03:55:47', '2021-04-28 03:55:47', 'Sakib-Taj'),
(402, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-04-28', NULL, 'out', '2021-04-28 04:09:05', '2021-04-28 04:09:05', 'Sakib-Zafar'),
(403, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-04-28', NULL, 'out', '2021-04-28 07:48:04', '2021-04-28 07:48:04', 'Sakib-Zafar'),
(404, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-04-28', NULL, 'out', '2021-04-28 07:49:37', '2021-04-28 07:49:37', 'Sakib-Taj'),
(405, 1, 4, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-04-29', NULL, 'out', '2021-04-29 04:34:42', '2021-04-29 04:34:42', 'Sakib-Zafar'),
(406, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-04-29', NULL, 'out', '2021-04-29 04:45:37', '2021-04-29 04:45:37', 'Sakib-Nasim'),
(407, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-02', NULL, 'out', '2021-05-02 04:00:42', '2021-05-02 04:00:42', 'Sakib-Taj'),
(408, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-05-02', NULL, 'out', '2021-05-02 04:01:10', '2021-05-02 04:01:10', 'Sakib-Zafar'),
(409, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-02', NULL, 'out', '2021-05-02 06:10:26', '2021-05-02 06:10:26', 'Sakib'),
(410, 5, 1, 5, 28, 46, NULL, 13000, NULL, NULL, 0, 0, NULL, '2021-05-02', NULL, 'in', '2021-05-02 06:22:42', '2021-05-02 06:22:42', NULL),
(411, 1, 1, 5, 91, 47, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-02-06', NULL, 'in', '2021-05-02 06:37:51', '2021-05-02 06:37:51', NULL),
(412, 5, 1, 5, 499, 48, NULL, 11100, NULL, NULL, 0, 0, NULL, '2021-05-02', NULL, 'in', '2021-05-02 07:02:43', '2021-05-02 07:02:43', NULL),
(413, 3, 1, 5, 54, 49, NULL, 12000, NULL, NULL, 0, 0, NULL, '2021-05-03', NULL, 'in', '2021-05-03 02:42:07', '2021-05-03 02:42:07', NULL),
(414, 3, 1, 5, 54, 49, NULL, 7750, NULL, NULL, 0, 0, NULL, '2021-05-03', NULL, 'in', '2021-05-03 05:48:20', '2021-05-03 05:48:20', NULL),
(415, 1, 1, 5, 282, 50, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-02-28', NULL, 'in', '2021-05-03 07:08:54', '2021-05-03 07:08:54', NULL),
(416, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-05-03', NULL, 'out', '2021-05-03 08:25:44', '2021-05-03 08:25:44', 'Sakib-Bodna'),
(417, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-03', NULL, 'out', '2021-05-03 08:26:17', '2021-05-03 08:26:17', 'Sakib-Taj'),
(418, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-03', NULL, 'out', '2021-05-03 08:26:48', '2021-05-03 08:26:48', 'Sakib-Zafar'),
(419, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-03', NULL, 'out', '2021-05-03 08:29:08', '2021-05-03 08:29:08', 'Sakib-jakir'),
(420, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-05', NULL, 'out', '2021-05-05 03:38:20', '2021-05-05 03:38:20', 'Sakib-Taj'),
(421, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-05', NULL, 'out', '2021-05-05 03:38:53', '2021-05-05 03:38:53', 'Sakib-Imtiaj'),
(422, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-05', NULL, 'out', '2021-05-05 03:39:31', '2021-05-05 03:39:31', 'Sakib-Zafar'),
(423, 6, 1, 5, 124, 51, NULL, 20000, NULL, NULL, 0, 0, NULL, '2021-03-09', NULL, 'in', '2021-05-05 05:26:44', '2021-05-05 05:26:44', NULL),
(424, 1, 4, 4, NULL, NULL, NULL, 35, NULL, NULL, 0, 0, NULL, '2021-05-05', NULL, 'out', '2021-05-05 09:25:49', '2021-05-05 09:25:49', 'Sakib-Nasim'),
(425, 5, 7, 1, NULL, NULL, NULL, 12000, NULL, NULL, 0, 0, NULL, '2021-04-30', NULL, 'out', '2021-05-05 11:18:03', '2021-05-05 11:18:03', 'domain & hosting'),
(426, 5, 4, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-04-29', NULL, 'out', '2021-05-05 11:18:56', '2021-05-05 11:18:56', 'call center number'),
(427, 1, 3, 4, NULL, NULL, NULL, 1100, NULL, NULL, 0, 0, NULL, '2021-05-05', NULL, 'out', '2021-05-05 11:24:07', '2021-05-05 11:24:07', 'Sakib abd jakir- Iftar'),
(428, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-05-05', NULL, 'out', '2021-05-05 11:26:46', '2021-05-05 11:26:46', 'domain'),
(429, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-05-07', NULL, 'out', '2021-05-07 06:41:15', '2021-05-07 06:41:15', 'Zafar'),
(430, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-06', NULL, 'out', '2021-05-08 04:01:09', '2021-05-08 04:01:09', 'Sakib'),
(431, 1, 10, 4, NULL, NULL, NULL, 16000, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 04:02:03', '2021-05-08 04:02:03', 'Zafar'),
(432, 1, 13, 4, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 04:04:57', '2021-05-08 04:04:57', 'internet bill-900  Extra100.Next month 100 kome debo'),
(433, 3, 1, 9, 473, 52, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'in', '2021-05-08 04:14:19', '2021-05-08 04:14:19', NULL),
(434, 1, 13, 4, NULL, NULL, NULL, 400, NULL, NULL, 0, 0, NULL, '2021-05-06', NULL, 'out', '2021-05-08 04:44:18', '2021-05-08 04:44:18', 'Zafar-Sir'),
(435, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 08:36:57', '2021-05-08 08:36:57', 'domain'),
(436, 3, 13, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 09:39:41', '2021-05-08 09:39:41', 'office expense'),
(437, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 13:25:11', '2021-05-08 13:25:11', 'Sakib-hagajole'),
(438, 1, 6, 4, NULL, NULL, NULL, 295, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 13:31:23', '2021-05-08 13:31:23', 'Zafar and Jakir(Elephoneroad sir laptop\r\n\r\n\r\n\r\n\r\nZafar and Jakir(Elephoneroad sir laptop)'),
(439, 1, 13, 4, NULL, NULL, NULL, 275, NULL, NULL, 0, 0, NULL, '2021-05-08', NULL, 'out', '2021-05-08 13:34:09', '2021-05-08 13:34:09', 'Zafar back'),
(440, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-05-09', NULL, 'out', '2021-05-09 07:02:15', '2021-05-09 07:02:15', 'Sakib-Nasim'),
(441, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-09', NULL, 'out', '2021-05-09 07:03:56', '2021-05-09 07:03:56', 'Sakib-Jakir'),
(442, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-09', NULL, 'out', '2021-05-09 07:08:21', '2021-05-09 07:08:21', 'Sakib-zafar'),
(443, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-05-09', NULL, 'out', '2021-05-09 07:10:57', '2021-05-09 07:10:57', 'meeting (taj+Imtiaj)'),
(444, 1, 1, 4, 514, 53, NULL, 11000, NULL, NULL, 0, 0, NULL, '2021-05-10', NULL, 'in', '2021-05-10 03:37:45', '2021-05-10 03:37:45', NULL),
(445, 1, 1, 4, 513, 54, NULL, 13000, NULL, NULL, 0, 0, NULL, '2021-05-10', NULL, 'in', '2021-05-10 03:47:28', '2021-05-10 03:47:28', NULL),
(446, 3, 1, 5, 91, 47, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-05-11', NULL, 'in', '2021-05-11 05:37:50', '2021-05-11 05:37:50', NULL),
(447, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-11', NULL, 'out', '2021-05-11 16:58:32', '2021-05-11 16:58:32', 'Zafar-Taj'),
(448, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-11', NULL, 'out', '2021-05-11 16:59:14', '2021-05-11 16:59:14', 'Zafar'),
(449, 1, 13, 4, NULL, NULL, NULL, 592, NULL, NULL, 0, 0, NULL, '2021-05-11', NULL, 'out', '2021-05-17 03:34:00', '2021-05-17 03:34:00', 'Zafar-Imtiaj salary'),
(450, 1, 13, 4, NULL, NULL, NULL, 8, NULL, NULL, 0, 0, NULL, '2021-05-11', NULL, 'out', '2021-05-17 03:36:16', '2021-05-17 03:36:16', 'Bk-Imtiaj'),
(451, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 03:50:41', '2021-05-17 03:50:41', 'Sakib-Zafar(extra 1tk)'),
(452, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 03:55:58', '2021-05-17 03:55:58', 'Sakib-Taj(Extra-1)'),
(453, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 03:59:30', '2021-05-17 03:59:30', 'Sakib-Nasim'),
(454, 1, 13, 4, NULL, NULL, NULL, 38, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 04:00:21', '2021-05-17 04:00:21', 'Sakib-Sugar'),
(455, 1, 13, 4, NULL, NULL, NULL, 57, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 04:01:27', '2021-05-17 04:01:27', 'Sakib-Tea Leaf'),
(456, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 04:02:02', '2021-05-17 04:02:02', 'Sakib-Ada'),
(457, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 04:03:06', '2021-05-17 04:03:06', 'Sakib-Kalijera'),
(458, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 04:15:56', '2021-05-17 04:15:56', 'Sakib-Jakir'),
(459, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 09:37:12', '2021-05-17 09:37:12', 'Sakib'),
(460, 1, 3, 4, NULL, NULL, NULL, 12, NULL, NULL, 0, 0, NULL, '2021-05-17', NULL, 'out', '2021-05-17 10:04:43', '2021-05-17 10:04:43', 'Sakib extra 12tk'),
(461, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 11:13:55', '2021-05-18 11:13:55', 'Sakib-Sir Coffee'),
(462, 1, 13, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 11:14:52', '2021-05-18 11:14:52', 'Sakib-Batery'),
(463, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 11:15:57', '2021-05-18 11:15:57', 'Sakib-Sunlight Batery'),
(464, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 11:16:34', '2021-05-18 11:16:34', 'Sakib'),
(465, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 11:17:36', '2021-05-18 11:17:36', 'Zafar-sir'),
(466, 5, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 12:40:55', '2021-05-18 12:40:55', 'domain buy and renew'),
(467, 3, 13, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-18 12:41:23', '2021-05-18 12:41:23', 'office expense'),
(468, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-05-16', NULL, 'out', '2021-05-18 12:41:43', '2021-05-18 12:41:43', NULL),
(469, 1, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-05-15', NULL, 'out', '2021-05-18 12:42:02', '2021-05-18 12:42:02', NULL),
(470, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-05-19', NULL, 'out', '2021-05-19 05:27:28', '2021-05-19 05:27:28', 'Sakib-Coffee'),
(471, 1, 13, 4, NULL, NULL, NULL, 6, NULL, NULL, 0, 0, NULL, '2021-05-19', NULL, 'out', '2021-05-19 05:29:07', '2021-05-19 05:29:07', 'Sakib-Paste'),
(472, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-19', NULL, 'out', '2021-05-19 11:11:19', '2021-05-19 11:11:19', 'Sakib-Zafar'),
(473, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-05-19', NULL, 'out', '2021-05-19 11:12:05', '2021-05-19 11:12:05', 'Sakib-Jakir'),
(474, 1, 4, 4, NULL, NULL, NULL, 1, NULL, NULL, 0, 0, NULL, '2021-05-19', NULL, 'out', '2021-05-19 11:13:15', '2021-05-19 11:13:15', 'extra taka charge'),
(475, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-19', NULL, 'out', '2021-05-19 11:14:02', '2021-05-19 11:14:02', 'Sakib-Imtiaj'),
(476, 5, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-19 19:02:39', '2021-05-19 19:02:39', NULL),
(477, 5, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-05-18', NULL, 'out', '2021-05-19 19:04:07', '2021-05-19 19:04:07', 'sky hosting'),
(478, 1, 3, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-05-20', NULL, 'out', '2021-05-21 01:40:35', '2021-05-21 01:40:35', 'Sakib'),
(479, 1, 12, 4, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 02:28:13', '2021-05-22 02:28:13', 'Sakib'),
(480, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:10:39', '2021-05-22 07:10:39', 'Sakib-Taje'),
(481, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:11:26', '2021-05-22 07:11:26', 'Sakib-Zafar'),
(482, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:12:07', '2021-05-22 07:12:07', 'Sakib-Imtiaj'),
(483, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:13:06', '2021-05-22 07:13:06', 'Sakib-Salman'),
(484, 1, 13, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:32:19', '2021-05-22 07:32:19', 'Sakib-Sugar'),
(485, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:32:52', '2021-05-22 07:32:52', 'Sakib-Long'),
(486, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:34:00', '2021-05-22 07:34:00', 'Sakib-Ada'),
(487, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 07:34:49', '2021-05-22 07:34:49', 'Sakib-Tea Leaf'),
(488, 5, 12, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 12:44:47', '2021-05-22 12:44:47', 'electric bill'),
(489, 3, 13, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-22 12:45:07', '2021-05-22 12:45:07', NULL),
(490, 1, 13, 4, NULL, NULL, NULL, 340, NULL, NULL, 0, 0, NULL, '2021-05-22', NULL, 'out', '2021-05-23 02:50:37', '2021-05-23 02:50:37', 'Zafar-Jakir(340tk)Elephonroad prienter problem and 40 food'),
(491, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-05-23', NULL, 'out', '2021-05-23 03:00:16', '2021-05-23 03:00:16', 'sakib ucb Bank'),
(492, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-05-23', NULL, 'out', '2021-05-24 02:11:15', '2021-05-24 02:11:15', 'Sakib-ucb Bank'),
(493, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-23', NULL, 'out', '2021-05-24 02:14:00', '2021-05-24 02:14:00', 'Sakib-ucb Bank'),
(494, 1, 13, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-05-23', NULL, 'out', '2021-05-24 02:15:25', '2021-05-24 02:15:25', 'Sakib-nikaton'),
(495, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-23', NULL, 'out', '2021-05-24 02:18:36', '2021-05-24 02:18:36', 'Sakib-Mobile Bill(Zafar)'),
(496, 1, 13, 4, NULL, NULL, NULL, 170, NULL, NULL, 0, 0, NULL, '2021-05-23', NULL, 'out', '2021-05-24 02:19:52', '2021-05-24 02:19:52', 'Zafar and Jakir(Meeting)'),
(497, 1, 6, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-24', NULL, 'out', '2021-05-24 02:44:10', '2021-05-24 02:44:10', 'Taj internet(meeting)'),
(498, 1, 3, 4, NULL, NULL, NULL, 135, NULL, NULL, 0, 0, NULL, '2021-05-24', NULL, 'out', '2021-05-24 12:22:13', '2021-05-24 12:22:13', 'Sakib'),
(499, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-25', NULL, 'out', '2021-05-25 10:33:09', '2021-05-25 10:33:09', 'Sakib-Zafar'),
(500, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-25', NULL, 'out', '2021-05-25 10:34:03', '2021-05-25 10:34:03', 'Sakib-Jakir'),
(501, 1, 13, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-05-25', NULL, 'out', '2021-05-25 10:35:52', '2021-05-25 10:35:52', 'Zafar -Multi-Plack'),
(502, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-05-25', NULL, 'out', '2021-05-25 10:36:37', '2021-05-25 10:36:37', 'Sakib'),
(503, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-25', NULL, 'out', '2021-05-25 10:37:32', '2021-05-25 10:37:32', 'Sakib-Bank'),
(504, 3, 13, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-05-24', NULL, 'out', '2021-05-25 21:02:29', '2021-05-25 21:02:29', NULL),
(505, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-26', NULL, 'out', '2021-05-26 09:05:10', '2021-05-26 09:05:10', 'Sakib-Zafar'),
(506, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-27', NULL, 'out', '2021-05-27 02:58:41', '2021-05-27 02:58:41', 'Sakib-Taj'),
(507, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-27', NULL, 'out', '2021-05-27 02:59:23', '2021-05-27 02:59:23', 'Sakib-Zafar'),
(508, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-05-27', NULL, 'out', '2021-05-27 10:23:27', '2021-05-27 10:23:27', 'Sakib'),
(509, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-27', NULL, 'out', '2021-05-27 10:24:28', '2021-05-27 10:24:28', 'Sakib Ifter(Roja)'),
(510, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 03:46:22', '2021-05-29 03:46:22', 'Sakib-Zafar'),
(511, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 03:47:12', '2021-05-29 03:47:12', 'Sakib-Nasim'),
(512, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 03:47:58', '2021-05-29 03:47:58', 'Sakib-Jakir'),
(513, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 03:48:47', '2021-05-29 03:48:47', 'Sakib-Taj'),
(514, 1, 13, 4, NULL, NULL, NULL, 12, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 03:49:58', '2021-05-29 03:49:58', 'Sakib-While Saban'),
(515, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 03:50:46', '2021-05-29 03:50:46', 'Sakib-Tiso'),
(516, 3, 13, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 10:05:21', '2021-05-29 10:05:21', 'sakib bkash'),
(517, 3, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 10:05:46', '2021-05-29 10:05:46', 'call center no'),
(518, 3, 12, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 10:49:06', '2021-05-29 10:49:06', 'Multiplug and others..'),
(519, 5, 7, 1, NULL, NULL, NULL, 450, NULL, NULL, 0, 0, NULL, '2021-05-29', NULL, 'out', '2021-05-29 10:51:11', '2021-05-29 10:51:11', 'Vps hosting  for xoombazar'),
(520, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:03:19', '2021-05-31 02:03:19', 'Sakib-Sir-Coffee'),
(521, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:04:26', '2021-05-31 02:04:26', 'Sakib-prient out'),
(522, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:05:00', '2021-05-31 02:05:00', 'Sakib'),
(523, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:06:30', '2021-05-31 02:06:30', 'Sair-Coffee'),
(524, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:07:08', '2021-05-31 02:07:08', 'Sakib'),
(525, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:12:42', '2021-05-31 02:12:42', 'Sakib-premier Bank'),
(526, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:15:10', '2021-05-31 02:15:10', 'Sakib-City Bank'),
(527, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:16:34', '2021-05-31 02:16:34', 'Sakib-Internet Taj'),
(528, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:22:58', '2021-05-31 02:22:58', 'Sakib-Zafar'),
(529, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:34:43', '2021-05-31 02:34:43', 'Sakib'),
(530, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-30', NULL, 'out', '2021-05-31 02:36:07', '2021-05-31 02:36:07', 'Sakib-Coffee 2'),
(531, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-31', NULL, 'out', '2021-06-01 02:12:27', '2021-06-01 02:12:27', 'Sakib-Ebl'),
(532, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-05-31', NULL, 'out', '2021-06-01 02:13:07', '2021-06-01 02:13:07', 'Sakib'),
(533, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-05-31', NULL, 'out', '2021-06-01 02:14:37', '2021-06-01 02:14:37', 'Zafar-Jakir(meeting udc)'),
(534, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-05-31', NULL, 'out', '2021-06-01 02:15:16', '2021-06-01 02:15:16', 'Zafar-Bag'),
(535, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 01:55:08', '2021-06-02 01:55:08', 'Sakib-Zafar'),
(536, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 01:55:55', '2021-06-02 01:55:55', 'Sakib-Taj'),
(537, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 01:56:46', '2021-06-02 01:56:46', 'Sakib-Jakir'),
(538, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 02:08:20', '2021-06-02 02:08:20', 'Sakib-Nasim'),
(539, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 02:10:48', '2021-06-02 02:10:48', 'Sakib-Imtiaj'),
(540, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 02:12:00', '2021-06-02 02:12:00', 'Sakib-Ada'),
(541, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 02:12:46', '2021-06-02 02:12:46', 'Sakib-Mas'),
(542, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 02:14:31', '2021-06-02 02:14:31', 'Sakib-Coffee'),
(543, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-01', NULL, 'out', '2021-06-02 02:15:42', '2021-06-02 02:15:42', 'Sakib-Shaban'),
(544, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:14:49', '2021-06-02 10:14:49', 'Sakib-Zafar'),
(545, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:15:49', '2021-06-02 10:15:49', 'Sakib-Taj'),
(546, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:16:25', '2021-06-02 10:16:25', 'Sakib-Jakir'),
(547, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:17:36', '2021-06-02 10:17:36', 'internet Taj vie'),
(548, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:18:28', '2021-06-02 10:18:28', 'Sakib-Hexisol'),
(549, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:19:16', '2021-06-02 10:19:16', 'Sakib-Hand tiso'),
(550, 1, 13, 4, NULL, NULL, NULL, 72, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:20:01', '2021-06-02 10:20:01', 'Sakib-Suger'),
(551, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:20:49', '2021-06-02 10:20:49', 'Sakib-Kaligera'),
(552, 1, 13, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-02 10:21:32', '2021-06-02 10:21:32', 'Sakib-ordiner'),
(553, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-03 02:07:31', '2021-06-03 02:07:31', 'Sakib'),
(554, 1, 1, 5, 537, 59, NULL, 26550, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'in', '2021-06-03 02:51:00', '2021-06-03 02:51:00', NULL),
(556, 3, 12, 1, NULL, NULL, NULL, 1499, NULL, NULL, 0, 0, NULL, '2021-06-03', NULL, 'out', '2021-06-03 09:47:47', '2021-06-03 09:47:47', 'Internet bill'),
(557, 3, 13, 1, NULL, NULL, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-06-03', NULL, 'out', '2021-06-03 09:48:27', '2021-06-03 09:48:27', 'Hp Printer buy'),
(558, 3, 4, 1, NULL, NULL, NULL, 89, NULL, NULL, 0, 0, NULL, '2021-06-03', NULL, 'out', '2021-06-03 09:48:57', '2021-06-03 09:48:57', 'call center number'),
(559, 1, 13, 1, NULL, NULL, NULL, 1050, NULL, NULL, 0, 0, NULL, '2021-06-02', NULL, 'out', '2021-06-03 09:49:34', '2021-06-03 09:49:34', 'Office expense'),
(560, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-03', NULL, 'out', '2021-06-05 04:10:31', '2021-06-05 04:10:31', 'Sakib-Premier Bank'),
(561, 1, 13, 4, NULL, NULL, NULL, 525, NULL, NULL, 0, 0, NULL, '2021-06-03', NULL, 'out', '2021-06-05 04:15:19', '2021-06-05 04:15:19', 'Zafar-Jakir(nasta)'),
(562, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-05', NULL, 'out', '2021-06-05 04:19:25', '2021-06-05 04:19:25', 'Sakib-Taj'),
(563, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-05', NULL, 'out', '2021-06-05 04:20:34', '2021-06-05 04:20:34', 'Sakib-Zafar'),
(564, 1, 4, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-05', NULL, 'out', '2021-06-05 04:22:27', '2021-06-05 04:22:27', 'Sakib-Imtiaj'),
(565, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-05', NULL, 'out', '2021-06-05 04:23:18', '2021-06-05 04:23:18', 'Sakib-Nasim'),
(566, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-05', NULL, 'out', '2021-06-05 08:28:31', '2021-06-05 08:28:31', NULL),
(567, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-06-05', NULL, 'out', '2021-06-05 08:28:52', '2021-06-05 08:29:12', NULL),
(568, 1, 13, 4, NULL, NULL, NULL, 110, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:06:21', '2021-06-07 02:06:21', 'Sakib-Taj clind Training internet'),
(569, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:07:16', '2021-06-07 02:07:16', 'Sakib-Taj clind coffee'),
(570, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:08:02', '2021-06-07 02:08:02', 'Sakib'),
(571, 1, 3, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:09:13', '2021-06-07 02:09:13', 'Sakib-Sir clind zoom Bazaar'),
(572, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:09:49', '2021-06-07 02:09:49', 'Sakib-Sir Clind'),
(573, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:10:31', '2021-06-07 02:10:31', 'Sakib-sir clind coffee'),
(574, 1, 6, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-06-06', NULL, 'out', '2021-06-07 02:11:10', '2021-06-07 02:11:10', 'Sakib-sir'),
(575, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 02:12:09', '2021-06-07 02:12:09', 'Zafar-sir'),
(576, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 04:18:39', '2021-06-07 04:18:39', 'Sakib-Zafar'),
(577, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 04:19:17', '2021-06-07 04:19:17', 'Sakib-Taj'),
(578, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 04:19:50', '2021-06-07 04:19:50', 'Sakib-Nasim'),
(579, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 04:20:41', '2021-06-07 04:20:41', 'Sakib-Imtiaj'),
(580, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 04:21:21', '2021-06-07 04:21:21', 'Sakib-Coffee'),
(581, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 04:21:43', '2021-06-07 04:21:43', 'Sakib'),
(582, 5, 4, 1, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-07 06:19:24', '2021-06-07 06:21:29', 'Call center'),
(583, 5, 8, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-05-20', NULL, 'out', '2021-06-07 13:40:26', '2021-06-07 13:40:26', NULL),
(584, 1, 6, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-08 02:10:23', '2021-06-08 02:10:23', 'meeting two-person(z+n)'),
(585, 1, 3, 4, NULL, NULL, NULL, 57, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-08 02:11:02', '2021-06-08 02:11:02', 'Sakib-Tea Leaf'),
(586, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-08 02:11:52', '2021-06-08 02:11:52', 'Sakib-sir(light)'),
(587, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-07', NULL, 'out', '2021-06-08 02:12:52', '2021-06-08 02:12:52', 'Sakib-Sir(Hanger)'),
(588, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 02:13:25', '2021-06-08 02:13:25', 'Sakib-Nasta'),
(589, 1, 13, 4, NULL, NULL, NULL, 230, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 02:20:51', '2021-06-08 02:20:51', 'Sakib-sir'),
(590, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:43:14', '2021-06-08 08:43:14', 'Sakib-Zafar'),
(591, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:44:03', '2021-06-08 08:44:03', 'Sakib-Taj'),
(592, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:44:50', '2021-06-08 08:44:50', 'Sakib-Jakir'),
(593, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:45:36', '2021-06-08 08:45:36', 'Sakib-Nasim'),
(594, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:46:20', '2021-06-08 08:46:20', 'Sakib-Imtiaj'),
(595, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:47:14', '2021-06-08 08:47:14', 'Sakib-Ada'),
(596, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 08:49:28', '2021-06-08 08:49:28', 'Sakib-Long'),
(598, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 10:50:36', '2021-06-08 10:50:36', 'Sakib'),
(599, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 17:53:12', '2021-06-08 17:53:12', '2 domain buy'),
(600, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-08', NULL, 'out', '2021-06-08 17:53:41', '2021-06-08 17:53:41', NULL),
(601, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-06-09', NULL, 'out', '2021-06-10 02:13:35', '2021-06-10 02:13:35', 'Sakib-News Paper'),
(602, 1, 6, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-06-09', NULL, 'out', '2021-06-10 02:16:13', '2021-06-10 02:16:13', 'Zafar And Jakir(idb bobone)nasta printer'),
(603, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-09', NULL, 'out', '2021-06-10 02:17:04', '2021-06-10 02:17:04', 'Sakib'),
(604, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-06-09', NULL, 'out', '2021-06-10 02:18:01', '2021-06-10 02:18:01', 'Sakib-Haxijole'),
(605, 1, 13, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-06-09', NULL, 'out', '2021-06-10 02:19:53', '2021-06-10 02:19:53', 'Sakib-printer Advance'),
(606, 1, 6, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-10 02:20:44', '2021-06-10 02:20:44', 'Sakib city bank'),
(607, 1, 13, 4, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-10 02:21:17', '2021-06-10 02:21:17', 'Sakib Maks'),
(608, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-10 10:15:21', '2021-06-10 10:15:21', 'domain'),
(609, 5, 4, 1, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-10 10:15:38', '2021-06-10 10:15:38', NULL),
(610, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-12 02:08:27', '2021-06-12 02:08:27', 'Sir-Coffee'),
(611, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-12 02:09:11', '2021-06-12 02:09:11', 'Sakib'),
(612, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-12 02:09:54', '2021-06-12 02:09:54', 'Sakib-Pin'),
(613, 1, 13, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-12 02:10:39', '2021-06-12 02:10:39', 'Sakib-Zafar'),
(614, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-06-10', NULL, 'out', '2021-06-12 02:12:00', '2021-06-12 02:12:00', 'Sakib-Taj'),
(615, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-12', NULL, 'out', '2021-06-12 02:12:32', '2021-06-12 02:12:32', 'Sakib-Salman'),
(617, 5, 4, 1, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-06-12', NULL, 'out', '2021-06-12 10:17:24', '2021-06-12 10:17:24', 'call center'),
(618, 6, 1, 5, 162, 38, NULL, 34280, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'in', '2021-06-13 07:15:14', '2021-06-13 07:15:14', NULL),
(619, 6, 1, 5, 446, 39, NULL, 11000, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'in', '2021-06-13 07:15:37', '2021-06-13 07:15:37', NULL),
(620, 3, 1, 5, 499, 48, NULL, 5400, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'in', '2021-06-13 07:16:15', '2021-06-13 07:16:15', NULL),
(621, 1, 1, 5, 282, 50, NULL, 8000, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'in', '2021-06-13 07:16:37', '2021-06-13 07:16:37', NULL),
(622, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-12', NULL, 'out', '2021-06-13 11:40:25', '2021-06-13 11:40:25', 'Sakib-Ica'),
(623, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-12', NULL, 'out', '2021-06-13 11:42:34', '2021-06-13 11:42:34', 'Sakib-Internet pot 4 pice'),
(624, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-06-12', NULL, 'out', '2021-06-13 11:43:51', '2021-06-13 11:43:51', 'Sakib'),
(625, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-06-12', NULL, 'out', '2021-06-13 11:44:29', '2021-06-13 11:44:29', 'Zafar-Sir'),
(626, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:03:23', '2021-06-14 02:03:23', 'Sakib-Bank'),
(627, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:04:45', '2021-06-14 02:04:45', 'Zafar meeting  lunch'),
(628, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:05:51', '2021-06-14 02:05:51', 'Internet jakir vie meeting'),
(629, 1, 3, 4, NULL, NULL, NULL, 72, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:06:39', '2021-06-14 02:06:39', 'Sakib-Suger'),
(630, 1, 3, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:08:15', '2021-06-14 02:08:15', 'Tea leaf'),
(631, 1, 3, 4, NULL, NULL, NULL, 73, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:09:02', '2021-06-14 02:09:02', 'Sakib'),
(632, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:11:02', '2021-06-14 02:11:02', 'Sir-coffee'),
(633, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-06-13', NULL, 'out', '2021-06-14 02:15:08', '2021-06-14 02:15:08', 'sir'),
(634, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-14', NULL, 'out', '2021-06-14 08:33:38', '2021-06-14 08:33:38', 'Sakib-Zafar'),
(635, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-14', NULL, 'out', '2021-06-14 08:38:20', '2021-06-14 08:38:20', 'Sakib-Taj vie'),
(636, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-06-14', NULL, 'out', '2021-06-14 08:39:12', '2021-06-14 08:39:12', 'Sakib-Jakir vie'),
(637, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-14', NULL, 'out', '2021-06-14 08:40:01', '2021-06-14 08:40:01', 'Sakib-Nasim'),
(638, 1, 13, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-06-15', NULL, 'out', '2021-06-16 03:26:41', '2021-06-16 03:26:41', 'Zafar-Meeting Nasta( Uttara)'),
(639, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 03:57:25', '2021-06-16 03:57:25', 'Sakib-Hexisol'),
(640, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 03:58:10', '2021-06-16 03:58:10', 'Sakib-Zafar'),
(641, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 03:58:41', '2021-06-16 03:58:41', 'Sakib-Taj vie'),
(642, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 03:59:26', '2021-06-16 03:59:26', 'Sakib-Nasim vie'),
(643, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 04:00:10', '2021-06-16 04:00:10', 'Sakib-Kaligera'),
(644, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 04:00:45', '2021-06-16 04:00:45', 'Sakib-Ada'),
(645, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-16 04:01:25', '2021-06-16 04:01:25', 'Sakib-COffee'),
(646, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-06-16', NULL, 'out', '2021-06-17 02:03:03', '2021-06-17 02:03:03', 'Sakib'),
(647, 1, 13, 4, NULL, NULL, NULL, 17, NULL, NULL, 0, 0, NULL, '2021-06-17', NULL, 'out', '2021-06-19 06:54:28', '2021-06-19 06:54:28', 'Sakib-Tiso'),
(648, 1, 13, 4, NULL, NULL, NULL, 12, NULL, NULL, 0, 0, NULL, '2021-06-17', NULL, 'out', '2021-06-19 06:55:44', '2021-06-19 06:55:44', 'Sakib-Bimsaban'),
(649, 1, 13, 4, NULL, NULL, NULL, 1, NULL, NULL, 0, 0, NULL, '2021-06-17', NULL, 'out', '2021-06-19 06:57:47', '2021-06-19 06:57:47', 'Sakib'),
(650, 1, 13, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-06-17', NULL, 'out', '2021-06-19 07:01:47', '2021-06-19 07:01:47', 'zafar and nasim aup traning'),
(651, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-06-17', NULL, 'out', '2021-06-19 07:02:46', '2021-06-19 07:02:46', 'Sakib'),
(652, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-06-19', NULL, 'out', '2021-06-19 07:03:46', '2021-06-19 07:03:46', 'Zafar'),
(653, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-19', NULL, 'out', '2021-06-19 12:20:54', '2021-06-19 12:20:54', 'domain'),
(654, 3, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-06-19', NULL, 'out', '2021-06-19 12:47:28', '2021-06-19 12:47:28', 'call center'),
(655, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-20', NULL, 'out', '2021-06-20 17:43:28', '2021-06-20 17:43:28', NULL),
(656, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-06-20', NULL, 'out', '2021-06-20 17:43:57', '2021-06-20 17:43:57', 'hosting sky'),
(657, 5, 1, 5, 567, 63, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-06-21', NULL, 'in', '2021-06-21 08:27:36', '2021-06-21 08:27:36', NULL),
(658, 5, 4, 1, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-06-21', NULL, 'out', '2021-06-21 09:20:05', '2021-06-21 09:20:05', 'zafar'),
(659, 5, 4, 1, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-21', NULL, 'out', '2021-06-21 09:20:26', '2021-06-21 09:20:26', 'call center'),
(660, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-23 10:53:00', '2021-06-23 10:53:00', 'domain'),
(661, 5, 15, 1, NULL, NULL, NULL, 84000, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-23 11:56:34', '2021-09-06 08:27:55', 'Niman Bill for Xoombazar'),
(662, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-23 16:55:26', '2021-06-23 16:55:26', NULL),
(663, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-23 16:55:50', '2021-06-23 16:55:50', 'hosting name'),
(664, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-20', NULL, 'out', '2021-06-24 02:16:29', '2021-06-24 02:16:29', 'Sakib-Zafar'),
(665, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-20', NULL, 'out', '2021-06-24 02:23:53', '2021-06-24 02:23:53', 'udc(meeting)zafar clind claque'),
(666, 1, 4, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-06-20', NULL, 'out', '2021-06-24 02:24:57', '2021-06-24 02:24:57', 'Sakib-Taj vie'),
(667, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-20', NULL, 'out', '2021-06-24 02:26:01', '2021-06-24 02:26:01', 'Sakib'),
(668, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-22', NULL, 'out', '2021-06-24 02:37:05', '2021-06-24 02:37:05', 'taj vie-internet'),
(669, 1, 3, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-06-22', NULL, 'out', '2021-06-24 02:37:44', '2021-06-24 02:37:44', 'Sakib'),
(670, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:38:30', '2021-06-24 02:38:30', 'Sakib'),
(671, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:44:56', '2021-06-24 02:44:56', 'Sakib-zafar'),
(672, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:46:16', '2021-06-24 02:46:16', 'Sakib-Imtiaj'),
(673, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:47:08', '2021-06-24 02:47:08', 'Sakib-jakir'),
(674, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:47:57', '2021-06-24 02:47:57', 'Sakib-Tajvie'),
(675, 1, 6, 4, NULL, NULL, NULL, 190, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:50:24', '2021-06-24 02:50:24', 'samsul huda meeting two person and nasta'),
(676, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:50:59', '2021-06-24 02:50:59', 'Sakib'),
(677, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-06-23', NULL, 'out', '2021-06-24 02:55:55', '2021-06-24 02:55:55', 'Sir'),
(678, 1, 1, 9, 454, 64, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-24', NULL, 'in', '2021-06-24 09:49:50', '2021-06-24 09:49:50', NULL),
(679, 3, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-26 10:14:52', '2021-06-26 10:14:52', 'call center'),
(680, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-24', NULL, 'out', '2021-06-26 10:17:08', '2021-06-26 10:17:08', 'domain'),
(681, 1, 13, 4, NULL, NULL, NULL, 72, NULL, NULL, 0, 0, NULL, '2021-06-24', NULL, 'out', '2021-06-27 02:27:02', '2021-06-27 02:27:02', 'sugar'),
(682, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-06-24', NULL, 'out', '2021-06-27 02:29:00', '2021-06-27 02:29:00', 'TeaLeaf'),
(683, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-06-24', NULL, 'out', '2021-06-27 02:30:28', '2021-06-27 02:30:28', 'Ada'),
(684, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:32:02', '2021-06-27 02:32:02', 'zafar'),
(685, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:32:48', '2021-06-27 02:32:48', 'sakib-Taj'),
(686, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:33:22', '2021-06-27 02:33:22', 'Sakib-jakir'),
(687, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:34:10', '2021-06-27 02:34:10', 'Sakib-Nasim'),
(688, 1, 3, 4, NULL, NULL, NULL, 110, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:34:48', '2021-06-27 02:34:48', 'Sakib'),
(689, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:37:05', '2021-06-27 02:37:05', 'meeting zafar person 2 nasta'),
(690, 1, 3, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:37:38', '2021-06-27 02:37:38', 'Sir'),
(691, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-26', NULL, 'out', '2021-06-27 02:51:59', '2021-06-27 02:51:59', 'nasime internet'),
(692, 5, 4, 1, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-27', NULL, 'out', '2021-06-27 13:48:41', '2021-06-27 13:48:41', 'call center number'),
(693, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-28', NULL, 'out', '2021-06-28 16:54:32', '2021-06-28 16:54:32', 'ahossain domain'),
(694, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-27', NULL, 'out', '2021-06-29 03:31:40', '2021-06-29 03:31:40', 'Sakib'),
(695, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-27', NULL, 'out', '2021-06-29 03:32:13', '2021-06-29 03:32:13', 'zafar'),
(696, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-06-27', NULL, 'out', '2021-06-29 03:33:43', '2021-06-29 03:33:43', 'Polton Meeting person two nasta ----------- Zafar'),
(697, 5, 4, 1, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-06-29 18:11:06', '2021-06-29 18:11:06', 'call center'),
(698, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-06-29 18:11:31', '2021-06-29 18:11:31', 'domain coronagroup');
INSERT INTO `transactions` (`id`, `method_id`, `purpose_id`, `user_id`, `client_id`, `invoice_id`, `quotation_id`, `amount`, `pay_amount`, `discount`, `total_pay`, `old_total_pay`, `total_due`, `date`, `log`, `type`, `created_at`, `updated_at`, `note`) VALUES
(699, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-30', NULL, 'out', '2021-07-01 09:42:24', '2021-07-01 09:42:24', 'domain  picasso43.com'),
(700, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-30', NULL, 'out', '2021-07-01 16:02:09', '2021-07-01 16:02:09', 'canada labour domain'),
(701, 3, 4, 1, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-07-04', NULL, 'out', '2021-07-04 07:27:31', '2021-07-04 07:27:31', 'taj'),
(702, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-06-30', NULL, 'out', '2021-07-04 07:28:46', '2021-07-04 07:28:46', 'domain art sign'),
(703, 5, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-07-04', NULL, 'out', '2021-07-04 09:50:53', '2021-07-04 09:50:53', 'call center'),
(704, 5, 4, 1, NULL, NULL, NULL, 149, NULL, NULL, 0, 0, NULL, '2021-07-05', NULL, 'out', '2021-07-05 08:26:08', '2021-07-05 08:26:08', 'both call center number'),
(705, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-05', NULL, 'out', '2021-07-05 09:27:18', '2021-07-05 09:27:18', NULL),
(706, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-07-06', NULL, 'out', '2021-07-06 11:44:58', '2021-07-06 11:44:58', 'domain bill'),
(707, 5, 4, 1, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-07-07', NULL, 'out', '2021-07-07 09:39:50', '2021-07-07 09:39:50', 'internet'),
(708, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-07', NULL, 'out', '2021-07-07 14:42:16', '2021-07-07 14:42:16', NULL),
(709, 5, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-07-07', NULL, 'out', '2021-07-07 14:44:06', '2021-07-07 14:44:06', 'domain'),
(710, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-08', NULL, 'out', '2021-07-08 09:33:24', '2021-07-08 09:33:24', 'all call center taj phone'),
(711, 5, 9, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-10', NULL, 'out', '2021-07-10 14:03:08', '2021-07-10 14:03:08', 'Voice over cost fiverr'),
(712, 3, 11, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-10', NULL, 'out', '2021-07-10 14:05:56', '2021-07-10 14:05:56', 'sakib'),
(713, 3, 1, 4, 771, 66, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-07-11', NULL, 'in', '2021-07-11 07:05:22', '2021-07-11 07:05:22', NULL),
(714, 1, 1, 4, 774, 67, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-07-11', NULL, 'in', '2021-07-11 08:46:15', '2021-07-11 08:46:15', NULL),
(715, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-11', NULL, 'out', '2021-07-11 15:11:33', '2021-07-11 15:11:33', 'domain'),
(716, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-11', NULL, 'out', '2021-07-11 19:36:10', '2021-07-11 19:36:10', 'call center and taj'),
(717, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-12', NULL, 'out', '2021-07-12 14:21:02', '2021-07-12 14:21:02', NULL),
(718, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-14', NULL, 'out', '2021-07-14 13:01:48', '2021-07-14 13:01:48', 'domain'),
(719, 5, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-07-14', NULL, 'out', '2021-07-14 13:02:12', '2021-07-14 13:02:12', 'call center'),
(720, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-07-15 02:19:07', '2021-07-15 02:19:07', 'zafar'),
(721, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-07-15 02:27:35', '2021-07-15 02:27:35', 'Sakib-imtiaj'),
(722, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-07-15 02:30:24', '2021-07-15 02:30:24', 'Sakib-Taj vib'),
(723, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-07-15 02:32:45', '2021-07-15 02:32:45', 'wheal power'),
(724, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-07-15 02:41:44', '2021-07-15 02:41:44', 'taj internet'),
(725, 1, 13, 4, NULL, NULL, NULL, 26, NULL, NULL, 0, 0, NULL, '2021-06-29', NULL, 'out', '2021-07-15 02:43:34', '2021-07-15 02:43:34', 'Sakib-office internet'),
(726, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-06-30', NULL, 'out', '2021-07-15 02:47:54', '2021-07-15 02:47:54', 'zafar'),
(727, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 02:56:13', '2021-07-16 02:56:13', 'Sakib-long'),
(728, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 02:56:51', '2021-07-16 02:56:51', 'Sakib-Ada'),
(729, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 02:57:58', '2021-07-16 02:57:58', 'Sakib-Kalegera'),
(730, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 02:58:50', '2021-07-16 02:58:50', 'Sakib-Nasta'),
(731, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:00:30', '2021-07-16 03:00:30', 'Sakib-Coffee'),
(732, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:01:07', '2021-07-16 03:01:07', 'Sakib-Coffee'),
(733, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:02:29', '2021-07-16 03:02:29', 'Sakib-jakir'),
(734, 1, 3, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:04:00', '2021-07-16 03:04:00', 'Sir'),
(735, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:05:05', '2021-07-16 03:05:05', 'Sakib-Microphon'),
(736, 1, 6, 4, NULL, NULL, NULL, 190, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:06:19', '2021-07-16 03:06:19', 'Meeting Zafar-Jakir nasta'),
(737, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-16 03:10:37', '2021-07-16 03:10:37', 'Sakib-Water'),
(738, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 06:33:38', '2021-07-17 06:33:38', 'call center'),
(739, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 06:34:10', '2021-07-17 06:34:10', NULL),
(740, 3, 13, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-07-15', NULL, 'out', '2021-07-17 06:34:55', '2021-07-17 06:34:55', 'office costing'),
(741, 3, 12, 1, NULL, NULL, NULL, 1499, NULL, NULL, 0, 0, NULL, '2021-07-14', NULL, 'out', '2021-07-17 06:39:09', '2021-07-17 06:39:09', 'Net bill'),
(742, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 09:00:08', '2021-07-17 09:00:08', '2 domain'),
(743, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-07-16', NULL, 'out', '2021-07-17 10:54:41', '2021-07-17 10:54:41', 'Sakib-coca-cola'),
(744, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-07-16', NULL, 'out', '2021-07-17 10:55:25', '2021-07-17 10:55:25', 'Sakib-tiso paper'),
(745, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-07-16', NULL, 'out', '2021-07-17 10:56:07', '2021-07-17 10:56:07', 'sir-Zafar'),
(746, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-07-16', NULL, 'out', '2021-07-17 10:57:06', '2021-07-17 10:57:06', 'Sakib-Nasta'),
(747, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:22:57', '2021-07-17 11:22:57', 'Taj vie'),
(748, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:23:45', '2021-07-17 11:23:45', 'Sakib-Zafar'),
(749, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:24:20', '2021-07-17 11:24:20', 'Sakib- Tajvie'),
(750, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:25:15', '2021-07-17 11:25:15', 'Sakib-Imtiaj vie'),
(751, 1, 13, 4, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:26:18', '2021-07-17 11:26:18', 'Sakib-Extra sms cost'),
(752, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:27:48', '2021-07-17 11:27:48', 'Sakib- Cile 2'),
(753, 1, 12, 4, NULL, NULL, NULL, 410, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:28:45', '2021-07-17 11:28:45', 'Sakib'),
(754, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:29:55', '2021-07-17 11:29:55', 'Hand sanitizer'),
(755, 1, 13, 4, NULL, NULL, NULL, 78, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:30:45', '2021-07-17 11:30:45', 'Sakib-Hand Tiso'),
(756, 1, 13, 4, NULL, NULL, NULL, 52, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:31:55', '2021-07-17 11:31:55', 'Sakib-Tea Leaf'),
(757, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:40:02', '2021-07-17 11:40:02', 'Sakib-Picture-8'),
(758, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 11:40:42', '2021-07-17 11:40:42', 'Sakib'),
(759, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-07-17', NULL, 'out', '2021-07-17 12:00:06', '2021-07-17 12:00:06', 'Sakib- Stam Pad'),
(760, 7, 1, 9, 587, 68, NULL, 15600, NULL, NULL, 0, 0, NULL, '2021-07-18', NULL, 'in', '2021-07-18 08:56:36', '2021-07-18 08:56:36', NULL),
(761, 5, 4, 1, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-07-18', NULL, 'out', '2021-07-18 11:40:24', '2021-07-18 11:40:24', 'call center'),
(762, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-18', NULL, 'out', '2021-07-18 11:40:43', '2021-07-18 11:40:43', 'domain'),
(763, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-24', NULL, 'out', '2021-07-24 05:35:12', '2021-07-24 05:35:12', NULL),
(764, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-07-24', NULL, 'out', '2021-07-24 05:35:38', '2021-07-24 05:35:38', 'hosting'),
(765, 3, 4, 1, NULL, NULL, NULL, 42, NULL, NULL, 0, 0, NULL, '2021-07-24', NULL, 'out', '2021-07-24 05:44:44', '2021-07-24 05:44:44', 'call center'),
(766, 5, 15, 1, NULL, NULL, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-07-19', NULL, 'out', '2021-07-26 15:59:37', '2021-09-06 08:29:08', 'niman face of asia'),
(767, 5, 15, 1, NULL, NULL, NULL, 30000, NULL, NULL, 0, 0, NULL, '2021-07-26', NULL, 'out', '2021-07-26 16:00:27', '2021-09-06 08:29:04', 'niman face of asia'),
(769, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-07-28', NULL, 'out', '2021-07-28 07:21:15', '2021-07-28 07:21:15', '2 domain'),
(770, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-28', NULL, 'out', '2021-07-28 09:16:02', '2021-07-28 09:16:02', 'jakir callcenter taj'),
(771, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-07-28', NULL, 'out', '2021-07-28 13:24:11', '2021-07-28 13:24:11', 'domain'),
(772, 3, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-29', NULL, 'out', '2021-07-29 09:03:34', '2021-07-29 09:03:34', 'tak jakir callcenter'),
(773, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-07-31', NULL, 'out', '2021-07-31 11:52:26', '2021-07-31 11:52:26', 'taj and call center'),
(774, 5, 4, 1, NULL, NULL, NULL, 283, NULL, NULL, 0, 0, NULL, '2021-08-02', NULL, 'out', '2021-08-02 07:17:15', '2021-08-02 07:17:15', 'call center zafar sakib taj'),
(775, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-02', NULL, 'out', '2021-08-03 11:18:58', '2021-08-03 11:18:58', 'Sakib-zafar'),
(776, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-02', NULL, 'out', '2021-08-03 11:19:36', '2021-08-03 11:19:36', 'Sakib-Imtiaj'),
(777, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-02', NULL, 'out', '2021-08-03 11:20:07', '2021-08-03 11:20:07', 'Sakib-Taj'),
(778, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-08-03', NULL, 'out', '2021-08-03 11:20:45', '2021-08-03 11:20:45', 'Sakib-Zafar'),
(779, 1, 4, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-08-02', NULL, 'out', '2021-08-03 11:21:48', '2021-08-03 11:21:48', 'Sakib-Jakir'),
(780, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-03', NULL, 'out', '2021-08-03 11:22:43', '2021-08-03 11:22:43', 'Sakib-Jakir'),
(781, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-03', NULL, 'out', '2021-08-03 16:05:19', '2021-08-03 16:05:19', 'domain taj'),
(782, 5, 1, 5, 811, 69, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-07-26', NULL, 'in', '2021-08-04 04:23:15', '2021-08-04 04:23:15', NULL),
(783, 5, 3, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-04 09:42:07', '2021-08-04 09:42:07', 'sakib bkash'),
(784, 3, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-04 09:42:50', '2021-08-04 09:42:50', 'sakib'),
(785, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-05 02:03:08', '2021-08-05 02:03:08', 'Sakib-Zafar'),
(786, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-05 02:03:50', '2021-08-05 02:03:50', 'Sakib-Taj vie'),
(787, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-05 02:04:33', '2021-08-05 02:04:33', 'Sakib-Imtiaj'),
(788, 1, 13, 4, NULL, NULL, NULL, 78, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-05 02:06:12', '2021-08-05 02:06:12', 'Sakib-Sugar'),
(789, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-05 02:06:48', '2021-08-05 02:06:48', 'Sakib-Shaban'),
(790, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-04', NULL, 'out', '2021-08-05 02:08:04', '2021-08-05 02:08:04', 'Jakir back(Taka paba)'),
(791, 5, 4, 1, NULL, NULL, NULL, 95, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-05 09:07:41', '2021-08-05 09:07:41', 'call center and taj'),
(792, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-05 09:10:28', '2021-08-05 09:10:28', 'domain'),
(793, 1, 6, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-06 06:22:07', '2021-08-06 06:22:07', 'Bank Sakib'),
(794, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-06 06:23:39', '2021-08-06 06:23:39', 'Sakib-Wheel Powder'),
(795, 1, 13, 4, NULL, NULL, NULL, 12, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-06 06:24:46', '2021-08-06 06:24:46', 'Sakib_Ada'),
(796, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-06 06:25:39', '2021-08-06 06:25:39', 'Sir_Taj vie'),
(797, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-06 06:26:47', '2021-08-06 06:26:47', 'Sakib_Zafar'),
(798, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-08-05', NULL, 'out', '2021-08-06 06:27:41', '2021-08-06 06:27:41', 'Sakib_nasta'),
(799, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-06', NULL, 'out', '2021-08-06 06:31:19', '2021-08-06 06:31:19', 'Sakib_coffee(sobie coffer abder korsa )'),
(800, 5, 12, 1, NULL, NULL, NULL, 1020, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-07 08:41:36', '2021-08-07 08:41:36', 'Electric bill'),
(801, 5, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-07 08:41:53', '2021-08-07 08:41:53', 'call center'),
(802, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:30:22', '2021-08-08 08:30:22', 'Sakib-Zafar'),
(803, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:32:37', '2021-08-08 08:32:37', 'Sakib-Taj vis'),
(804, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:33:46', '2021-08-08 08:33:46', 'Taj vi -  internet'),
(805, 1, 12, 4, NULL, NULL, NULL, 700, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:34:45', '2021-08-08 08:34:45', 'Sakib'),
(806, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:35:49', '2021-08-08 08:35:49', 'Sakib-Jakir'),
(807, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:37:22', '2021-08-08 08:37:22', 'Sakib-Taj vie'),
(808, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:37:57', '2021-08-08 08:37:57', 'Sakib-Nasta'),
(809, 1, 3, 4, NULL, NULL, NULL, 56, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:38:48', '2021-08-08 08:38:48', 'Sakib-Tea Leaf'),
(810, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:39:22', '2021-08-08 08:39:22', 'Sakib-Ada'),
(811, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-07', NULL, 'out', '2021-08-08 08:40:24', '2021-08-08 08:40:24', 'Sakib-vim'),
(812, 5, 15, 1, NULL, NULL, NULL, 2500, NULL, NULL, 0, 0, NULL, '2021-08-09', NULL, 'out', '2021-08-09 09:11:28', '2021-08-09 09:11:28', 'Payment Gateway'),
(813, 5, 4, 1, NULL, NULL, NULL, 161, NULL, NULL, 0, 0, NULL, '2021-08-09', NULL, 'out', '2021-08-09 09:12:17', '2021-08-09 09:12:17', 'callcenter and others'),
(814, 5, 15, 1, NULL, NULL, NULL, 75000, NULL, NULL, 0, 0, NULL, '2021-08-10', NULL, 'out', '2021-08-10 11:33:48', '2021-09-06 08:26:28', 'niman bill for xoom apps'),
(815, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-08-08', NULL, 'out', '2021-08-11 02:19:25', '2021-08-11 02:19:25', 'Sakib-Zafar'),
(816, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-08-08', NULL, 'out', '2021-08-11 02:20:08', '2021-08-11 02:20:08', 'Sakib'),
(817, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-09', NULL, 'out', '2021-08-11 02:20:43', '2021-08-11 02:20:43', 'Sakib'),
(818, 1, 3, 4, NULL, NULL, NULL, 165, NULL, NULL, 0, 0, NULL, '2021-08-09', NULL, 'out', '2021-08-11 02:22:39', '2021-08-11 02:22:39', 'Zafar nasim jakir (meeting)'),
(819, 1, 3, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-08-09', NULL, 'out', '2021-08-11 02:24:18', '2021-08-11 02:24:18', 'Z+n+j(meeting)'),
(820, 1, 6, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-08-09', NULL, 'out', '2021-08-11 02:26:16', '2021-08-11 02:26:16', 'Sir desa(z+n+j)meeting'),
(821, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-08-10', NULL, 'out', '2021-08-11 02:27:17', '2021-08-11 02:27:17', 'Sir_sakib'),
(822, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-11 12:45:04', '2021-08-11 12:45:04', 'domain'),
(823, 1, 13, 4, NULL, NULL, NULL, 140, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:09:09', '2021-08-12 07:09:09', 'Sakib-Hand sanitizer'),
(824, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:11:03', '2021-08-12 07:11:03', 'Sakib-zafar'),
(825, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:11:53', '2021-08-12 07:11:53', 'Sakib-Taj vie'),
(826, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:12:53', '2021-08-12 07:12:53', 'Sakib-jakir vie'),
(827, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:13:50', '2021-08-12 07:13:50', 'Sakib-Nasim'),
(828, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:14:32', '2021-08-12 07:14:32', 'Sakib-imtiaj'),
(829, 1, 13, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:15:25', '2021-08-12 07:15:25', 'Sakib-Sugar'),
(830, 1, 6, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:16:16', '2021-08-12 07:16:16', 'Sakib-Tea Leaf'),
(831, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:17:02', '2021-08-12 07:17:02', 'Sakib-Long'),
(832, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:18:08', '2021-08-12 07:18:08', 'Sakib-Kaligera'),
(833, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:18:54', '2021-08-12 07:18:54', 'Sakib'),
(834, 1, 3, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-11', NULL, 'out', '2021-08-12 07:19:14', '2021-08-12 07:19:14', 'sir'),
(835, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-14 07:24:00', '2021-08-14 07:24:00', 'domain bill'),
(836, 5, 1, 5, 837, 70, NULL, 12000, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'in', '2021-08-16 08:23:49', '2021-08-16 08:23:49', NULL),
(837, 1, 6, 4, NULL, NULL, NULL, 160, NULL, NULL, 0, 0, NULL, '2021-08-12', NULL, 'out', '2021-08-17 02:19:16', '2021-08-17 02:19:16', 'zafar-jakir(meeting)nasta'),
(838, 1, 6, 4, NULL, NULL, NULL, 14, NULL, NULL, 0, 0, NULL, '2021-08-12', NULL, 'out', '2021-08-17 02:19:52', '2021-08-17 02:19:52', 'Sakib-Bank'),
(839, 1, 3, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-08-12', NULL, 'out', '2021-08-17 02:20:28', '2021-08-17 02:20:28', 'Sakib'),
(840, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 02:27:22', '2021-08-17 02:27:22', 'Sakib-Cable'),
(841, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 11:44:28', '2021-08-17 11:44:28', 'Sakib-Ada'),
(842, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 11:45:17', '2021-08-17 11:45:17', 'Sakib-Tiso'),
(843, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 11:46:00', '2021-08-17 11:46:00', 'Sakib-Jakir'),
(844, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 11:46:33', '2021-08-17 11:46:33', 'Sakib-Nasim'),
(845, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 11:47:11', '2021-08-17 11:47:11', 'Sakib'),
(846, 1, 6, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-08-14', NULL, 'out', '2021-08-17 11:47:42', '2021-08-17 11:47:42', 'sir'),
(847, 1, 6, 4, NULL, NULL, NULL, 420, NULL, NULL, 0, 0, NULL, '2021-08-16', NULL, 'out', '2021-08-17 11:59:12', '2021-08-17 11:59:12', 'Z+J+T(Meeting)tea islami Bank'),
(848, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-16', NULL, 'out', '2021-08-17 12:00:31', '2021-08-17 12:00:31', 'Sakib-Sabbir'),
(849, 1, 4, 4, NULL, NULL, NULL, 22, NULL, NULL, 0, 0, NULL, '2021-08-16', NULL, 'out', '2021-08-17 12:01:09', '2021-08-17 12:01:09', 'Sakib-Zafar'),
(850, 1, 3, 4, NULL, NULL, NULL, 135, NULL, NULL, 0, 0, NULL, '2021-08-16', NULL, 'out', '2021-08-17 12:01:53', '2021-08-17 12:01:53', 'Sakib'),
(851, 1, 13, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-08-16', NULL, 'out', '2021-08-17 12:02:54', '2021-08-17 12:02:54', 'Sakib-secorat-3'),
(852, 1, 6, 4, NULL, NULL, NULL, 220, NULL, NULL, 0, 0, NULL, '2021-08-16', NULL, 'out', '2021-08-17 12:03:26', '2021-08-17 12:03:26', 'Sir'),
(853, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:04:45', '2021-08-17 12:04:45', 'Sakib-Taj vie'),
(854, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:05:22', '2021-08-17 12:05:22', 'Sakib-Subbir'),
(855, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:05:58', '2021-08-17 12:05:58', 'Sakib-Zafar'),
(856, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:06:30', '2021-08-17 12:06:30', 'Sakib-Jakir'),
(857, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:07:04', '2021-08-17 12:07:04', 'Sakib-Nasim'),
(858, 1, 13, 4, NULL, NULL, NULL, 35, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:07:49', '2021-08-17 12:07:49', 'Sakib-Hand Wash'),
(859, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:08:22', '2021-08-17 12:08:22', 'Sakib-coffee'),
(860, 1, 14, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:09:17', '2021-08-17 12:09:17', 'Sakib-Power Pot'),
(861, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-17 12:09:42', '2021-08-17 12:09:42', 'Sakib'),
(862, 5, 1, 9, 536, 61, NULL, 13200, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 03:35:35', '2021-08-18 03:35:35', NULL),
(863, 5, 4, 1, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-18 03:54:48', '2021-08-18 03:54:48', 'call center'),
(864, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-18 03:55:06', '2021-08-18 03:55:06', NULL),
(865, 3, 1, 9, 790, 72, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:17:32', '2021-08-18 05:17:32', NULL),
(866, 3, 1, 9, 790, 72, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:17:32', '2021-08-18 05:17:32', NULL),
(867, 3, 1, 9, 790, 72, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:17:32', '2021-08-18 05:17:32', NULL),
(868, 3, 1, 9, 790, 71, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:22:24', '2021-08-18 05:22:24', NULL),
(869, 5, 1, 5, 811, 69, NULL, 20000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:23:26', '2021-08-18 05:23:26', NULL),
(870, 1, 1, 5, 124, 51, NULL, 20000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:24:25', '2021-08-18 05:24:25', NULL),
(871, 1, 1, 5, 567, 63, NULL, 8000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:24:41', '2021-08-18 05:24:41', NULL),
(872, 1, 1, 5, 28, 46, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2021-08-18 05:25:04', '2021-08-18 05:25:04', NULL),
(873, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-08-17', NULL, 'out', '2021-08-19 03:20:14', '2021-08-19 03:20:14', 'sir'),
(874, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-19 03:21:07', '2021-08-19 03:21:07', 'Sakib-Mase'),
(875, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-19 03:22:08', '2021-08-19 03:22:08', 'Sakib-pic(4)sir'),
(876, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-19 03:22:56', '2021-08-19 03:22:56', 'Sakib-Tea Leaf'),
(877, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-19 03:23:27', '2021-08-19 03:23:27', 'Sakib'),
(878, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'out', '2021-08-19 03:24:01', '2021-08-19 03:24:01', 'sir'),
(879, 5, 7, 1, NULL, NULL, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-08-20', NULL, 'out', '2021-08-20 13:01:15', '2021-08-20 13:01:15', 'sky hosting'),
(880, 5, 9, 1, NULL, NULL, NULL, 4100, NULL, NULL, 0, 0, NULL, '2021-08-20', NULL, 'out', '2021-08-20 13:01:56', '2021-09-06 08:35:29', '50 usd card from niman'),
(881, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-20', NULL, 'out', '2021-08-20 13:15:04', '2021-08-20 13:15:04', 'call center'),
(882, 1, 13, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-19', NULL, 'out', '2021-08-21 03:51:53', '2021-08-21 03:51:53', 'Sakib-Cable'),
(883, 1, 12, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-08-19', NULL, 'out', '2021-08-21 03:52:44', '2021-08-21 03:52:44', 'Sakib'),
(884, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-08-19', NULL, 'out', '2021-08-21 03:53:34', '2021-08-21 03:53:34', 'Sakib'),
(885, 1, 3, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-19', NULL, 'out', '2021-08-21 03:56:39', '2021-08-21 03:56:39', 'zafar+Jakir(nasta) office dakse'),
(886, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-08-21', NULL, 'out', '2021-08-21 03:58:02', '2021-08-21 03:58:02', 'Sakib-Zafar'),
(887, 1, 4, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-08-21', NULL, 'out', '2021-08-21 03:58:42', '2021-08-21 03:58:42', 'Sakib-Subbir'),
(888, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-08-21', NULL, 'out', '2021-08-21 03:59:14', '2021-08-21 03:59:14', 'Sakib-Jakir'),
(889, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-21', NULL, 'out', '2021-08-21 03:59:47', '2021-08-21 03:59:47', 'Sakib-Taj'),
(890, 1, 1, 4, 44, 74, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'in', '2021-08-22 03:41:20', '2021-08-22 03:41:20', NULL),
(891, 1, 1, 4, 44, 74, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'in', '2021-08-22 03:43:49', '2021-08-22 03:43:49', NULL),
(892, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-08-21', NULL, 'out', '2021-08-23 02:33:15', '2021-08-23 02:33:15', 'Sakib-Sir(coffee)'),
(893, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'out', '2021-08-23 02:37:04', '2021-08-23 02:37:04', 'Sakib-Hand sanitizer'),
(894, 1, 3, 4, NULL, NULL, NULL, 110, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'out', '2021-08-23 02:37:55', '2021-08-23 02:37:55', 'Sakib'),
(895, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'out', '2021-08-23 02:40:38', '2021-08-23 02:40:38', 'Sakib-Sugar'),
(896, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'out', '2021-08-23 02:42:42', '2021-08-23 02:42:42', 'Sakib-Ada'),
(897, 1, 6, 4, NULL, NULL, NULL, 160, NULL, NULL, 0, 0, NULL, '2021-08-22', NULL, 'out', '2021-08-23 02:46:25', '2021-08-23 02:46:25', 'sir'),
(898, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-23', NULL, 'out', '2021-08-24 02:40:38', '2021-08-24 02:40:38', 'Sakib-taj vie'),
(899, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-23', NULL, 'out', '2021-08-24 02:41:49', '2021-08-24 02:41:49', 'Sakib-Sabbir vir'),
(900, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-24 06:06:25', '2021-08-24 06:06:25', 'Name Hosting'),
(901, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-24 06:06:54', '2021-08-24 06:06:54', 'Call center bill'),
(902, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-24 12:49:10', '2021-08-24 12:49:10', 'cll center'),
(903, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:39:34', '2021-08-25 04:39:34', 'Sakib-Taj vie'),
(904, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:40:31', '2021-08-25 04:40:31', 'Sakib-Nasim'),
(905, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:41:02', '2021-08-25 04:41:02', 'Sakib'),
(906, 1, 13, 4, NULL, NULL, NULL, 45, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:42:45', '2021-08-25 04:42:45', 'Sakib-Battery -2'),
(907, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:43:37', '2021-08-25 04:43:37', 'Sakib-Long'),
(908, 1, 13, 4, NULL, NULL, NULL, 15, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:45:20', '2021-08-25 04:45:20', 'Sakib-Kalageria'),
(909, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-08-24', NULL, 'out', '2021-08-25 04:47:42', '2021-08-25 04:47:42', 'Sakib-sir(trade license)'),
(910, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-25 04:48:45', '2021-08-25 04:48:45', 'Sakib'),
(911, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-25 04:49:35', '2021-08-25 04:49:35', 'Sakib-Taj vie'),
(912, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-25 04:50:14', '2021-08-25 04:50:14', 'Sakib-Sabbir vie'),
(913, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-25 04:50:48', '2021-08-25 04:50:48', 'Sakib-Zafar'),
(914, 5, 9, 1, NULL, NULL, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-25 05:13:48', '2021-09-06 08:36:43', 'paypal usd from niman'),
(915, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-26 07:04:48', '2021-08-26 07:04:48', 'Sakib'),
(916, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-26 07:05:25', '2021-08-26 07:05:25', 'sir'),
(917, 1, 6, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-08-25', NULL, 'out', '2021-08-26 07:08:26', '2021-08-26 07:08:26', 'Zafar (office dhakar jono)tea'),
(918, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-08-27', NULL, 'out', '2021-08-27 11:35:32', '2021-08-27 11:35:32', '2 domain'),
(919, 1, 6, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-08-27', NULL, 'out', '2021-08-28 02:13:11', '2021-08-28 02:13:11', 'Zafar-office finding(Tea)'),
(920, 1, 13, 4, NULL, NULL, NULL, 56, NULL, NULL, 0, 0, NULL, '2021-08-26', NULL, 'out', '2021-08-28 02:14:05', '2021-08-28 02:14:05', 'Sakib-Tea leaf'),
(921, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-08-26', NULL, 'out', '2021-08-28 02:14:41', '2021-08-28 02:14:41', 'Sakib'),
(922, 5, 1, 5, 814, 75, NULL, 42000, NULL, NULL, 0, 0, NULL, '2021-08-28', NULL, 'in', '2021-08-28 05:02:31', '2021-08-28 05:02:31', NULL),
(923, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-28', NULL, 'out', '2021-08-29 03:12:45', '2021-08-29 03:12:45', 'Sakib-zafar'),
(924, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-28', NULL, 'out', '2021-08-29 03:13:25', '2021-08-29 03:13:25', 'Sakib-Nasim'),
(925, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-08-28', NULL, 'out', '2021-08-29 03:14:26', '2021-08-29 03:14:26', 'Sakib-Tiso paper'),
(926, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-08-28', NULL, 'out', '2021-08-29 03:15:27', '2021-08-29 03:15:27', 'Sakib'),
(927, 1, 1, 5, 875, 76, NULL, 12000, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'in', '2021-08-29 10:45:38', '2021-08-29 10:45:38', NULL),
(928, 5, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-29 12:39:38', '2021-08-29 12:39:38', 'sakib'),
(929, 5, 3, 1, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2021-08-30', NULL, 'out', '2021-08-30 07:59:11', '2021-08-30 07:59:11', 'call center'),
(930, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:29:17', '2021-08-31 12:29:17', 'Sakib-Taj vie'),
(931, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:30:12', '2021-08-31 12:30:12', 'Taj vie-internet'),
(932, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:31:09', '2021-08-31 12:31:09', 'Sakib-Imtiaj'),
(933, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:32:24', '2021-08-31 12:32:24', 'Sakib-Zafar'),
(934, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:33:51', '2021-08-31 12:33:51', 'Sakib-Taj vie'),
(935, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:34:29', '2021-08-31 12:34:29', 'Sakib-Subbir vie'),
(936, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:35:16', '2021-08-31 12:35:16', 'Sakib-Nasim'),
(937, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:35:40', '2021-08-31 12:35:40', 'Sakib'),
(938, 1, 3, 4, NULL, NULL, NULL, 110, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:36:06', '2021-08-31 12:36:06', 'Sakib'),
(939, 1, 6, 4, NULL, NULL, NULL, 175, NULL, NULL, 0, 0, NULL, '2021-08-29', NULL, 'out', '2021-08-31 12:36:45', '2021-08-31 12:36:45', 'Sir'),
(940, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-08-31', NULL, 'out', '2021-08-31 12:37:32', '2021-08-31 12:37:32', 'Sakib'),
(941, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-08-31', NULL, 'out', '2021-08-31 12:38:05', '2021-08-31 12:38:05', 'Sakib-Sugar'),
(942, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-08-31', NULL, 'out', '2021-08-31 12:38:45', '2021-08-31 12:38:45', 'Sakib-Tea leaf'),
(943, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-31', NULL, 'out', '2021-08-31 19:31:11', '2021-08-31 19:31:11', 'domain'),
(944, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-08-31', NULL, 'out', '2021-09-01 18:46:22', '2021-09-01 18:46:22', NULL),
(945, 5, 4, 1, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-02', NULL, 'out', '2021-09-02 04:38:52', '2021-09-02 04:38:52', 'zafar'),
(946, 1, 6, 4, NULL, NULL, NULL, 170, NULL, NULL, 0, 0, NULL, '2021-09-01', NULL, 'out', '2021-09-04 02:20:13', '2021-09-04 02:20:13', 'zafar- samsul huda(tea)'),
(947, 1, 6, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-01', NULL, 'out', '2021-09-04 02:22:03', '2021-09-04 02:22:03', 'Zafar(office find)'),
(948, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-01', NULL, 'out', '2021-09-04 02:23:31', '2021-09-04 02:23:31', 'Sakib'),
(949, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-02', NULL, 'out', '2021-09-04 02:24:39', '2021-09-04 02:24:39', 'sir-Zafar'),
(950, 3, 13, 1, NULL, NULL, NULL, 642, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-04 08:01:13', '2021-09-04 08:01:13', 'electric bill and mobile bill'),
(951, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-05 02:22:31', '2021-09-05 02:22:31', 'Sakib-Sabbir vie'),
(952, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-05 02:24:57', '2021-09-05 02:24:57', 'Sakib-Taj vie'),
(953, 1, 12, 4, NULL, NULL, NULL, 400, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-05 02:26:22', '2021-09-05 02:26:22', 'Sakib'),
(954, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-05 02:26:56', '2021-09-05 02:26:56', 'Sakib-coffee'),
(955, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-05 02:29:48', '2021-09-05 02:29:48', 'Sakib-Hand sanitizer'),
(956, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-09-04', NULL, 'out', '2021-09-05 02:33:12', '2021-09-05 02:33:12', 'Sakib'),
(957, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:09:45', '2021-09-06 02:09:45', 'Sakib-Taj vie'),
(958, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:10:21', '2021-09-06 02:10:21', 'Sakib-zafar'),
(959, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:10:59', '2021-09-06 02:10:59', 'Sakib-Sabbir'),
(960, 1, 6, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:12:33', '2021-09-06 02:12:33', 'Sakib-Tiso'),
(961, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:13:50', '2021-09-06 02:13:50', 'Sakib-kalagira and Ada'),
(962, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:14:56', '2021-09-06 02:14:56', 'Sakib-Saban'),
(963, 1, 3, 4, NULL, NULL, NULL, 120, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:15:20', '2021-09-06 02:15:20', 'Sakib'),
(964, 1, 3, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:16:14', '2021-09-06 02:16:14', 'Sakib-Chakin bole'),
(965, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-06 02:17:20', '2021-09-06 02:17:20', 'Sakib-Chips'),
(966, 2, 15, 1, NULL, NULL, NULL, 45000, NULL, NULL, 0, 0, NULL, '2021-09-06', NULL, 'out', '2021-09-06 07:31:49', '2021-09-06 07:31:49', 'niman bill'),
(967, 6, 1, 5, 898, 77, NULL, 28000, NULL, NULL, 0, 0, NULL, '2021-02-17', NULL, 'in', '2021-09-06 09:04:06', '2021-09-06 09:04:06', NULL),
(968, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-09-06', NULL, 'out', '2021-09-07 09:47:04', '2021-09-07 09:47:04', 'ebl'),
(969, 5, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'out', '2021-09-07 09:47:53', '2021-09-07 10:22:43', '5domain'),
(970, 5, 4, 1, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-07 09:48:22', '2021-09-07 09:48:22', 'call center'),
(971, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-09-06', NULL, 'out', '2021-09-08 02:18:13', '2021-09-08 02:18:13', 'Sakib-Batary 2'),
(972, 1, 3, 4, NULL, NULL, NULL, 90, NULL, NULL, 0, 0, NULL, '2021-09-06', NULL, 'out', '2021-09-08 02:18:44', '2021-09-08 02:18:44', 'Sakib'),
(973, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:19:51', '2021-09-08 02:19:51', 'Sakib-Taj vie'),
(974, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:20:38', '2021-09-08 02:20:38', 'Sakib-Zafar'),
(975, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:21:24', '2021-09-08 02:21:24', 'Sakib-Sabbir'),
(976, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:23:10', '2021-09-08 02:23:10', 'Sakib-Imtiaj'),
(977, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:24:17', '2021-09-08 02:24:17', 'Sakib-Nasim'),
(978, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:25:23', '2021-09-08 02:25:23', 'Sakib'),
(979, 1, 13, 4, NULL, NULL, NULL, 220, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:26:33', '2021-09-08 02:26:33', 'Sakib-Cable'),
(980, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:29:06', '2021-09-08 02:29:06', 'Sakib-Sugar'),
(981, 1, 13, 4, NULL, NULL, NULL, 140, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:29:56', '2021-09-08 02:29:56', 'Sir'),
(982, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-09-07', NULL, 'out', '2021-09-08 02:33:02', '2021-09-08 02:33:02', 'Sakib-Tea leaf'),
(983, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-09-08', NULL, 'out', '2021-09-08 04:17:28', '2021-09-08 04:17:28', '2 domain'),
(984, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-08', NULL, 'out', '2021-09-09 02:05:22', '2021-09-09 02:05:22', 'sir'),
(985, 1, 3, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-09-08', NULL, 'out', '2021-09-09 02:05:54', '2021-09-09 02:05:54', 'Sakib'),
(986, 1, 13, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-09-08', NULL, 'out', '2021-09-09 02:09:02', '2021-09-09 02:09:02', 'Saikb-Profile photo copy colur'),
(987, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-08', NULL, 'out', '2021-09-09 02:24:15', '2021-09-09 02:24:15', 'Taj vie(Profile file)'),
(988, 1, 13, 4, NULL, NULL, NULL, 38, NULL, NULL, 0, 0, NULL, '2021-09-08', NULL, 'out', '2021-09-09 02:25:11', '2021-09-09 02:25:11', 'Imtiaj-internet'),
(989, 3, 1, 4, 504, 78, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'in', '2021-09-09 05:13:51', '2021-09-09 05:13:51', NULL),
(990, 3, 1, 4, 504, 79, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'in', '2021-09-09 11:21:20', '2021-09-09 11:21:20', NULL),
(991, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-09 16:21:49', '2021-09-09 16:21:49', 'domain'),
(992, 5, 8, 1, NULL, NULL, NULL, 8120, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-09 16:23:18', '2021-09-09 16:23:18', '100usd from niman'),
(993, 1, 12, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-09 16:24:36', '2021-09-09 16:24:36', 'electric bill'),
(994, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-11 02:02:25', '2021-09-11 02:02:25', NULL),
(995, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-11 02:04:10', '2021-09-11 02:04:10', NULL),
(996, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-11 02:17:01', '2021-09-11 02:17:01', 'Sakib'),
(997, 7, 7, 1, NULL, NULL, NULL, 4150, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-12 07:49:15', '2021-09-12 07:49:15', '50usd from niman'),
(998, 3, 3, 1, NULL, NULL, NULL, 400, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-12 07:49:49', '2021-09-12 07:49:49', 'sakib bkash'),
(999, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-11', NULL, 'out', '2021-09-13 02:39:41', '2021-09-13 02:39:41', 'Sakib-Taj vie'),
(1000, 1, 3, 4, NULL, NULL, NULL, 105, NULL, NULL, 0, 0, NULL, '2021-09-11', NULL, 'out', '2021-09-13 02:40:38', '2021-09-13 02:40:38', 'Sakib'),
(1001, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-11', NULL, 'out', '2021-09-13 02:41:27', '2021-09-13 02:41:27', 'Sir - coffee'),
(1002, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:42:18', '2021-09-13 02:42:18', 'zafar'),
(1003, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:43:42', '2021-09-13 02:43:42', 'Sakib-Taj Vie'),
(1004, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:44:21', '2021-09-13 02:44:21', 'Sakib-Sabbir'),
(1005, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:45:17', '2021-09-13 02:45:17', 'Sakib-Imitaj vie'),
(1006, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:46:02', '2021-09-13 02:46:02', 'Sakib-Nasim'),
(1007, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:47:00', '2021-09-13 02:47:00', 'Sakib-Tiso Paper'),
(1008, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:47:37', '2021-09-13 02:47:37', 'Sakib'),
(1009, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-12', NULL, 'out', '2021-09-13 02:48:04', '2021-09-13 02:48:04', 'Sir'),
(1010, 3, 4, 1, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2021-09-13', NULL, 'out', '2021-09-13 10:22:14', '2021-09-13 10:22:14', 'call center bill'),
(1011, 1, 14, 1, NULL, NULL, NULL, 3012, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-14 09:10:56', '2021-09-14 09:10:56', 'computer fix and hard drive purchase'),
(1012, 1, 12, 4, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-09-09', NULL, 'out', '2021-09-15 03:05:34', '2021-09-15 03:05:34', 'Sakib'),
(1013, 1, 4, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-11', NULL, 'out', '2021-09-15 03:06:40', '2021-09-15 03:06:40', 'Sakib-Taj vie'),
(1014, 1, 6, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-13', NULL, 'out', '2021-09-15 03:12:29', '2021-09-15 03:12:29', 'Sakib'),
(1015, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-15 03:12:57', '2021-09-15 03:12:57', 'Sakib'),
(1016, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-13', NULL, 'out', '2021-09-15 03:13:36', '2021-09-15 03:13:36', 'Sakib'),
(1017, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-13', NULL, 'out', '2021-09-15 03:14:47', '2021-09-15 03:14:47', 'Sakib-Santinoger'),
(1018, 1, 6, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-13', NULL, 'out', '2021-09-15 03:15:23', '2021-09-15 03:15:23', 'Sakib'),
(1019, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-15 03:15:45', '2021-09-15 03:15:45', 'Sakib'),
(1020, 3, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-15 06:50:51', '2021-09-15 06:50:51', 'sakib'),
(1021, 3, 15, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-15 06:51:25', '2021-09-15 06:51:25', 'jamat ali 5000'),
(1022, 3, 3, 1, NULL, NULL, NULL, 520, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-15 13:04:27', '2021-09-15 13:04:27', 'sakib'),
(1023, 3, 12, 1, NULL, NULL, NULL, 715, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-15 13:05:38', '2021-09-15 13:05:38', 'electric bill'),
(1024, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:19:47', '2021-09-16 03:19:47', 'Sakib'),
(1025, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:29:33', '2021-09-16 03:29:33', 'Sakib-Tea leaf'),
(1026, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:30:37', '2021-09-16 03:30:37', 'Sakib-Ada'),
(1027, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:31:27', '2021-09-16 03:31:27', 'Sakib-Kalegera'),
(1028, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:32:04', '2021-09-16 03:32:04', 'Sakib-Long'),
(1029, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:34:46', '2021-09-16 03:34:46', 'Sir'),
(1030, 1, 6, 4, NULL, NULL, NULL, 185, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:36:54', '2021-09-16 03:36:54', 'Zafar+Nasim(meeting mohamade pur)'),
(1031, 1, 13, 4, NULL, NULL, NULL, 1200, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 03:41:16', '2021-09-16 03:41:16', 'Sakib-Hdd Seagate 320GB'),
(1032, 1, 13, 4, NULL, NULL, NULL, 1500, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 04:00:14', '2021-09-16 04:00:14', 'Sakib-Mother Board Repair'),
(1033, 1, 13, 4, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-09-14', NULL, 'out', '2021-09-16 04:01:27', '2021-09-16 04:01:27', 'Sakib-Service');
INSERT INTO `transactions` (`id`, `method_id`, `purpose_id`, `user_id`, `client_id`, `invoice_id`, `quotation_id`, `amount`, `pay_amount`, `discount`, `total_pay`, `old_total_pay`, `total_due`, `date`, `log`, `type`, `created_at`, `updated_at`, `note`) VALUES
(1034, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:02:51', '2021-09-16 04:02:51', 'Sakib-Taj vie'),
(1035, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:03:30', '2021-09-16 04:03:30', 'Sakib-Zafar'),
(1036, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:04:11', '2021-09-16 04:04:11', 'Sakib-Imtiaj vie'),
(1037, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:04:55', '2021-09-16 04:04:55', 'Sakib-Nasim'),
(1038, 1, 3, 4, NULL, NULL, NULL, 360, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:05:49', '2021-09-16 04:05:49', 'Sakib'),
(1039, 1, 6, 4, NULL, NULL, NULL, 140, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:06:39', '2021-09-16 04:06:39', 'sir'),
(1040, 1, 12, 4, NULL, NULL, NULL, 400, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:07:42', '2021-09-16 04:07:42', 'Sakib'),
(1041, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-15', NULL, 'out', '2021-09-16 04:12:01', '2021-09-16 04:12:01', 'Zafar meeting (Gulshan-2)'),
(1042, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-16 10:46:28', '2021-09-16 10:46:28', '2 domain himuit and 	Thebolaw.com'),
(1043, 3, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-16 10:46:47', '2021-09-16 10:46:47', 'sakib'),
(1044, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-18 10:31:39', '2021-09-18 10:31:39', 'Sakib'),
(1045, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-18 10:32:19', '2021-09-18 10:32:19', 'Sakib-Sugar'),
(1046, 1, 13, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-18 10:33:42', '2021-09-18 10:33:42', 'Sakib-Hand Sanitizer'),
(1047, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-18 10:34:39', '2021-09-18 10:34:39', 'Sakib-Sabbir vie'),
(1048, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'out', '2021-09-18 10:35:13', '2021-09-18 10:35:13', 'Sir'),
(1049, 1, 13, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-18', NULL, 'out', '2021-09-19 02:37:09', '2021-09-19 02:37:09', 'Zafar karombazar shipsa'),
(1050, 1, 3, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-18', NULL, 'out', '2021-09-19 02:37:36', '2021-09-19 02:37:36', 'Sakib'),
(1051, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-09-18', NULL, 'out', '2021-09-19 02:38:46', '2021-09-19 02:38:46', 'Sakib-Tea Leaf'),
(1052, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-18', NULL, 'out', '2021-09-19 02:39:18', '2021-09-19 02:39:18', 'sir'),
(1053, 3, 1, 10, 900, 82, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'in', '2021-09-19 07:21:31', '2021-09-19 07:21:31', NULL),
(1054, 5, 15, 1, NULL, NULL, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-19 10:28:22', '2021-09-19 10:28:22', 'niman payment'),
(1055, 3, 14, 1, NULL, NULL, NULL, 1320, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-19 10:29:58', '2021-09-19 10:29:58', 'computer and monitor adaptar'),
(1056, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 02:56:03', '2021-09-20 02:56:03', 'Sakib-Sabbir'),
(1057, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 02:56:45', '2021-09-20 02:56:45', 'Sakaib-Imtij vie'),
(1058, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 02:57:38', '2021-09-20 02:57:38', 'Sakib-Zafar'),
(1059, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 02:58:32', '2021-09-20 02:58:32', 'Sakib-Nasim'),
(1060, 1, 6, 4, NULL, NULL, NULL, 2, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 02:59:46', '2021-09-20 02:59:46', 'Sakib paba'),
(1061, 1, 6, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:02:12', '2021-09-20 03:02:12', 'Zafar(Raz Laptop Color Elephant Road)'),
(1062, 1, 13, 4, NULL, NULL, NULL, 700, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:03:30', '2021-09-20 03:03:30', 'Zafar-Keyboard'),
(1063, 1, 13, 4, NULL, NULL, NULL, 600, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:04:57', '2021-09-20 03:04:57', 'Zafar-Power Cable'),
(1064, 1, 13, 4, NULL, NULL, NULL, 350, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:06:18', '2021-09-20 03:06:18', 'Sakib-A4tk mosu'),
(1065, 1, 3, 4, NULL, NULL, NULL, 70, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:06:52', '2021-09-20 03:06:52', 'Sakib'),
(1066, 1, 3, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:09:27', '2021-09-20 03:09:27', 'Sakib-coffee (sir)'),
(1067, 1, 6, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-19', NULL, 'out', '2021-09-20 03:10:09', '2021-09-20 03:10:09', 'Sir'),
(1068, 3, 15, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2021-09-20', NULL, 'out', '2021-09-20 09:47:16', '2021-09-20 09:47:16', 'bulk sms bd 510 tk'),
(1070, 1, 13, 1, NULL, NULL, NULL, 230, NULL, NULL, 0, 0, NULL, '2021-09-20', NULL, 'out', '2021-09-20 11:49:49', '2021-09-20 11:49:49', 'stamp purchase'),
(1071, 1, 6, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-09-20', NULL, 'out', '2021-09-21 03:21:49', '2021-09-21 03:21:49', 'Zafar(Elefan road)office work'),
(1072, 1, 13, 4, NULL, NULL, NULL, 230, NULL, NULL, 0, 0, NULL, '2021-09-20', NULL, 'out', '2021-09-21 03:22:36', '2021-09-21 03:22:36', 'Sakib-Stamp Paper'),
(1073, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-20', NULL, 'out', '2021-09-21 03:22:59', '2021-09-21 03:22:59', 'Sakib'),
(1074, 1, 3, 4, NULL, NULL, NULL, 600, NULL, NULL, 0, 0, NULL, '2021-09-20', NULL, 'out', '2021-09-21 03:23:28', '2021-09-21 03:23:28', 'Sir'),
(1075, 3, 1, 4, 504, 79, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'in', '2021-09-21 06:57:27', '2021-09-21 06:57:27', NULL),
(1076, 3, 1, 4, 504, 79, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'in', '2021-09-21 06:57:30', '2021-09-21 06:57:30', NULL),
(1077, 3, 1, 4, 504, 79, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'in', '2021-09-21 06:57:34', '2021-09-21 06:57:34', NULL),
(1078, 3, 1, 4, 504, 83, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'in', '2021-09-21 07:24:03', '2021-09-21 07:24:03', NULL),
(1079, 3, 1, 4, 504, 83, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'in', '2021-09-21 07:24:43', '2021-09-21 07:24:43', NULL),
(1080, 3, 1, 4, 504, 84, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'in', '2021-09-21 12:03:12', '2021-09-21 12:03:12', NULL),
(1081, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:11:12', '2021-09-22 02:11:12', 'Sakib- Sabbir vie cliend(coffee 2)'),
(1082, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:12:05', '2021-09-22 02:12:05', 'Zafar-Taj vie Internet'),
(1083, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:13:11', '2021-09-22 02:13:11', 'Zafar-office Agrement'),
(1084, 1, 13, 4, NULL, NULL, NULL, 8, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:14:31', '2021-09-22 02:14:31', 'Taj vie-Kolom 1'),
(1085, 1, 13, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:15:25', '2021-09-22 02:15:25', 'Sakib-Hand tiso'),
(1086, 1, 13, 4, NULL, NULL, NULL, 55, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:16:19', '2021-09-22 02:16:19', 'Sakib-Tea Leaf'),
(1087, 1, 13, 4, NULL, NULL, NULL, 5, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:17:53', '2021-09-22 02:17:53', 'Taj vie-5 tk pabo'),
(1088, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:18:55', '2021-09-22 02:18:55', 'Sakib-Zafar'),
(1089, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 02:19:35', '2021-09-22 02:19:35', 'Sir'),
(1090, 1, 12, 4, NULL, NULL, NULL, 400, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-22 02:20:57', '2021-09-22 02:20:57', 'Zafar-Sakib'),
(1091, 5, 15, 1, NULL, NULL, NULL, 30000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-22 05:35:32', '2021-09-22 05:35:32', 'Niman xoom bazar'),
(1092, 3, 3, 1, NULL, NULL, NULL, 1020, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-22 06:12:09', '2021-09-22 06:12:09', 'sakib bkash'),
(1093, 1, 3, 4, NULL, NULL, NULL, 900, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-23 02:09:54', '2021-09-23 02:09:54', 'Zafar-Taj vie'),
(1094, 1, 3, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-23 02:11:39', '2021-09-23 02:11:39', 'Zafar-Taj vie(Doe)'),
(1095, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-23 02:12:18', '2021-09-23 02:12:18', 'Zafar-Taj Vie'),
(1096, 1, 3, 4, NULL, NULL, NULL, 135, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-23 02:14:14', '2021-09-23 02:14:14', 'Zafar-Taj Vie(coke-7up)'),
(1097, 1, 12, 4, NULL, NULL, NULL, 300, NULL, NULL, 0, 0, NULL, '2021-09-22', NULL, 'out', '2021-09-23 02:16:24', '2021-09-23 02:16:24', 'Sakib vole kora 300 tk desha'),
(1098, 5, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-09-24', NULL, 'out', '2021-09-24 00:20:43', '2021-09-24 00:58:52', '3 domain'),
(1099, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-09-24', NULL, 'out', '2021-09-24 01:13:40', '2021-09-24 01:13:40', 'hosting bill name'),
(1100, 3, 10, 1, NULL, NULL, NULL, 5100, NULL, NULL, 0, 0, NULL, '2021-09-24', NULL, 'out', '2021-09-24 01:14:19', '2021-09-24 01:14:19', 'oct 21 rong and clean'),
(1101, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-23', NULL, 'out', '2021-09-25 01:59:43', '2021-09-25 01:59:43', 'Sakib-Taj Vie'),
(1102, 1, 4, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-23', NULL, 'out', '2021-09-25 02:01:41', '2021-09-25 02:01:41', 'Sakib-Sabbir vie'),
(1103, 1, 3, 4, NULL, NULL, NULL, 250, NULL, NULL, 0, 0, NULL, '2021-09-23', NULL, 'out', '2021-09-25 02:06:36', '2021-09-25 02:06:36', 'Zafar+Taj+Enamul mustory(hotala nasta )'),
(1104, 1, 3, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-23', NULL, 'out', '2021-09-25 02:07:01', '2021-09-25 02:07:01', 'Sakib'),
(1105, 1, 13, 4, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-25 02:08:43', '2021-09-25 02:08:43', 'Zafar-Taj-Advance Payment(Enamul vie)'),
(1106, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-23', NULL, 'out', '2021-09-25 02:10:31', '2021-09-25 02:10:31', 'Zafar-office working'),
(1107, 1, 13, 4, NULL, NULL, NULL, 35, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-26 02:04:48', '2021-09-26 02:04:48', 'zafar-Imperial Manager(nasta-tea and fanta)'),
(1108, 1, 6, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-26 02:07:49', '2021-09-26 02:07:49', 'Zafar-Imperial'),
(1109, 1, 4, 4, NULL, NULL, NULL, 47, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-26 02:11:36', '2021-09-26 02:11:36', 'Sakib-Taj vie'),
(1110, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-26 02:12:29', '2021-09-26 02:12:29', 'Sakib-Zafar(Manager)'),
(1111, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-26 02:13:47', '2021-09-26 02:13:47', 'Sakib-Sabbir vie Cliend(Day to Day)'),
(1112, 1, 4, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-26 02:15:04', '2021-09-26 02:15:04', 'Sakib'),
(1113, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-25', NULL, 'out', '2021-09-26 02:15:38', '2021-09-26 02:15:38', 'Sakib'),
(1114, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:38:22', '2021-09-27 03:38:22', 'Sir'),
(1115, 1, 3, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:38:58', '2021-09-27 03:38:58', 'Sakib-Sir Coffee'),
(1116, 1, 4, 4, NULL, NULL, NULL, 48, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:39:41', '2021-09-27 03:39:41', 'Zafar-Sabbir Vie'),
(1117, 1, 6, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:40:15', '2021-09-27 03:40:15', 'Sir'),
(1118, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:40:37', '2021-09-27 03:40:37', 'Sakib'),
(1119, 1, 3, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:41:21', '2021-09-27 03:41:21', 'Sakib-Cliend Coffee'),
(1120, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:42:17', '2021-09-27 03:42:17', 'Sakib-while Powder'),
(1121, 1, 13, 4, NULL, NULL, NULL, 10, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:42:54', '2021-09-27 03:42:54', 'Sakib-Mase 5'),
(1122, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-26', NULL, 'out', '2021-09-27 03:48:21', '2021-09-27 03:48:21', 'Sakib-Vim Shaban'),
(1123, 3, 15, 1, NULL, NULL, NULL, 21000, NULL, NULL, 0, 0, NULL, '2021-09-27', NULL, 'out', '2021-09-29 08:41:48', '2021-09-29 08:41:48', 'niman for islamic shop'),
(1124, 5, 8, 1, NULL, NULL, NULL, 4100, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2021-09-29 08:42:31', '2021-09-29 08:42:31', '50 usd buy from niman'),
(1125, 1, 10, 1, NULL, NULL, NULL, 42000, NULL, NULL, 0, 0, NULL, '2021-09-21', NULL, 'out', '2021-09-29 08:45:26', '2021-09-29 08:45:26', 'New office rent advance'),
(1126, 1, 10, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2021-09-29 08:46:45', '2021-09-29 08:46:45', 'office rent october (rong and clean)'),
(1127, 1, 1, 10, 929, 86, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'in', '2021-09-29 11:09:56', '2021-09-29 11:09:56', NULL),
(1128, 1, 1, 10, 929, 87, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'in', '2021-09-29 11:14:56', '2021-09-29 11:14:56', NULL),
(1129, 5, 15, 1, NULL, NULL, NULL, 60000, NULL, NULL, 0, 0, NULL, '2021-10-04', NULL, 'out', '2021-10-04 07:27:10', '2021-10-04 07:27:10', 'niman payment for islamicshop and xoom bazar'),
(1130, 1, 1, 5, 487, 88, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-10-07', NULL, 'in', '2021-10-05 07:50:22', '2021-10-05 07:50:22', NULL),
(1131, 5, 1, 5, 599, 89, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-10-05', NULL, 'in', '2021-10-05 08:00:59', '2021-10-05 08:00:59', NULL),
(1132, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-10-05', NULL, 'out', '2021-10-05 13:15:09', '2021-10-05 13:15:09', '4 domain'),
(1133, 3, 12, 1, NULL, NULL, NULL, 1500, NULL, NULL, 0, 0, NULL, '2021-10-14', NULL, 'out', '2021-10-14 09:40:28', '2021-10-14 09:40:28', 'internet bill carnival'),
(1134, 1, 1, 5, 938, 91, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-10-16', NULL, 'in', '2021-10-16 08:25:33', '2021-10-16 08:25:33', NULL),
(1135, 5, 4, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-10-18', NULL, 'out', '2021-10-18 06:36:34', '2021-10-18 06:36:34', 'call center bill'),
(1136, 6, 1, 10, 946, 90, NULL, 140000, NULL, NULL, 0, 0, NULL, '2021-10-21', NULL, 'in', '2021-10-19 06:14:03', '2021-10-19 06:14:03', NULL),
(1137, 5, 7, 1, NULL, NULL, NULL, 13000, NULL, NULL, 0, 0, NULL, '2021-10-24', NULL, 'out', '2021-10-24 12:22:24', '2021-10-24 12:22:24', 'name and sky server and domain'),
(1138, 5, 4, 1, NULL, NULL, NULL, 420, NULL, NULL, 0, 0, NULL, '2021-10-25', NULL, 'out', '2021-10-25 13:18:08', '2021-10-25 13:18:08', 'call center'),
(1139, 5, 1, 4, 961, 92, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-10-26', NULL, 'in', '2021-10-26 06:37:30', '2021-10-26 06:37:30', NULL),
(1140, 5, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-10-31', NULL, 'out', '2021-11-01 09:42:40', '2021-11-01 09:42:40', 'digital ocean server payment'),
(1141, 3, 1, 5, 938, 91, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-02-10', NULL, 'in', '2021-11-02 04:33:19', '2021-11-02 04:33:19', NULL),
(1142, 3, 15, 1, NULL, NULL, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-11-02', NULL, 'out', '2021-11-02 06:49:17', '2021-11-02 06:49:17', 'niman'),
(1143, 1, 13, 4, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:43:54', '2021-11-03 03:43:54', 'Zafar-Sir'),
(1144, 1, 13, 4, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:46:30', '2021-11-03 03:46:30', 'Rong Mastory'),
(1145, 1, 6, 4, NULL, NULL, NULL, 3200, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:47:48', '2021-11-03 03:47:48', 'Van vara'),
(1146, 1, 3, 4, NULL, NULL, NULL, 1160, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:48:55', '2021-11-03 03:48:55', 'All employer diner'),
(1147, 1, 3, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:49:41', '2021-11-03 03:49:41', 'Sakib'),
(1148, 1, 6, 4, NULL, NULL, NULL, 130, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:50:41', '2021-11-03 03:50:41', 'office change'),
(1149, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:52:00', '2021-11-03 03:52:00', 'office change'),
(1150, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:52:54', '2021-11-03 03:52:54', 'Sakib-Coffee'),
(1151, 1, 3, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:54:21', '2021-11-03 03:54:21', 'van vie'),
(1152, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:55:05', '2021-11-03 03:55:05', 'Sakib'),
(1153, 1, 13, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:56:22', '2021-11-03 03:56:22', 'Sakib-Cloth Brash'),
(1154, 1, 13, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 03:58:48', '2021-11-03 03:58:48', 'Sakib-Tiso 3'),
(1155, 1, 13, 4, NULL, NULL, NULL, 30, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:00:04', '2021-11-03 04:00:04', 'Sakib-Shaban 3'),
(1156, 1, 13, 4, NULL, NULL, NULL, 60, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:01:20', '2021-11-03 04:01:20', 'Sakib - Water'),
(1157, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:02:46', '2021-11-03 04:02:46', 'Zafar Lunch'),
(1158, 1, 3, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:04:19', '2021-11-03 04:04:19', 'Mastory tea'),
(1159, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:05:10', '2021-11-03 04:05:10', 'Sakib - Bank'),
(1160, 1, 13, 4, NULL, NULL, NULL, 25, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:06:38', '2021-11-03 04:06:38', 'Zafar- Imperial manager nasta'),
(1161, 1, 13, 4, NULL, NULL, NULL, 7000, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:07:49', '2021-11-03 04:07:49', 'Imtiaj vie'),
(1162, 1, 6, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-28', NULL, 'out', '2021-11-03 04:08:35', '2021-11-03 04:08:35', 'Sakib'),
(1163, 3, 1, 4, 995, 98, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-11-08', NULL, 'in', '2021-11-08 11:39:52', '2021-11-08 11:39:52', NULL),
(1164, 5, 8, 1, NULL, NULL, NULL, 6330, NULL, NULL, 0, 0, NULL, '2021-11-08', NULL, 'out', '2021-11-08 15:13:42', '2021-11-08 15:13:42', 'Usd from niman'),
(1165, 5, 10, 1, NULL, NULL, NULL, 21000, NULL, NULL, 0, 0, NULL, '2021-11-07', NULL, 'out', '2021-11-08 15:20:01', '2021-11-08 15:20:01', '07 Nov 21'),
(1166, 1, 12, 1, NULL, NULL, NULL, 5655, NULL, NULL, 0, 0, NULL, '2021-11-08', NULL, 'out', '2021-11-08 15:28:19', '2021-11-08 15:28:19', 'Office service charge'),
(1167, 1, 12, 1, NULL, NULL, NULL, 685, NULL, NULL, 0, 0, NULL, '2021-11-08', NULL, 'out', '2021-11-08 15:29:00', '2021-11-08 15:29:00', 'Electric bill 10tk service charge'),
(1168, 5, 4, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-11-10', NULL, 'out', '2021-11-10 10:01:15', '2021-11-10 10:01:15', 'call center and md'),
(1169, 3, 1, 5, 962, 100, NULL, 21000, NULL, NULL, 0, 0, NULL, '2021-11-10', NULL, 'in', '2021-11-10 11:38:48', '2021-11-10 11:38:48', NULL),
(1170, 3, 12, 1, NULL, NULL, NULL, 1499, NULL, NULL, 0, 0, NULL, '2021-11-13', NULL, 'out', '2021-11-13 08:59:54', '2021-11-13 08:59:54', 'Internet Bill Carnival'),
(1171, 3, 1, 12, 866, 101, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-11-21', NULL, 'in', '2021-11-21 13:00:36', '2021-11-21 13:00:36', NULL),
(1172, 1, 1, 11, 1025, 102, NULL, 7200, NULL, NULL, 0, 0, NULL, '2021-11-22', NULL, 'in', '2021-11-22 06:11:25', '2021-11-22 06:11:25', NULL),
(1173, 5, 1, 5, 1018, 103, NULL, 76800, NULL, NULL, 0, 0, NULL, '2021-11-22', NULL, 'in', '2021-11-22 09:30:39', '2021-11-22 09:30:39', NULL),
(1174, 3, 4, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2021-11-22', NULL, 'out', '2021-11-22 13:52:14', '2021-11-22 13:52:14', 'call center'),
(1175, 5, 9, 1, NULL, NULL, NULL, 12000, NULL, NULL, 0, 0, NULL, '2021-11-22', NULL, 'out', '2021-11-22 13:55:01', '2021-11-22 13:55:01', '150 USD Niman'),
(1176, 5, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-11-22', NULL, 'out', '2021-11-22 13:59:56', '2021-11-22 13:59:56', 'Sky Hosting'),
(1177, 5, 7, 1, NULL, NULL, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-11-22', NULL, 'out', '2021-11-22 14:31:08', '2021-11-22 14:31:08', '6 domain renew'),
(1178, 6, 1, 5, 1022, 104, NULL, 30000, NULL, NULL, 0, 0, NULL, '2021-11-23', NULL, 'in', '2021-11-23 05:38:59', '2021-11-23 05:38:59', NULL),
(1179, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-11-29', NULL, 'out', '2021-11-29 11:10:16', '2021-11-29 12:37:04', '3 domain'),
(1180, 5, 4, 1, NULL, NULL, NULL, 188, NULL, NULL, 0, 0, NULL, '2021-11-29', NULL, 'out', '2021-11-29 11:11:34', '2021-11-29 11:11:34', 'call center and sayem'),
(1181, 1, 1, 1, 1042, 105, NULL, 20000, NULL, NULL, 0, 0, NULL, '2021-11-29', NULL, 'in', '2021-11-29 13:19:05', '2021-11-29 13:19:05', NULL),
(1182, 5, 7, 1, NULL, NULL, NULL, 4150, NULL, NULL, 0, 0, NULL, '2021-11-30', NULL, 'out', '2021-11-30 11:01:57', '2021-11-30 11:01:57', '50 Usd buy from niman'),
(1183, 2, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-11-30', NULL, 'out', '2021-11-30 11:03:09', '2021-11-30 11:03:09', 'DigitalOscan VPS payment by credit card'),
(1184, 5, 4, 1, NULL, NULL, NULL, 210, NULL, NULL, 0, 0, NULL, '2021-11-30', NULL, 'out', '2021-11-30 11:08:25', '2021-11-30 11:08:25', 'call center and sabbir, sayem'),
(1185, 5, 1, 5, 1115, 107, NULL, 8000, NULL, NULL, 0, 0, NULL, '2021-12-02', NULL, 'in', '2021-12-02 05:57:37', '2021-12-02 05:57:37', NULL),
(1186, 3, 1, 5, 962, 100, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-12-05', NULL, 'in', '2021-12-05 05:29:02', '2021-12-05 05:29:02', NULL),
(1187, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2021-12-07', NULL, 'out', '2021-12-07 10:01:11', '2021-12-07 10:01:11', '2 domain'),
(1188, 2, 9, 1, NULL, NULL, NULL, 6000, NULL, NULL, 0, 0, NULL, '2021-12-07', NULL, 'out', '2021-12-07 10:01:37', '2021-12-07 10:01:37', 'usd from niman'),
(1189, 1, 10, 1, NULL, NULL, NULL, 21000, NULL, NULL, 0, 0, NULL, '2021-12-07', NULL, 'out', '2021-12-07 14:14:41', '2021-12-07 14:14:41', 'rent dec 2021'),
(1190, 5, 8, 1, NULL, NULL, NULL, 2500, NULL, NULL, 0, 0, NULL, '2021-12-11', NULL, 'out', '2021-12-11 14:45:32', '2021-12-11 14:45:32', 'usd from niman'),
(1191, 1, 1, 11, 1142, 108, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-12-14', NULL, 'in', '2021-12-14 11:03:33', '2021-12-14 11:03:33', NULL),
(1192, 6, 1, 5, 885, 81, NULL, 23000, NULL, NULL, 0, 0, NULL, '2021-09-16', NULL, 'in', '2021-12-15 11:46:25', '2021-12-15 11:46:25', NULL),
(1193, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-12-19', NULL, 'out', '2021-12-19 07:31:48', '2021-12-19 07:31:48', 'call center'),
(1194, 5, 8, 1, NULL, NULL, NULL, 8300, NULL, NULL, 0, 0, NULL, '2021-12-19', NULL, 'out', '2021-12-19 07:32:40', '2021-12-19 07:32:40', 'usd from niman'),
(1195, 5, 7, 1, NULL, NULL, NULL, 13000, NULL, NULL, 0, 0, NULL, '2021-12-19', NULL, 'out', '2021-12-19 07:33:33', '2021-12-19 07:33:33', 'server ad domain renew'),
(1196, 2, 9, 1, NULL, NULL, NULL, 8300, NULL, NULL, 0, 0, NULL, '2021-12-19', NULL, 'out', '2021-12-19 07:33:59', '2021-12-19 07:33:59', 'usd from niman'),
(1197, 3, 1, 5, 1154, 111, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-12-22', NULL, 'in', '2021-12-26 06:09:20', '2021-12-26 06:09:20', NULL),
(1198, 3, 1, 11, 1025, 102, NULL, 4800, NULL, NULL, 0, 0, NULL, '2021-12-28', NULL, 'in', '2021-12-28 09:58:05', '2021-12-28 09:58:05', NULL),
(1199, 5, 15, 1, NULL, NULL, NULL, 10000, NULL, NULL, 0, 0, NULL, '2021-12-29', NULL, 'out', '2021-12-29 10:31:39', '2021-12-29 10:31:39', 'app develop'),
(1200, 5, 15, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2021-12-29', NULL, 'out', '2021-12-29 10:32:19', '2021-12-29 10:32:19', 'seo bill'),
(1201, 3, 3, 1, NULL, NULL, NULL, 714, NULL, NULL, 0, 0, NULL, '2021-12-29', NULL, 'out', '2021-12-29 10:33:10', '2021-12-29 10:33:10', 'sakib'),
(1202, 3, 4, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2021-12-29', NULL, 'out', '2021-12-29 10:33:30', '2021-12-29 10:33:30', 'call center and others'),
(1203, 3, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2021-12-29', NULL, 'out', '2021-12-29 11:25:32', '2021-12-29 11:25:32', '4 domain'),
(1204, 1, 1, 5, 875, 76, NULL, 8000, NULL, NULL, 0, 0, NULL, '2021-12-29', NULL, 'in', '2021-12-29 12:12:29', '2021-12-29 12:12:29', NULL),
(1205, 2, 7, 1, NULL, NULL, NULL, 4340, NULL, NULL, 0, 0, NULL, '2021-12-30', NULL, 'out', '2022-01-01 09:36:53', '2022-01-01 09:37:23', 'digitalocean bill'),
(1206, 5, 4, 1, NULL, NULL, NULL, 188, NULL, NULL, 0, 0, NULL, '2022-01-01', NULL, 'out', '2022-01-01 09:57:06', '2022-01-01 09:57:06', 'call center'),
(1207, 3, 1, 5, 880, 112, NULL, 9000, NULL, NULL, 0, 0, NULL, '2021-09-05', NULL, 'in', '2022-01-02 03:59:40', '2022-01-02 03:59:40', NULL),
(1208, 3, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2022-01-04', NULL, 'out', '2022-01-04 11:38:00', '2022-01-04 11:38:00', 'sakib'),
(1209, 5, 4, 1, NULL, NULL, NULL, 94, NULL, NULL, 0, 0, NULL, '2022-01-04', NULL, 'out', '2022-01-04 11:44:03', '2022-01-04 11:44:03', 'call center'),
(1210, 5, 1, 5, 1187, 115, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-01-05', NULL, 'in', '2022-01-05 11:01:12', '2022-01-05 11:01:12', NULL),
(1211, 2, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-01-05', NULL, 'out', '2022-01-05 20:31:59', '2022-01-05 20:31:59', '2 domain'),
(1212, 2, 4, 1, NULL, NULL, NULL, 94, NULL, NULL, 0, 0, NULL, '2022-01-05', NULL, 'out', '2022-01-05 20:32:28', '2022-01-05 20:32:28', 'taj and zafar bill'),
(1213, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-01-08', NULL, 'out', '2022-01-08 12:22:42', '2022-01-08 12:22:42', NULL),
(1214, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-01-08', NULL, 'out', '2022-01-08 15:03:21', '2022-01-08 15:03:21', '2 domain'),
(1215, 5, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-01-08', NULL, 'out', '2022-01-08 15:03:48', '2022-01-08 15:03:48', NULL),
(1216, 5, 4, 1, NULL, NULL, NULL, 94, NULL, NULL, 0, 0, NULL, '2022-01-08', NULL, 'out', '2022-01-08 15:04:09', '2022-01-08 15:04:09', 'call center'),
(1217, 5, 1, 5, 851, 73, NULL, 30000, NULL, NULL, 0, 0, NULL, '2021-12-23', NULL, 'in', '2022-01-15 08:04:26', '2022-01-15 08:04:26', NULL),
(1218, 3, 3, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-01-17', NULL, 'out', '2022-01-17 19:13:47', '2022-01-17 19:13:47', 'sakib'),
(1219, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-01-17', NULL, 'out', '2022-01-17 19:14:11', '2022-01-17 19:14:11', '2 domain'),
(1220, 3, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2022-01-16', NULL, 'out', '2022-01-17 19:15:43', '2022-01-17 19:15:43', 'call center'),
(1221, 3, 1, 5, 499, 117, NULL, 3000, NULL, NULL, 0, 0, NULL, '2022-01-17', NULL, 'in', '2022-01-18 10:11:36', '2022-01-18 10:11:36', NULL),
(1222, 5, 15, 1, NULL, NULL, NULL, 5330, NULL, NULL, 0, 0, NULL, '2022-01-19', NULL, 'out', '2022-01-19 08:22:03', '2022-01-19 08:22:03', 'usd bill niman'),
(1223, 5, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2022-01-19', NULL, 'out', '2022-01-19 08:25:03', '2022-01-19 08:25:03', '3 domain'),
(1224, 5, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-01-19', NULL, 'out', '2022-01-19 08:31:41', '2022-01-19 08:31:41', 'sky hosting'),
(1225, 1, 1, 5, 931, 110, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-01-19', NULL, 'in', '2022-01-20 09:05:01', '2022-01-20 09:05:01', NULL),
(1226, 6, 1, 5, 1204, 118, NULL, 25000, NULL, NULL, 0, 0, NULL, '2022-01-22', NULL, 'in', '2022-01-22 07:23:28', '2022-01-22 07:23:28', NULL),
(1227, 5, 1, 5, 1186, 119, NULL, 100000, NULL, NULL, 0, 0, NULL, '2022-01-23', NULL, 'in', '2022-01-24 05:01:55', '2022-01-24 05:01:55', NULL),
(1228, 1, 1, 4, 948, 120, NULL, 3000, NULL, NULL, 0, 0, NULL, '2022-01-25', NULL, 'in', '2022-01-25 12:08:19', '2022-01-25 12:08:19', NULL),
(1229, 1, 1, 4, 948, 120, NULL, 7000, NULL, NULL, 0, 0, NULL, '2021-10-11', NULL, 'in', '2022-01-25 12:13:27', '2022-01-25 12:13:27', NULL),
(1230, 6, 14, 1, NULL, NULL, NULL, 10840, NULL, NULL, 0, 0, NULL, '2022-01-26', NULL, 'out', '2022-01-26 11:18:23', '2022-01-26 11:18:23', 'Backdrop and visiting card purchase'),
(1231, 5, 7, 1, NULL, NULL, NULL, 10280, NULL, NULL, 0, 0, NULL, '2022-01-26', NULL, 'out', '2022-01-26 11:57:35', '2022-01-26 11:57:35', 'usd from niman'),
(1232, 5, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2022-01-26', NULL, 'out', '2022-01-26 11:58:12', '2022-01-26 11:58:12', 'call center'),
(1233, 3, 1, 4, 1207, 121, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-01-27', NULL, 'in', '2022-01-27 03:51:47', '2022-01-27 03:51:47', NULL),
(1234, 5, 1, 5, 1203, 122, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-01-27', NULL, 'in', '2022-01-30 09:34:36', '2022-01-30 09:34:36', NULL),
(1235, 5, 1, 5, 1115, 107, NULL, 4000, NULL, NULL, 0, 0, NULL, '2022-01-31', NULL, 'in', '2022-01-31 11:44:48', '2022-01-31 11:44:48', NULL),
(1236, 3, 1, 4, 1216, 123, NULL, 5500, NULL, NULL, 0, 0, NULL, '2022-01-31', NULL, 'in', '2022-01-31 12:39:29', '2022-01-31 12:39:29', NULL),
(1237, 5, 1, 5, 1115, 107, NULL, 8000, NULL, NULL, 0, 0, NULL, '2022-02-02', NULL, 'in', '2022-02-02 12:43:36', '2022-02-02 12:43:36', NULL),
(1238, 3, 3, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-02-02', NULL, 'out', '2022-02-02 12:54:03', '2022-02-02 12:54:03', 'sakib'),
(1239, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-02-02', NULL, 'out', '2022-02-02 12:54:31', '2022-02-02 12:54:31', 'domain org'),
(1240, 1, 1, 5, 10, 124, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-01-07', NULL, 'in', '2022-02-08 04:41:58', '2022-02-08 04:41:58', NULL),
(1241, 1, 1, 5, 10, 126, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-01-07', NULL, 'in', '2022-02-08 04:53:45', '2022-02-08 04:53:45', NULL),
(1242, 1, 1, 4, 948, 128, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-02-08', NULL, 'in', '2022-02-08 05:58:12', '2022-02-08 05:58:12', NULL),
(1243, 6, 1, 5, 1206, 125, NULL, 12500, NULL, NULL, 0, 0, NULL, '2022-02-08', NULL, 'in', '2022-02-08 09:48:55', '2022-02-08 09:48:55', NULL),
(1244, 6, 1, 5, 1249, 129, NULL, 16000, NULL, NULL, 0, 0, NULL, '2022-02-09', NULL, 'in', '2022-02-09 05:24:36', '2022-02-09 05:24:36', NULL),
(1245, 2, 9, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-02-16', NULL, 'out', '2022-02-16 10:29:03', '2022-02-16 10:29:03', 'niman usd'),
(1246, 2, 7, 1, NULL, NULL, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-02-16', NULL, 'out', '2022-02-16 10:29:31', '2022-02-16 10:29:31', 'niman usd'),
(1247, 5, 4, 1, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2022-02-16', NULL, 'out', '2022-02-16 11:46:53', '2022-02-16 11:46:53', 'cal centre'),
(1248, 3, 1, 5, 600, 130, NULL, 18000, NULL, NULL, 0, 0, NULL, '2021-08-18', NULL, 'in', '2022-02-17 05:56:45', '2022-02-17 05:56:45', NULL),
(1249, 2, 8, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2022-02-20', NULL, 'out', '2022-02-20 18:53:38', '2022-02-20 18:53:38', 'usd from niman'),
(1250, 2, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-02-22', NULL, 'out', '2022-02-22 09:08:23', '2022-02-22 09:08:23', '2 domain'),
(1251, 5, 7, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2022-02-24', NULL, 'out', '2022-02-24 07:51:31', '2022-02-24 07:51:31', '4 domain renew'),
(1252, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-02-24', NULL, 'out', '2022-02-24 19:14:34', '2022-02-24 19:14:34', '2 domain'),
(1253, 5, 9, 1, NULL, NULL, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-02-27', NULL, 'out', '2022-02-27 15:00:31', '2022-02-27 15:00:31', 'usd from niman'),
(1254, 1, 14, 4, NULL, NULL, NULL, 640, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 14:51:38', '2022-02-28 14:51:38', 'Electric'),
(1255, 1, 13, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 14:57:07', '2022-02-28 14:57:07', 'Nahib'),
(1256, 1, 14, 4, NULL, NULL, NULL, 650, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 14:58:45', '2022-02-28 14:58:45', 'Rohman Electronic'),
(1257, 1, 13, 4, NULL, NULL, NULL, 20, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:00:00', '2022-02-28 15:00:00', 'Tea'),
(1258, 1, 14, 4, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:01:28', '2022-02-28 15:01:28', 'Sakib-Cable'),
(1259, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:02:26', '2022-02-28 15:02:26', 'Sakib-Nasta'),
(1260, 1, 13, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:04:56', '2022-02-28 15:04:56', 'Taj internet'),
(1261, 1, 6, 4, NULL, NULL, NULL, 100, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:05:52', '2022-02-28 15:05:52', 'Taj lon disa'),
(1262, 1, 13, 4, NULL, NULL, NULL, 50, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:07:14', '2022-02-28 15:07:14', 'Imtiaj lon'),
(1263, 1, 3, 4, NULL, NULL, NULL, 2700, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:09:12', '2022-02-28 15:09:12', 'Fan 56\" BRB'),
(1264, 1, 13, 4, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:10:23', '2022-02-28 15:10:23', 'click-56\" Fan'),
(1265, 1, 13, 4, NULL, NULL, NULL, 5100, NULL, NULL, 0, 0, NULL, '2021-09-29', NULL, 'out', '2022-02-28 15:12:02', '2022-02-28 15:12:02', 'Click 48\" Fan 2'),
(1266, 1, 13, 4, NULL, NULL, NULL, 75, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:16:40', '2022-02-28 15:16:40', 'Sakib- Water'),
(1267, 1, 13, 4, NULL, NULL, NULL, 150, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:19:11', '2022-02-28 15:19:11', 'Sabbir vie internet'),
(1268, 1, 13, 4, NULL, NULL, NULL, 540, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:20:48', '2022-02-28 15:20:48', 'Internet tar'),
(1269, 1, 13, 4, NULL, NULL, NULL, 600, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:21:33', '2022-02-28 15:21:33', 'Sir'),
(1270, 1, 3, 4, NULL, NULL, NULL, 80, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:22:22', '2022-02-28 15:22:22', 'Sakib- Nasta'),
(1271, 1, 13, 4, NULL, NULL, NULL, 40, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:23:29', '2022-02-28 15:23:29', 'Escrop'),
(1272, 1, 13, 4, NULL, NULL, NULL, 2500, NULL, NULL, 0, 0, NULL, '2021-09-30', NULL, 'out', '2022-02-28 15:25:42', '2022-02-28 15:25:42', 'Asi mustory'),
(1273, 2, 9, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-02-28', NULL, 'out', '2022-03-01 11:52:04', '2022-03-01 11:52:04', 'usd from niman'),
(1274, 5, 1, 5, 1328, 134, NULL, 17000, NULL, NULL, 0, 0, NULL, '2022-03-02', NULL, 'in', '2022-03-02 05:34:54', '2022-03-02 05:34:54', NULL),
(1275, 5, 8, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-03-05', NULL, 'out', '2022-03-05 15:40:45', '2022-03-05 15:40:45', 'usd from niman'),
(1276, 2, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-03-05', NULL, 'out', '2022-03-05 17:39:14', '2022-03-05 17:39:14', '1 domain'),
(1277, 2, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-03-05', NULL, 'out', '2022-03-05 17:42:04', '2022-03-05 17:42:04', 'digitaloscan credit card'),
(1278, 5, 1, 5, 898, 135, NULL, 31500, NULL, NULL, 0, 0, NULL, '2022-03-06', NULL, 'in', '2022-03-06 07:36:28', '2022-03-06 07:36:28', NULL),
(1279, 2, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-03-09', NULL, 'out', '2022-03-09 07:56:28', '2022-03-09 07:56:28', '1 domain'),
(1280, 3, 4, 1, NULL, NULL, NULL, 200, NULL, NULL, 0, 0, NULL, '2022-03-09', NULL, 'out', '2022-03-09 07:57:01', '2022-03-09 07:57:01', 'company and callcenter'),
(1281, 6, 1, 14, 1363, 137, NULL, 18000, NULL, NULL, 0, 0, NULL, '2022-03-10', NULL, 'in', '2022-03-10 07:40:46', '2022-03-10 07:40:46', NULL),
(1282, 2, 14, 1, NULL, NULL, NULL, 17000, NULL, NULL, 0, 0, NULL, '2022-03-12', NULL, 'out', '2022-03-12 09:22:30', '2022-03-12 09:22:30', 'Office new laptop, 120GB SSD, power cable, vga cable, 2 ssDD connector cable'),
(1283, 2, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-03-12', NULL, 'out', '2022-03-12 09:23:45', '2022-03-12 09:23:45', '1 domain'),
(1284, 3, 3, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-03-13', NULL, 'out', '2022-03-13 06:08:44', '2022-03-13 06:08:44', 'sakib'),
(1285, 2, 8, 1, NULL, NULL, NULL, 4202, NULL, NULL, 0, 0, NULL, '2022-03-13', NULL, 'out', '2022-03-13 06:41:09', '2022-03-13 06:41:09', 'usd from niman'),
(1286, 3, 3, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-03-23', NULL, 'out', '2022-03-23 18:29:29', '2022-03-23 18:29:29', 'bkash sakib 15 march to 24 march'),
(1287, 5, 4, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-03-21', NULL, 'out', '2022-03-23 18:39:09', '2022-03-23 18:39:09', 'call center'),
(1288, 3, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2022-03-24', NULL, 'out', '2022-03-24 10:09:02', '2022-03-24 10:09:02', 'sakib'),
(1289, 5, 1, 5, 124, 139, NULL, 35700, NULL, NULL, 0, 0, NULL, '2022-03-20', NULL, 'in', '2022-03-29 13:05:17', '2022-03-29 13:05:17', NULL),
(1290, 3, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2022-03-30', NULL, 'out', '2022-03-30 04:45:50', '2022-03-30 04:45:50', 'sakib'),
(1291, 5, 4, 1, NULL, NULL, NULL, 84, NULL, NULL, 0, 0, NULL, '2022-03-30', NULL, 'out', '2022-03-30 04:46:37', '2022-03-30 04:46:37', 'call center bill'),
(1292, 1, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2022-03-31', NULL, 'out', '2022-03-31 09:59:33', '2022-03-31 09:59:33', 'sakib'),
(1293, 1, 3, 1, NULL, NULL, NULL, 4920, NULL, NULL, 0, 0, NULL, '2022-03-31', NULL, 'out', '2022-03-31 13:24:34', '2022-03-31 13:24:34', 'usd from niman'),
(1294, 3, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2022-03-31', NULL, 'out', '2022-03-31 13:41:54', '2022-03-31 13:41:54', 'sakib'),
(1295, 2, 1, 4, 1455, 141, NULL, 13200, NULL, NULL, 0, 0, NULL, '2022-04-02', NULL, 'in', '2022-04-02 06:57:16', '2022-04-02 06:57:16', NULL),
(1296, 1, 3, 1, NULL, NULL, NULL, 510, NULL, NULL, 0, 0, NULL, '2022-04-03', NULL, 'out', '2022-04-03 05:32:46', '2022-04-03 05:32:46', 'sakib'),
(1297, 1, 1, 5, 1243, 142, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-02-05', NULL, 'in', '2022-04-04 03:55:36', '2022-04-04 03:55:36', NULL),
(1298, 5, 1, 5, 600, 130, NULL, 11000, NULL, NULL, 0, 0, NULL, '2022-04-03', NULL, 'in', '2022-04-04 06:22:18', '2022-04-04 06:22:18', NULL),
(1299, 6, 10, 1, NULL, NULL, NULL, 30000, NULL, NULL, 0, 0, NULL, '2022-04-09', NULL, 'out', '2022-04-09 09:18:36', '2022-04-09 09:18:36', 'Office rent and service charge'),
(1300, 6, 11, 1, NULL, NULL, NULL, 110000, NULL, NULL, 0, 0, NULL, '2022-04-09', NULL, 'out', '2022-04-09 13:47:48', '2022-04-09 13:47:48', NULL),
(1301, 3, 1, 4, 1196, 143, NULL, 7500, NULL, NULL, 0, 0, NULL, '2022-04-07', NULL, 'in', '2022-04-11 04:16:56', '2022-04-11 04:16:56', NULL),
(1302, 3, 1, 11, 1463, 144, NULL, 20400, NULL, NULL, 0, 0, NULL, '2022-04-10', NULL, 'in', '2022-04-11 08:32:31', '2022-04-11 08:32:31', NULL),
(1303, 3, 1, 11, 1439, 145, NULL, 20400, NULL, NULL, 0, 0, NULL, '2022-04-10', NULL, 'in', '2022-04-11 08:35:43', '2022-04-11 08:35:43', NULL),
(1304, 1, 14, 1, NULL, NULL, NULL, 15000, NULL, NULL, 0, 0, NULL, '2022-04-10', NULL, 'out', '2022-04-11 09:32:49', '2022-04-11 09:32:49', 'Lapto servicing and computer purchase'),
(1305, 3, 1, 5, 1428, 146, NULL, 12000, NULL, NULL, 0, 0, NULL, '2022-04-12', NULL, 'in', '2022-04-12 08:06:28', '2022-04-12 08:06:28', NULL),
(1306, 5, 1, 5, 1306, 147, NULL, 18000, NULL, NULL, 0, 0, NULL, '2022-03-17', NULL, 'in', '2022-04-12 08:08:50', '2022-04-12 08:08:50', NULL),
(1308, 1, 3, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-04-14', NULL, 'out', '2022-04-17 16:15:22', '2022-04-17 16:15:22', NULL),
(1309, 6, 3, 1, NULL, NULL, NULL, 4000, NULL, NULL, 0, 0, NULL, '2022-04-18', NULL, 'out', '2022-04-17 16:26:56', '2022-04-17 16:26:56', 'office iftari'),
(1310, 1, 1, 5, 1387, 149, NULL, 50000, NULL, NULL, 0, 0, NULL, '2022-04-17', NULL, 'in', '2022-04-18 08:01:46', '2022-04-18 08:01:46', NULL),
(1311, 5, 1, 5, 1187, 115, NULL, 9000, NULL, NULL, 0, 0, NULL, '2022-04-20', NULL, 'in', '2022-04-20 06:32:41', '2022-04-20 06:32:41', NULL),
(1312, 5, 1, 5, 1187, 150, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-02-05', NULL, 'in', '2022-04-20 06:39:16', '2022-04-20 06:39:16', NULL),
(1313, 3, 15, 1, NULL, NULL, NULL, 7000, NULL, NULL, 0, 0, NULL, '2022-04-20', NULL, 'out', '2022-04-20 14:56:36', '2022-04-20 14:56:36', 'niman usd'),
(1314, 3, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-04-20', NULL, 'out', '2022-04-20 14:57:02', '2022-04-20 14:57:02', 'sky hosting usd'),
(1315, 3, 4, 1, NULL, NULL, NULL, 400, NULL, NULL, 0, 0, NULL, '2022-04-20', NULL, 'out', '2022-04-20 14:57:27', '2022-04-20 14:57:27', 'call center and others'),
(1316, 5, 8, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2022-04-21', NULL, 'out', '2022-04-21 09:46:56', '2022-04-21 09:46:56', 'usd from niman'),
(1317, 3, 3, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-04-23', NULL, 'out', '2022-04-23 06:40:34', '2022-04-23 06:40:34', 'sakib'),
(1318, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-04-23', NULL, 'out', '2022-04-23 08:59:29', '2022-04-23 08:59:29', 'name server renew.'),
(1319, 3, 1, 4, 1455, 141, NULL, 8800, NULL, NULL, 0, 0, NULL, '2022-04-24', NULL, 'in', '2022-04-24 04:43:20', '2022-04-24 04:43:20', NULL),
(1320, 1, 1, 5, 1021, 151, NULL, 15000, NULL, NULL, 0, 0, NULL, '2021-11-21', NULL, 'in', '2022-04-24 06:21:23', '2022-04-24 06:21:23', NULL),
(1321, 5, 1, 5, 1328, 134, NULL, 12000, NULL, NULL, 0, 0, NULL, '2022-04-24', NULL, 'in', '2022-04-24 06:25:21', '2022-04-24 06:25:21', NULL),
(1322, 1, 1, 5, 823, 153, NULL, 21000, NULL, NULL, 0, 0, NULL, '2021-08-15', NULL, 'in', '2022-04-25 04:51:38', '2022-04-25 04:51:38', NULL),
(1323, 1, 1, 5, 1396, 154, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-04-27', NULL, 'in', '2022-04-27 07:27:03', '2022-04-27 07:27:03', NULL),
(1324, 1, 11, 1, NULL, NULL, NULL, 6000, NULL, NULL, 0, 0, NULL, '2022-04-27', NULL, 'out', '2022-04-27 08:15:09', '2022-04-27 08:15:09', 'Jugol Kumar'),
(1325, 2, 8, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-05-05', NULL, 'out', '2022-05-05 19:12:34', '2022-05-05 19:12:34', NULL),
(1326, 1, 11, 1, NULL, NULL, NULL, 150000, NULL, NULL, 0, 0, NULL, '2022-05-05', NULL, 'out', '2022-05-05 19:13:16', '2022-05-05 19:13:16', NULL),
(1327, 2, 8, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-05-07', NULL, 'out', '2022-05-07 09:20:59', '2022-05-07 09:20:59', 'niman'),
(1328, 5, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-05-09', NULL, 'out', '2022-05-09 09:54:23', '2022-05-09 09:54:23', 'dot bd domain'),
(1329, 3, 3, 1, NULL, NULL, NULL, 500, NULL, NULL, 0, 0, NULL, '2022-05-09', NULL, 'out', '2022-05-09 12:54:31', '2022-05-09 12:54:31', 'sakib'),
(1330, 2, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-05-10', NULL, 'out', '2022-05-10 14:19:49', '2022-05-10 14:19:49', '1 domain'),
(1331, 2, 1, 4, 1489, 155, NULL, 15000, NULL, NULL, 0, 0, NULL, '2022-04-25', NULL, 'in', '2022-05-15 05:09:47', '2022-05-15 05:09:47', NULL),
(1332, 5, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-05-16', NULL, 'out', '2022-05-16 06:09:21', '2022-05-16 06:09:21', 'domain'),
(1333, 1, 1, 4, 906, 156, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-05-16', NULL, 'in', '2022-05-16 11:38:27', '2022-05-16 11:38:27', NULL),
(1334, 1, 3, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-05-16', NULL, 'out', '2022-05-16 13:18:34', '2022-05-16 13:18:34', 'zafar sakib'),
(1335, 7, 1, 4, 1572, 157, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-05-18', NULL, 'in', '2022-05-18 11:53:11', '2022-05-18 11:53:11', NULL),
(1336, 2, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-05-18', NULL, 'out', '2022-05-18 13:22:47', '2022-05-18 13:22:47', 'domain'),
(1337, 2, 7, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-05-18', NULL, 'out', '2022-05-18 14:13:54', '2022-05-18 14:13:54', '1 domain'),
(1338, 2, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-05-19', NULL, 'out', '2022-05-19 11:35:55', '2022-05-19 11:35:55', '2 domain'),
(1339, 2, 8, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-05-19', NULL, 'out', '2022-05-19 11:36:31', '2022-05-19 11:36:31', 'niman'),
(1340, 3, 1, 4, 952, 158, NULL, 15000, NULL, NULL, 0, 0, NULL, '2022-05-20', NULL, 'in', '2022-05-20 09:36:39', '2022-05-20 09:36:39', NULL),
(1341, 2, 7, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-05-21', NULL, 'out', '2022-05-21 11:06:54', '2022-05-21 11:06:54', 'DO hosting credit card bill'),
(1342, 2, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2022-05-21', NULL, 'out', '2022-05-21 11:07:15', '2022-05-21 11:07:15', '3 domain renew'),
(1344, 5, 1, 1, 1569, 159, NULL, 21000, NULL, NULL, 0, 0, NULL, '2022-05-22', NULL, 'in', '2022-05-22 08:15:51', '2022-05-22 08:15:51', NULL),
(1345, 2, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-05-22', NULL, 'out', '2022-05-22 13:48:56', '2022-05-22 13:48:56', '2 domain'),
(1346, 2, 7, 1, NULL, NULL, NULL, 2000, NULL, NULL, 0, 0, NULL, '2022-05-22', NULL, 'out', '2022-05-22 13:49:23', '2022-05-22 13:49:23', 'name hosting'),
(1347, 1, 1, 4, 1572, 157, NULL, 25000, NULL, NULL, 0, 0, NULL, '2022-05-24', NULL, 'in', '2022-05-24 06:32:03', '2022-05-24 06:32:03', NULL),
(1348, 5, 1, 5, 975, 160, NULL, 40000, NULL, NULL, 0, 0, NULL, '2022-05-24', NULL, 'in', '2022-05-24 07:02:19', '2022-05-24 07:02:19', NULL),
(1349, 1, 1, 5, 1601, 161, NULL, 4000, NULL, NULL, 0, 0, NULL, '2022-05-24', NULL, 'in', '2022-05-24 09:25:39', '2022-05-24 09:25:39', NULL),
(1350, 1, 1, 5, 1392, 162, NULL, 13000, NULL, NULL, 0, 0, NULL, '2022-05-28', NULL, 'in', '2022-05-28 08:45:23', '2022-05-28 08:45:23', NULL),
(1351, 3, 1, 17, 1621, 163, NULL, 18000, NULL, NULL, 0, 0, NULL, '2022-05-29', NULL, 'in', '2022-05-28 11:40:48', '2022-05-28 11:40:48', NULL),
(1352, 5, 1, 5, 975, 160, NULL, 30000, NULL, NULL, 0, 0, NULL, '2022-05-31', NULL, 'in', '2022-06-01 04:04:09', '2022-06-01 04:04:09', NULL),
(1353, 2, 1, 17, 1011, 166, NULL, 12000, NULL, NULL, 0, 0, NULL, '2022-06-04', NULL, 'in', '2022-06-04 07:48:09', '2022-06-04 07:48:09', NULL),
(1354, 2, 7, 1, NULL, NULL, NULL, 7000, NULL, NULL, 0, 0, NULL, '2022-06-01', NULL, 'out', '2022-06-04 08:10:47', '2022-06-04 08:10:47', '7 domain'),
(1355, 5, 8, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-05-30', NULL, 'out', '2022-06-04 08:11:25', '2022-06-04 08:11:25', 'niman'),
(1356, 3, 7, 1, NULL, NULL, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-06-04', NULL, 'out', '2022-06-04 08:12:03', '2022-06-04 08:12:03', 'server bill DO, sky name aws'),
(1357, 3, 1, 4, 545, 167, NULL, 7000, NULL, NULL, 0, 0, NULL, '2022-06-04', NULL, 'in', '2022-06-04 08:59:47', '2022-06-04 08:59:47', NULL),
(1358, 3, 1, 4, 545, 167, NULL, 4000, NULL, NULL, 0, 0, NULL, '2022-06-04', NULL, 'in', '2022-06-04 09:00:47', '2022-06-04 09:00:47', NULL),
(1359, 2, 7, 1, NULL, NULL, NULL, 3000, NULL, NULL, 0, 0, NULL, '2022-06-04', NULL, 'out', '2022-06-04 13:10:13', '2022-06-04 13:10:13', '3 domain'),
(1360, 6, 11, 1, NULL, NULL, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-06-05', NULL, 'out', '2022-06-06 06:42:30', '2022-06-06 06:42:30', 'jugol kumar advance salary'),
(1361, 6, 10, 1, NULL, NULL, NULL, 30000, NULL, NULL, 0, 0, NULL, '2022-06-06', NULL, 'out', '2022-06-06 06:43:36', '2022-06-06 06:43:36', 'office rent + service charge + electric bill'),
(1362, 5, 15, 1, NULL, NULL, NULL, 12000, NULL, NULL, 0, 0, NULL, '2022-06-06', NULL, 'out', '2022-06-06 07:12:36', '2022-06-06 07:12:36', 'Niman for LMS'),
(1363, 3, 1, 4, 1611, 169, NULL, 16228, NULL, NULL, 0, 0, NULL, '2022-06-10', NULL, 'in', '2022-06-10 06:32:20', '2022-06-10 06:32:20', NULL),
(1364, 1, 1, 5, 1387, 149, NULL, 25000, NULL, NULL, 0, 0, NULL, '2022-06-12', NULL, 'in', '2022-06-12 04:20:38', '2022-06-12 04:20:38', NULL),
(1365, 1, 1, 11, 1623, 170, NULL, 5000, NULL, NULL, 0, 0, NULL, '2022-05-29', NULL, 'in', '2022-06-12 04:45:17', '2022-06-12 04:45:17', NULL),
(1366, 5, 15, 1, NULL, NULL, NULL, 8000, NULL, NULL, 0, 0, NULL, '2022-06-12', NULL, 'out', '2022-06-12 09:05:12', '2022-06-12 09:05:12', 'bill niman LMS dev'),
(1367, 2, 8, 1, NULL, NULL, NULL, 9000, NULL, NULL, 0, 0, NULL, '2022-06-09', NULL, 'out', '2022-06-12 09:26:09', '2022-06-12 09:26:09', 'usd buy from niman');
INSERT INTO `transactions` (`id`, `method_id`, `purpose_id`, `user_id`, `client_id`, `invoice_id`, `quotation_id`, `amount`, `pay_amount`, `discount`, `total_pay`, `old_total_pay`, `total_due`, `date`, `log`, `type`, `created_at`, `updated_at`, `note`) VALUES
(1368, 1, 3, 1, NULL, NULL, NULL, 1000, NULL, NULL, 0, 0, NULL, '2022-06-13', NULL, 'out', '2022-06-13 09:25:38', '2022-06-13 09:25:38', NULL),
(1369, 5, 1, 4, 1489, 155, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-06-16', NULL, 'in', '2022-06-16 14:58:03', '2022-06-16 14:58:03', NULL),
(1370, 5, 1, 5, 1515, 148, NULL, 18000, NULL, NULL, 0, 0, NULL, '2022-04-17', NULL, 'in', '2022-06-19 05:06:50', '2022-06-19 05:06:50', NULL),
(1371, 5, 1, 4, 1664, 173, NULL, 15000, NULL, NULL, 0, 0, NULL, '2022-06-19', NULL, 'in', '2022-06-19 09:59:57', '2022-06-19 09:59:57', NULL),
(1372, 3, 1, 5, 1515, 148, NULL, 12000, NULL, NULL, 0, 0, NULL, '2022-06-19', NULL, 'in', '2022-06-19 12:29:52', '2022-06-19 12:29:52', NULL),
(1373, 1, 1, 11, 1557, 174, NULL, 15000, NULL, NULL, 0, 0, NULL, '2022-06-20', NULL, 'in', '2022-06-20 06:33:13', '2022-06-20 06:33:13', NULL),
(1374, 1, 1, 5, 823, 153, NULL, 10000, NULL, NULL, 0, 0, NULL, '2022-06-20', NULL, 'in', '2022-06-20 11:20:45', '2022-06-20 11:20:45', NULL),
(1375, 6, 1, 5, 1204, 118, NULL, 17000, NULL, NULL, 0, 0, NULL, '2022-06-21', NULL, 'in', '2022-06-21 07:11:57', '2022-06-21 07:11:57', NULL),
(1376, 3, 1, 5, 1154, 111, NULL, 9000, NULL, NULL, 0, 0, NULL, '2022-06-21', NULL, 'in', '2022-06-21 12:32:38', '2022-06-21 12:32:38', NULL),
(1377, 3, 1, 5, 1306, 147, NULL, 12000, NULL, NULL, 0, 0, NULL, '2022-06-21', NULL, 'in', '2022-06-21 12:33:04', '2022-06-21 12:33:04', NULL),
(1378, 3, 1, 5, 623, 168, NULL, 16000, NULL, NULL, 0, 0, NULL, '2022-06-21', NULL, 'in', '2022-06-21 12:34:42', '2022-06-21 12:34:42', NULL),
(1379, 5, 1, 5, 1453, 175, NULL, 27000, NULL, NULL, 0, 0, NULL, '2022-06-22', NULL, 'in', '2022-06-22 05:24:56', '2022-06-22 05:24:56', NULL),
(1380, 5, NULL, 1, 9, NULL, 1, 72500, 500, 0, 500, 500, 72000, '2022-08-01', NULL, 'in', '2022-08-01 04:38:56', '2022-08-01 04:38:56', 'oiol');

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
(1, 'Admin', 'info@creativetechpark.com', NULL, '$2y$10$9zgWhAv708UKaMBAReuMEOKUN/kZ/hkr4pKKyhpbUlGF7R9sN6lau', 'DTVQyTee7g2O45jVhxroECWDXZWt6HE4YlzMgHEjQhEysukHqr7hkwMDRPda', '2021-02-04 17:05:17', '2021-06-09 09:15:52'),
(2, 'Demo Sales Agent', 'markhimu@gmail.com', NULL, '$2y$10$pmI6FkY4.xld8PefTTbbVOrzLccVLP8l7RGb0JYz9Z.YD4Z6EzrKm', 'HDCjWJHn5VLB5VXNpQJKX34D94NPlflplVc0HU2uAXO9Fg1AF7NlJ2RAIQHG', '2021-02-05 11:49:01', '2021-02-08 12:49:25'),
(3, 'Demo Web Developer', 'shadmansoumikhemu@gmail.com', NULL, '$2y$10$ghtsQ95Z7TWbQRNPZAsEJeT28JI1VQDzdLzzaagG13yV8RNvSyFKG', NULL, '2021-02-05 11:52:21', '2021-02-14 06:17:22'),
(4, 'Abu Zafar Mojumdar', 'zafar@creativetechpark.com', NULL, '$2y$10$RhjKImqdV5dgNr2UvDbmyeu7JVPkeRueI6U/FG6r3WcFTS80RhWvC', 'wn1cIW6ecF78PbunqTJTaGyTYUoJSg9ZxHx6NVmgXkUJn9iXhOT42DOnkDPb', '2021-02-08 12:53:40', '2021-02-08 15:14:07'),
(5, 'Mustakim Taj', 'mustakim@creativetechpark.com', NULL, '$2y$10$4/rmzqll0tAk01Kh3ja/I.KJ4/ZmdQKL6FNtFTWw8tmPBJqF76DE.', 'rcbckS7PeEWWMrjqbuOvopfDpkEpGNjmsLlcejO1JfwQY2PMI0ArWtNeHNNT', '2021-02-08 14:59:40', '2021-02-08 15:14:17'),
(6, 'Imtiaj Hossain', 'imtiaj@creativetechpark.com', NULL, '$2y$10$m1UJmyITnN4BAzioSvRSN.Vr/jqmK6xAO.DXlI21Pll3hoauTnkqm', 'F3gEz2M15HVjvqFseZ5o6U889Joqk4qPPKhXjVUrggxUK4rpfTdfS2nWvAed', '2021-02-08 15:03:42', '2022-05-31 06:30:33'),
(7, 'Salman Sharif', 'salman@creativetechpark.com', NULL, '$2y$10$VxQ.bxW0nyEhIKaS1RD2QuaZSxgQ5ipCocs5rdWNAjGdZmYbbqXZK', 'LZY1RD2TRp43XXRucypE25zkM1KpeYknle9BToV2Zeuk9ODxmI0tLue5vDEA', '2021-02-08 15:13:11', '2022-05-31 06:31:57'),
(8, 'Saad Nasim', 'nasim@creativetechpark.com', NULL, '$2y$10$f2Nx1qwPeHRR6AoPUb2dxugsy3S1ejhOZO9OSVn3bxqERWt5rUOBy', 'dGFVlB2i5Zna05q1M1wRGBMq5VukHZdiBe5Qm9lhvMPvgwqS0c6FXjUrwKJi', '2021-03-14 04:31:54', '2022-05-31 06:31:52'),
(9, 'Jakir Hossain', 'jakir@creativetechpark.com', NULL, '$2y$10$PsuxdEj7QjtMaI/mU6b3VO7J8qIj92j2fNIS6RpLTBOktveBeege.', 'PfjBahMY5Hyl3L6tnKsUulzcCWfxmZ8pCtWtD090IC0XC054757ht5nkdEYI', '2021-03-14 04:33:00', '2022-05-31 06:31:39'),
(10, 'Sabbir Hossain', 'sabbir@creativetechpark.com', NULL, '$2y$10$ltKSpL8p50CGrV1pTqWeMOU2.9471Ibj.HziUO19.gazTBl5mGPRi', 'VWin8e53EdFt3UlKBDu4YO1RRWPqGZKX7rjy3MqSqjagBw0zq9jgCsTWGU1O', '2021-08-16 08:33:39', '2022-05-31 06:31:14'),
(11, 'Mohin Uddin', 'mohin@creativetechpark.com', NULL, '$2y$10$QSaf0nwZltyV9XwdlW37TOSVBpvpYElOzoii7dcHHvUkCUHtxzq2S', 'rRPSK4KXiOslcU2jqiL3mU9NfTrLQyRkir4bc4Mp1XojaSgmJZpyVG3AFgbr', '2021-11-21 12:36:46', '2021-11-21 12:36:46'),
(13, 'Saiful Islam', 'saiful@creativetechpark.com', NULL, '$2y$10$9rgLNgivI9b7X32bWzgehOOdQHmJ8JfwrbGi87HdJfgzD9Q.m9E8G', 'cnpl0yZEIeMKmHGCSJ9XFjWTApXafbXUyM0bdsRelHPxyb4yr6Lsm3nqMoKF', '2022-01-25 14:55:39', '2022-03-10 07:52:23'),
(14, 'Furkan Bhuiyan', 'furkan@creativetechpark.com', NULL, '$2y$10$pV9vJiHl.25zAzAi27KP0.Vjj8i5RkcAsIUjR2uFIWllu/2j1sI1C', NULL, '2022-02-23 12:36:19', '2022-06-11 08:00:43'),
(17, 'Rahat Bishal', 'bishal@creativetechpark.com', NULL, '$2y$10$D/ahnWSBNSxCgs1gLGWDoeTo4VYgaqSKHn/9mdUVpcwbanu1oT4SW', '9OwTiLJFgZqzvgMN1pXr8q3bHpaAxMzxMUWiuI5xGkJPNETm2u7GdwIqvxYh', '2022-05-28 10:38:48', '2022-05-28 10:38:48'),
(18, 'Jaminur Islam Jamil', 'jamil@creativetechpark.com', NULL, '$2y$10$64kZuku1nYN9UwkFScuBA.RyuQ1l1EuH95uhV9LjVSkeT.fTAoW32', NULL, '2022-05-28 10:39:48', '2022-05-28 10:39:48'),
(19, 'Saad Khondaker', 'saad@creativetechpark.com', NULL, '$2y$10$wqPTPZNSBCWTgdJq3WxdE.maD1yA1wjwpL1mxQPlgyX31y1kyzFHG', 'PyS1uy8LxFUKoZkmeEcsTJPcsWgLyi72YnZU7L5pb6biHsH43eEbnPLEEwY8', '2022-06-01 07:33:04', '2022-06-01 07:33:04'),
(20, 'asdfasdf@dd.vv', 'asdfasdf@dd.vv', NULL, '$2y$10$TX8zcd2LAdJDscj6cDUqqOjkvbTPqKouHWbzSaAVRqKYMB8FqgI5K', NULL, NULL, NULL),
(21, 'asdfasdf', 'asdfadf@asdfaf.sdf', NULL, '$2y$10$Q49DYKaUk.NCjqzU9J8KF.bwzZxhnDoTGrg9Px.3FgCHJaPO3MWxq', NULL, NULL, NULL),
(27, 'Jugol Kumar', 'jugol@creativetechpark.com', NULL, '$2y$10$UDSz49xRi/snC7VOQ5ELhuaAcTw8DiyElOz7FnxCVHg6BObMHvPd.', NULL, '2022-08-01 05:54:41', '2022-08-01 05:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Personal/ Blog/ Portfolio Website', 2000, 'Home Page with Animation Slide, Mobile Friendly Responsive Design, Max 10 Dynamic Page Create by Us, Photo Gallery, Portfolio Page, Blog Page, Digital CV Page, Provide Royalty-Free Images, Max 2 Contact Form, Max 3 Revisions', '2021-02-12 13:27:54', '2021-02-17 17:44:32', NULL),
(2, 'E-commerce/ Buy Sell Website', 4000, 'Home Page with Animation Slide, Mobile Friendly Responsive Design, Max 50 Product Upload by Us, Max 30 Product Category Create by Us, Shopping Cart, Clients Registration and Account, Order Management Option, Shipment Calculation Option, Auto Generated Bill/ Invoice, Inventory Management, Max 2 Contact Form, Max 3 Revisions', '2021-02-12 13:29:24', '2021-02-18 05:56:46', NULL),
(3, 'News Portal/ Newspaper Website', 4000, 'Home Page with Animation Slide, Mobile Friendly Responsive Design, Headline Option, Weather Option, Date and Time Option, Max 10 Dynamic News Category Page Create by Us, Max 50 Dummy News Posting by Us, Photo Gallery, Max 2 Contact Form, Max 3 Revisions', '2021-02-12 13:29:47', '2021-02-18 05:47:58', NULL),
(4, 'Nonprofit/ Foundation Website', 1000, 'Home Page with Animation Slide, Mobile Friendly Responsive Design, Max 10 Dynamic Page Create by Us, Photo Gallery, Provide Royalty-Free Images, Max 2 Contact Form, Max 3 Revisions', '2021-02-12 13:30:30', '2021-02-17 17:11:14', NULL),
(5, 'Informative Business Website', 3000, 'Home Page with Animation Slide, Mobile Friendly Responsive Design, Max 10 Dynamic Page Create by Us, Photo Gallery, Provide Royalty-Free Images, Max 2 Contact Form, Max 3 Revisions', '2021-02-12 13:34:29', '2021-02-18 05:47:52', NULL),
(6, 'Basic Android Mobile App - Wordpress Backend', 30000, 'Ionic Framework, \r\nProgramming language‎: ‎JavaScript (Angular, React, Vue), \r\nCross-platform Native App, \r\nREST API Based App, \r\nProvide Latest Version SDK, \r\nAll Latest Android Mobile Device Supported, \r\nUpload to Google Play Store, \r\nMax 1 Revisions, \r\nDelivery Timeline: 30 Working Days.', '2021-03-04 06:25:33', '2021-03-14 06:49:54', NULL),
(7, 'Basic Android Mobile App - Laravel Backend', 60000, 'Ionic Framework, Programming language‎-JavaScript (Angular, React, Vue), Cross-platform Native App, REST API Based App, Provide Latest Version SDK, All Latest Android Mobile Device Supported, Upload to Google Play Store, Max 1 Revisions, Delivery Timeline: 50 Working Days.', '2021-03-04 07:18:45', '2021-03-04 12:26:17', NULL),
(8, 'Custom Android Mobile App', 150000, 'Ionic Framework, Programming language‎: ‎JavaScript (Angular, React, Vue), Cross-platform Native App, REST API Based App, Provide Latest Version SDK, All Latest Android Mobile Device Supported, Upload to Google Play Store, Max 3 Revisions, Delivery Timeline: 150 Working Days.', '2021-03-04 07:20:51', '2021-03-04 07:22:32', NULL),
(9, 'Custom IOS Mobile App', 200000, 'Ionic Framework, Programming language‎: ‎JavaScript (Angular, React, Vue), Cross-platform Native App, REST API Based App, Provide Latest Version, All Latest IOS Mobile Device Supported, Upload to Apple App Store, Max 3 Revisions, Delivery Timeline: 150 Working Days.', '2021-03-04 07:31:24', '2021-03-04 07:31:24', NULL),
(10, 'Basic IOS Mobile App - Wordpress Backend', 50000, 'Ionic Framework, \r\nProgramming language‎: ‎JavaScript (Angular, React, Vue), \r\nCross-platform Native App, \r\nREST API Based App, \r\nProvide Latest Version, \r\nAll Latest IOS Mobile Device Supported, \r\nUpload to Apple App Store, \r\nMax 1 Revisions, \r\nDelivery Timeline: 40 Working Days.', '2021-03-04 08:21:42', '2022-05-24 08:11:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logo Design (1 Revision) - Basic', 1000, '2021-02-05 10:57:19', '2021-02-17 16:49:45', NULL),
(2, 'Logo Design (3 Revision) - Advanced', 4000, '2021-02-05 10:57:34', '2022-05-24 08:06:33', NULL),
(3, 'Logo Design (Unlimited Revision)', 20000, '2021-02-05 10:57:45', '2021-02-17 16:49:09', NULL),
(5, 'SSL (Secure Sockets Layer) Setup', 2000, '2021-02-17 15:42:08', '2021-02-17 16:48:05', NULL),
(6, 'CDN (Content Delivery Network) Setup', 5000, '2021-02-17 15:45:16', '2021-02-17 16:47:16', NULL),
(7, 'Premium Email Setup (Gsuite, Office 365, Zoho etc.)', 3000, '2021-02-17 15:47:45', '2021-02-17 15:47:45', NULL),
(11, 'Live Chat (3rd Party)', 1000, '2021-02-17 16:30:59', '2021-02-17 16:30:59', NULL),
(12, 'Google Map Business Listing', 2000, '2021-02-17 16:31:27', '2021-02-18 05:52:47', NULL),
(13, 'Extra Online Feedback Form', 1000, '2021-02-17 16:50:43', '2021-02-17 16:50:43', NULL),
(14, 'Visitor Counter (3rd Party)', 1000, '2021-02-17 16:51:11', '2021-02-17 16:51:11', NULL),
(15, 'Extra Animation Slider', 2000, '2021-02-17 16:52:02', '2021-02-17 16:52:02', NULL),
(16, 'Website Background Music Setup', 3000, '2021-02-17 16:52:45', '2021-02-17 16:52:45', NULL),
(17, 'Extra Revision (After Free Period)', 3000, '2021-02-17 16:54:19', '2021-02-17 16:54:19', NULL),
(18, 'Server Data Migration (Upto 5GB)', 8000, '2021-02-17 16:55:06', '2021-02-17 16:55:26', NULL),
(19, 'Live Support (After Free Period)/ Hr.', 2000, '2021-02-17 16:58:10', '2021-02-17 16:58:10', NULL),
(20, 'Training (After Free Period)/ Hr.', 2000, '2021-02-17 16:58:48', '2021-02-17 16:58:48', NULL);

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
-- Indexes for table `custom_invoices`
--
ALTER TABLE `custom_invoices`
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
-- Indexes for table `domain_quotation`
--
ALTER TABLE `domain_quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain_quotation_domain_id_foreign` (`domain_id`),
  ADD KEY `domain_quotation_quotation_id_foreign` (`quotation_id`);

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
-- Indexes for table `hosting_quotation`
--
ALTER TABLE `hosting_quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hosting_quotation_hosting_id_foreign` (`hosting_id`),
  ADD KEY `hosting_quotation_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_quotation`
--
ALTER TABLE `package_quotation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_quotation_design_id_foreign` (`design_id`),
  ADD KEY `package_quotation_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_domain`
--
ALTER TABLE `quotation_domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_hosting`
--
ALTER TABLE `quotation_hosting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_invoices`
--
ALTER TABLE `quotation_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_packages`
--
ALTER TABLE `quotation_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_service`
--
ALTER TABLE `quotation_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_work`
--
ALTER TABLE `quotation_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_work_work_id_foreign` (`work_id`),
  ADD KEY `quotation_work_quotation_id_foreign` (`quotation_id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1674;

--
-- AUTO_INCREMENT for table `client_project`
--
ALTER TABLE `client_project`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_user`
--
ALTER TABLE `client_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_invoices`
--
ALTER TABLE `custom_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designs`
--
ALTER TABLE `designs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `domain_quotation`
--
ALTER TABLE `domain_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `feature_quotation`
--
ALTER TABLE `feature_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostings`
--
ALTER TABLE `hostings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hosting_quotation`
--
ALTER TABLE `hosting_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_quotation`
--
ALTER TABLE `package_quotation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `purposes`
--
ALTER TABLE `purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation_domain`
--
ALTER TABLE `quotation_domain`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_hosting`
--
ALTER TABLE `quotation_hosting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_invoices`
--
ALTER TABLE `quotation_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotation_packages`
--
ALTER TABLE `quotation_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_service`
--
ALTER TABLE `quotation_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation_work`
--
ALTER TABLE `quotation_work`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1381;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `domain_quotation`
--
ALTER TABLE `domain_quotation`
  ADD CONSTRAINT `domain_quotation_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `domains` (`id`),
  ADD CONSTRAINT `domain_quotation_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`);

--
-- Constraints for table `hosting_quotation`
--
ALTER TABLE `hosting_quotation`
  ADD CONSTRAINT `hosting_quotation_hosting_id_foreign` FOREIGN KEY (`hosting_id`) REFERENCES `hostings` (`id`),
  ADD CONSTRAINT `hosting_quotation_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`);

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
-- Constraints for table `package_quotation`
--
ALTER TABLE `package_quotation`
  ADD CONSTRAINT `package_quotation_design_id_foreign` FOREIGN KEY (`design_id`) REFERENCES `designs` (`id`),
  ADD CONSTRAINT `package_quotation_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`);

--
-- Constraints for table `quotation_work`
--
ALTER TABLE `quotation_work`
  ADD CONSTRAINT `quotation_work_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`),
  ADD CONSTRAINT `quotation_work_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
