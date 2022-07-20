-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2021 at 11:29 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage_backup`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `rating` double DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answers` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `phone`, `email`, `vehicle`, `date`, `time`, `booking_id`, `payment_method`, `service_id`, `user_id`, `status`, `rating`, `total`, `review`, `answers`, `created_at`, `updated_at`) VALUES
(14, 'Garage Customer', '07500844944', 'test@test.com', 'car22', '2021-10-04', '3:45 PM', '20211004144626340904', 'cash', 1, 5, 'pending', NULL, 0, NULL, '[{\"name\": \"What is your name?\", \"type\": \"text\", \"answer\": \"cuatomer\", \"choices\": []}, {\"name\": \"Is disel?\", \"type\": \"radio\", \"answer\": \"Yes\", \"choices\": [\"Yes\", \"No\"]}, {\"name\": \"What\'s your car like?\", \"type\": \"checkbox\", \"answer\": \"[Good]\", \"choices\": [\"Good\", \"Bad\", \"Average\", \"Very Good\"]}, {\"name\": \"Car weight?\", \"type\": \"number\", \"answer\": \"100\", \"choices\": []}, {\"name\": \"Car Year\", \"type\": \"dropdown\", \"answer\": \"1995\", \"choices\": [\"1991\", \"1995\", \"2000\"]}]', '2021-10-04 14:46:26', '2021-10-04 14:46:26'),
(15, 'Garage Customer', '07500844944', 'test@test.com', 'bzns', '2021-10-04', '3:46 PM', '20211004144750211047', 'stripe', 1, 5, 'confirmed', NULL, 0, NULL, '[{\"name\": \"What is your name?\", \"type\": \"text\", \"answer\": \"nams\", \"choices\": []}, {\"name\": \"Is disel?\", \"type\": \"radio\", \"answer\": \"Yes\", \"choices\": [\"Yes\", \"No\"]}, {\"name\": \"What\'s your car like?\", \"type\": \"checkbox\", \"answer\": \"[Bad]\", \"choices\": [\"Good\", \"Bad\", \"Average\", \"Very Good\"]}, {\"name\": \"Car weight?\", \"type\": \"number\", \"answer\": \"8484\", \"choices\": []}, {\"name\": \"Car Year\", \"type\": \"dropdown\", \"answer\": \"1995\", \"choices\": [\"1991\", \"1995\", \"2000\"]}]', '2021-10-04 14:47:50', '2021-10-04 14:47:50'),
(16, 'Garage Customer', '07500844944', 'test@test.com', 'bzb', '2021-10-04', '3:48 PM', '20211004144809127401', 'cash', 105, 5, 'complete', NULL, 0, NULL, '[]', '2021-10-04 14:48:09', '2021-10-04 14:51:59'),
(17, 'Garage Customer', '07500844944', 'test@test.com', 'bzns', '2021-10-04', '3:48 PM', '20211004144922934567', 'stripe', 14, 5, 'complete', NULL, 0, NULL, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"answer\": \"nans\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"answer\": \" sms\", \"choices\": []}]', '2021-10-04 14:49:22', '2021-10-04 14:51:53'),
(18, 'Garage Customer', '07500844944', 'test@test.com', 'xbmbv', '2021-10-05', '10:39 AM', '20211005093935239321', 'stripe', 14, 5, 'confirmed', NULL, 0, NULL, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"answer\": \"fmml\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"answer\": \"vnk\", \"choices\": []}]', '2021-10-05 09:39:35', '2021-10-05 09:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `sort`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Cleaning', 'categories/AdGsmFz9vMJBTRtpRkPROyxzm6Flut5ozbk3expq.jpg', NULL, NULL, '2021-09-16 12:56:08', '2021-09-16 12:56:08'),
(2, 'Detailing', 'categories/E08AeW3lCiuwf0JCsGkfwbeMQhlBfspo1lWq3CXe.jpg', NULL, NULL, '2021-09-16 12:59:01', '2021-09-16 12:59:01'),
(3, 'Servicing', 'categories/BvdXrP8NVRlFYpb3tctNokS7dVrxSxL32xhFbSfI.jpg', NULL, NULL, '2021-09-16 12:59:47', '2021-09-16 12:59:47'),
(4, 'Repairs', 'categories/fpUTKEbj2qFWUraBv1q0p15QkT9LaxK8uZA2TO4M.jpg', NULL, NULL, '2021-09-16 13:04:20', '2021-09-16 13:04:20'),
(5, 'Body Work', 'categories/a2EJHWNqtkgP0Q8l8MYIUSJTftKI5D61E5H9mlfp.jpg', NULL, NULL, '2021-09-16 13:07:22', '2021-09-16 13:07:22'),
(6, 'Tyres', 'categories/lM0RuGmb0qIvgeMnwnaNuES6LYy41x99ZuPkAhGR.jpg', NULL, NULL, '2021-09-16 13:08:02', '2021-09-16 13:08:02'),
(7, 'AC', 'categories/IbdB9LhmZT15LqUPp94NZDLu5pC22K3RxMVbhywN.jpg', NULL, 3, '2021-09-16 13:10:29', '2021-10-01 09:04:30'),
(8, 'FULL SERVICE', 'categories/N2kbIHqGz0Pne4dAS8qYqtcA3PARR6UES1v118SK.jpg', NULL, 3, '2021-09-16 13:11:08', '2021-10-01 09:04:37'),
(9, 'COOLING', 'categories/VqCLBoUpc5syDw5b9xEPd7LYJELQZmIXtz3vP50S.jpg', NULL, 3, '2021-09-16 13:13:01', '2021-10-01 09:04:43'),
(10, 'Summer Tyres', 'categories/PqKf2TLvno6blScW21ypsTQIZeru2ODc17ptPUhU.jpg', NULL, 6, '2021-09-16 13:13:20', '2021-10-01 06:08:01'),
(11, 'Winter Tyres', 'categories/JaNdQKjUK5d1CoLVfP0TtmTDgT90SE549gFaK82I.jpg', NULL, 6, '2021-09-16 13:13:28', '2021-10-01 06:10:13'),
(12, 'All Season Tyres', 'categories/43HiaTBGVWKn4eW4bTvZfqTxjRe0rvvKbrHPxb20.jpg', NULL, 6, '2021-09-16 13:13:39', '2021-10-01 06:11:42'),
(13, 'Car Spraying', 'categories/4v7CCAbfWuY6yoqSIjjwQs3w0POO7P8opp8C9xQF.jpg', NULL, 5, '2021-09-16 13:13:54', '2021-10-01 06:26:38'),
(14, 'Dent Removal', 'categories/XKDj31aW3nPY1LHxtoKm3HMLh94LzqY054MYnHYZ.jpg', NULL, 5, '2021-09-16 13:14:02', '2021-10-01 06:30:22'),
(15, 'Rust Work', 'categories/gORJq7xQt48Z9jRvI8YYYRgCDqbK8SVrVtgRx7uu.jpg', NULL, 5, '2021-09-16 13:14:17', '2021-10-01 06:34:35'),
(16, 'SEDAN', 'categories/dGMPB6vKnD3DhHKedhJf9Anun9xB01fdhokxW9ix.jpg', NULL, 2, '2021-09-16 13:14:47', '2021-10-01 07:28:51'),
(17, 'SUVs', 'categories/Xutz95Mf1WeBoQ0VhKT3sLkWEFqcwIf8DuTOd2ny.jpg', NULL, 2, '2021-09-16 13:15:18', '2021-10-01 07:31:53'),
(19, 'Runfalt Tyres', 'categories/Unma7FaoydrtA9LAvzGjWR6b8ELH0ryrqhlj0pWS.jpg', NULL, 6, '2021-10-01 06:00:25', '2021-10-01 06:14:02'),
(20, '4X4 Tyres', 'categories/3MpAfxGmg7kohoSLU60a0N7hexITKNxq42eH015u.jpg', NULL, 6, '2021-10-01 06:00:48', '2021-10-01 06:16:14'),
(21, 'Reinforced Tyres', 'categories/TnvqVyRnZ0I1R1dc0BVlOSskLudi5mMfszGUEj5A.jpg', NULL, 6, '2021-10-01 06:01:21', '2021-10-01 06:17:26'),
(22, 'Caravan and Motorhome Tyres', 'categories/pDLmDMJx70CaXgTgauWu8EayH5UHlpg9tWTNlaZu.jpg', NULL, 6, '2021-10-01 06:01:35', '2021-10-01 06:18:44'),
(23, 'Van Tyres', 'categories/otyVhaHdbmYY0G7eAFSWLZqyD5pGRG2AqauZsekj.jpg', NULL, 6, '2021-10-01 06:01:51', '2021-10-01 06:19:48'),
(24, 'Car Restoration', 'categories/hGlBDbRRcKRYzXkB5ze4b5QnczbrjK6Ol1DKfgO5.jpg', NULL, 5, '2021-10-01 06:24:05', '2021-10-01 09:02:34'),
(25, 'Minor Body Work', 'categories/PWS7HSq5WsafIimjSKcdhtgc2x0JDHjUwFKy3WoT.jpg', NULL, 5, '2021-10-01 06:24:18', '2021-10-01 06:30:11'),
(26, 'Brakes', 'categories/ZlyIJk14WirU1QIzTuTZFmQzhqsKJeLNejknT5IK.jpg', NULL, 4, '2021-10-01 06:41:47', '2021-10-01 09:03:53'),
(27, 'Electricals', 'categories/yKNp84lessqwLBbd3hHYC7d27CWjwNDZWSxPXRIV.jpg', NULL, 4, '2021-10-01 06:41:58', '2021-10-01 09:03:33'),
(28, 'Engines', 'categories/AbWzmDbBKI36fsJhcy13lu53RRVHZBh8LCWEhY5B.jpg', NULL, 4, '2021-10-01 06:42:09', '2021-10-01 06:50:29'),
(29, 'Batteries', 'categories/SzydTLF2Lsn9wV3qISu2dAk0KMErfGo5obq2JG42.jpg', NULL, 4, '2021-10-01 06:42:19', '2021-10-01 06:51:55'),
(30, 'Exhausts', 'categories/gs0W6LzKlJvIoVf9v0JZ0lnJqr3O4jDTMnsZOFpD.jpg', NULL, 4, '2021-10-01 06:42:28', '2021-10-01 09:03:41'),
(31, 'Gears', 'categories/KvkJia5tCYO15l8eP1YkbvO4KfifpZSHloT56iaK.jpg', NULL, 4, '2021-10-01 06:42:42', '2021-10-01 09:03:47'),
(33, 'Lubricant Oil', 'categories/qTzSsEA9gNjbLD6zjPEB3LRb2aLVphxMVZr2k1O8.jpg', NULL, 3, '2021-10-01 07:01:47', '2021-10-01 07:23:05'),
(34, 'COUPE', 'categories/JkWN3pjQTHSsFVYgK0Vbmm5qXM1dkEzJRyrIshDC.jpg', NULL, 2, '2021-10-01 07:25:47', '2021-10-01 07:33:42'),
(35, 'SPORTS CAR', 'categories/PUAVYo6oH1WRRz1oHhvf6kTMojDIafbCPkmlQnEd.jpg', NULL, 2, '2021-10-01 07:26:00', '2021-10-01 07:34:33'),
(36, 'STATION WAGON', 'categories/xRvwHY8iNOzE9ABKJPa1TK2HwXdrfvdjPWrdd9fQ.jpg', NULL, 2, '2021-10-01 07:26:10', '2021-10-01 07:37:19'),
(37, 'HATCHBACK', 'categories/1vGI6nZN81RS31ofZ0ZuVej2vM0bwXPQe2bss0vL.jpg', NULL, 2, '2021-10-01 07:26:18', '2021-10-01 07:38:47'),
(38, 'CONVERTIBLE', 'categories/0GR5BD503qRyyQWV1O87gbkLIeifbsflQvLfNoxw.jpg', NULL, 2, '2021-10-01 07:26:25', '2021-10-01 07:40:06'),
(39, 'MINIVAN', 'categories/UIPRNBgLSGFspeut6ghu3HWa2QF6vM8PzDOXkA9n.jpg', NULL, 2, '2021-10-01 07:26:48', '2021-10-01 07:44:38'),
(40, 'VAN', 'categories/vDmXWfsyEJi3EFxSOvNKnEhaPM2Y9yNvteqYFY36.jpg', NULL, 2, '2021-10-01 07:26:54', '2021-10-01 07:46:38'),
(41, 'PICKUP TRUCK', 'categories/0bXAPfmvsRfs1mWEsM3YwuBwkdIFjyeQ6eBo3mFW.jpg', NULL, 2, '2021-10-01 07:27:04', '2021-10-01 07:48:09'),
(42, 'COMPACT SUVs', 'categories/GQ3ImlOJ0g3U8w946oTuRvHW2w0zfOYjCkUG7LXx.jpg', NULL, 2, '2021-10-01 07:27:33', '2021-10-01 07:49:00'),
(43, 'Car Washing', 'categories/nHcUIUk1cm7LhVsOapSyB9Tuwcw7o8CzN4HORO1n.jpg', NULL, 1, '2021-10-01 08:02:57', '2021-10-01 08:08:29'),
(44, 'Safe Engine Wash', 'categories/wkfgrPCzAZlzqpzDTaezoCEOhwp4ZO0tGLoLSNkV.jpg', NULL, 1, '2021-10-01 08:05:06', '2021-10-01 08:09:24'),
(45, 'Car Polishing', 'categories/U8KwmsOeiZZZ8JmOjYs7LH9junsgMajH1On4eQ2L.jpg', NULL, 1, '2021-10-01 08:05:28', '2021-10-01 08:10:57'),
(46, 'Rubbing Polish', 'categories/wyZHz2AFrKPl4m3JSl8EH8dEtzx1oum7PBClGxje.jpg', NULL, 1, '2021-10-01 08:06:38', '2021-10-01 08:11:42'),
(47, 'Foam Wash', 'categories/7rE4O7oVt2eKjMCSUbTJYebh1BHNQS8FLnOAhgLX.jpg', NULL, 1, '2021-10-01 08:07:13', '2021-10-01 08:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `commons`
--

CREATE TABLE `commons` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commons`
--

INSERT INTO `commons` (`id`, `type`, `data`, `created_at`, `updated_at`) VALUES
(1, 'privacy', '<p id=\"isPasted\">V1 Technologies (&quot;We&quot;) are committed to protecting and respecting your privacy.</p><p><br></p><p>This policy (together with our terms of use and any other documents referred to therein) sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. Please read the following carefully to understand our views and practices regarding your personal data and how we will treat it.</p><p><br></p><p>We may collect and process the following data about you:</p><p>Information that you provide by filling in forms on our site www.v1technologies.co.uk (our site). This includes information provided at the time of registering to use our site, subscribing to our service, posting material or requesting further services. We may also ask you for information [when you enter a competition or promotion sponsored by V1 Technologies, and when you report a problem with our site.</p><p>If you contact us, we may keep a record of that correspondence.</p><p>We may also ask you to complete surveys that we use for research purposes, although you do not have to respond to them.</p><p>Details of transactions you carry out through our site and of the fulfilment of your orders.</p><p>Details of your visits to our site including, but not limited to, traffic data, location data, weblogs and other communication data, whether this is required for our own billing purposes or otherwise and the resources that you access.</p><p>&nbsp;</p><p><br></p><p>IP addresses</p><p>We may collect information about your computer, including where available your IP address, operating system and browser type, for system administration and to report aggregate information to our advertisers. This is statistical data about our users&#39; browsing actions and patterns, and does not identify any individual.</p><p><br></p><p><br></p><p>Cookies</p><p>Our website uses cookies to distinguish you from other users of our website. This helps us to provide you with a good experience when you browse our website and also allows us to improve our site. For detailed information on the cookies we use and the purposes for which we use them see our Cookie policy [cookie-policy-for-website-design-iphone-app-development-company.php]</p><p><br></p><p><br></p><p>Where we store your personal data</p><p>The data that we collect from you may be transferred to, and stored at, a destination outside the European Economic Area (&quot;EEA&quot;). It may also be processed by staff operating outside the EEA who work for us or for one of our suppliers. Such staff maybe engaged in, among other things, the fulfilment of your order, the processing of your payment details and the provision of support services. By submitting your personal data, you agree to this transfer, storing or processing. We will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this privacy policy.</p><p><br></p><p>All information you provide to us is stored on our secure servers. Any payment transactions will be encrypted [using SSL technology</p><p>Where we have given you (or where you have chosen) a password which enables you to access certain parts of our site, you are responsible for keeping this password confidential. We ask you not to share a password with anyone.</p><p><br></p><p><br></p><p>Unfortunately, the transmission of information via the internet is not completely secure. Although we will do our best to protect your personal data, we cannot guarantee the security of your data transmitted to our site; any transmission is at your own risk. Once we have received your information, we will use strict procedures and security features to try to prevent unauthorised access.</p><p><br></p><p><br></p><p>Uses made of the information</p><p>We use information held about you in the following ways:</p><p>To ensure that content from our site is presented in the most effective manner for you and for your computer.</p><p>To provide you with information, products or services that you request from us or which we feel may interest you, where you have consented to be contacted for such purposes.</p><p>To carry out our obligations arising from any contracts entered into between you and us.</p><p>To allow you to participate in interactive features of our service, when you choose to do so.</p><p>To notify you about changes to our service.</p><p><br></p><p><br></p><p>We may also use your data, or permit selected third parties to use your data, to provide you with information about goods and services which may be of interest to you and we or they may contact you about these by [post or telephone.</p><p><br></p><p>If you are an existing customer, we will only contact you by electronic means (e-mail or SMS) with information about goods and services similar to those which were the subject of a previous sale to you.</p><p><br></p><p>If you are a new customer, and where we permit selected third parties to use your data, we (or they) will contact you by electronic means only if you have consented to this.</p><p><br></p><p>If you do not want us to use your data in this way, or to pass your details on to third parties for marketing purposes, please tick the relevant box situated on the form on which we collect your data.</p><p><br></p><p>We do not disclose information about identifiable individuals to our advertisers, but we may provide them with aggregate information about our users (for example, we may inform them that 500 men aged under 30 have clicked on their advertisement on any given day). We may also use such aggregate information to help advertisers reach the kind of audience they want to target (for example, women in SW1). We may make use of the personal data we have collected from you to enable us to comply with our advertisers&#39; wishes by displaying their advertisement to that target audience.</p><p><br></p><p>Disclosure of your information</p><p><br></p><p>We may disclose your personal information to any member of our group, which means our subsidiaries, our ultimate holding company and its subsidiaries, as defined in section 1159 of the UK Companies Act 2006.</p><p>We may disclose your personal information to third parties:</p><p>In the event that we sell or buy any business or assets, in which case we may disclose your personal data to the prospective seller or buyer of such business or assets.</p><p><br></p><p>If V1 Technologies or substantially all of its assets are acquired by a third party, in which case personal data held by it about its customers will be one of the transferred assets.</p><p><br></p><p>If we are under a duty to disclose or share your personal data in order to comply with any legal obligation, or in order to enforce or apply our terms of use or terms and conditions of supply and other agreements; or to protect the rights, property, or safety of V1 Technologies, our customers, or others. This includes exchanging information with other companies and organisations for the purposes of fraud protection and credit risk reduction.</p><p><br></p><p>Your rights</p><p><br></p><p>You have the right to ask us not to process your personal data for marketing purposes. We will usually inform you (before collecting your data) if we intend to use your data for such purposes or if we intend to disclose your information to any third party for such purposes. You can exercise your right to prevent such processing by checking certain boxes on the forms we use to collect your data. You can also exercise the right at any time by contacting us at support@v1technologies.co.uk .</p><p><br></p><p>Our site may, from time to time, contain links to and from the websites of our partner networks, advertisers and affiliates. If you follow a link to any of these websites, please note that these websites have their own privacy policies and that we do not accept any responsibility or liability for these policies. Please check these policies before you submit any personal data to these websites.</p><p><br></p><p>Access to information</p><p><br></p><p>The Act gives you the right to access information held about you. Your right of access can be exercised in accordance with the Act. Any access request may be subject to a fee of &pound;10 to meet our costs in providing you with details of the information we hold about you.</p><p><br></p><p>Changes to our privacy policy</p><p><br></p><p>Any changes we may make to our privacy policy in the future will be posted on this page and, where appropriate, notified to you by e-mail.</p><p><br></p><p>Contact</p><p><br></p><p>Questions, comments and requests regarding this privacy policy are welcomed and should be addressed to support@v1technologies.co.uk.</p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>', '2021-09-16 12:51:32', '2021-09-17 06:13:03'),
(2, 'terms', '<p id=\"isPasted\">V1 Technologies (hereafter referred to as Company), provides products, software and manpower Services (collectively, hereinafter referred to as Services) subject to any customers or buyers (hereafter referred to as Client) acceptance of and compliance with the Terms and Conditions (hereinafter referred to as Terms) and the terms and conditions of the Service Level Assurance Agreement (hereafter referred to as SLA) outlined below:</p><p><br></p><p>Terms</p><p>The Terms of the Agreement will commence on the date the Client enrolls for our Services and will end when terminated by either party in accordance with the Terms &amp; Conditions and SLA</p><p><br></p><p>1.0 Description of Service</p><p>Company may provide Client with one or more of the following services:</p><p>Business Website or Business-related website pages</p><p>Search Engine Marketing, Search Engine Optimization, Pay Per Click or other forms of Internet Marketing</p><p>Website Storage Space, Domain, E-mail Services, website hosting, or maintenance and support Services.</p><p>Other customised technology services Unless explicitly stated otherwise, any addition of a new feature that augments or enhances the Services shall be considered to be part of the Services. Company reserves the right to modify, suspend or discontinue the Services (or any part thereof), based on non-cooperation, non payment, or unwanted delay from client, at any time, without notice. Client expressly agrees that Client, or any related third party, shall not hold Company or its suppliers liable for any losses, damages or consequences whatsoever from such modification, suspension or discontinuation of the Services.</p><p>2.0 Access to Information</p><p>For purposes of the Agreement, all web pages that are owned, operated or hosted by, or on behalf of, or for Company, are referred to herein as the Company Websites. To access the Company Services or Company Websites Client may be asked to provide certain registration details or other information. It is a condition of Clients use of the Services or access to the Company Websites that all the information Client provides will be correct, current, and complete. If Company believes the information that the Client has provided is not correct, current, or complete, Company has the right to refuse Client access to any Company Websites or Services or any of its resources, and to terminate or suspend Clients account at any time.</p><p>3.0 Payment</p><p>3.1 Client agrees to pay Company the service fee, for any Program or Service that the Client enrolls in, pursuant to the terms of the Payment Plan Client selects, including, without limitation, all applicable taxes, if any, in accordance with the billing terms in effect at the time the service fee becomes payable. 3.2 The Client expressly understands, acknowledges and hereby authorizes Company to automatically charge Clients credit card or debit Clients bank account once a month or one time as per the Program requirement. 3.3 The Client will be charged an upfront fee upon ordering, details and invoice for which, will be emailed to the client no later than 48 working hours. Company also reserves the right to pursue alternative means of payment up to and including debt collection services and customer shall be liable for all collection costs, including without limitation, attorneys fees. If the client does not respond for 7 days without any notification we are entitled to charge the due amount to the customer and the amount would not be refunded. 3.4 In the interests of security and to safeguard both parties from payment frauds, Company may request for documents if applicable, to ensure that the client is the cardholder and authorized to make the payment on behalf of the business or individual. The client agrees to submit these documents as and when requested. These are required by law, in accordance with the security compliance procedures of Company and its suppliers. These may be in the form of: 3.4.1 A signed copy of the Task Order 3.4.2 A copy of the FRONT SIDE ONLY of your Credit or Debit Card 3.4.3 An ID proof in the form of: 3.4.3.1 A Driving License 3.4.3.2 A National ID card 3.4.3.3 Any Photo ID issued by the government of Clients respective country. 3.5 The name appearing on the statement could be V1 Technologies or as applicable based on the payment service provider we use. 3.6 Payments for Renewals of the Website, Domain, Hosting, Server Space and other subscriptions. 3.6.1 Company will send an email 3 month prior to expiry of Website, Domain, Hosting, Server Space and other relevant subscriptions to the client, informing about the due date of renewal. 3.6.2 No sooner than 60 (Sixty) days prior to expiry, Company will attempt to contact Client who had not renewed their relevant subscriptions on the first notice. Client will be requested to renew at this stage. 3.6.3 No later than 40 (Forty) days prior to expiry, Company will put the status Website under maintenance for customers who are still not contactable. If still unsuccessful, Company will notify its suppliers of the same in time and request to cancel the domain on expiry. 3.6.4 All customers must be informed at Acquisition of the renewal charges.</p><p>4.0 Cancellation &amp; Refunds Policy</p><p>4.1 All amounts owed by the client to Company for Services rendered prior to the verified cancellation date must be paid in full. There will be no prorating for partial months throughout the Agreement. Due to account security and privacy concerns, all billing related questions and cancellation requests MUST be made in writing or via email. 4.2 Cancellation requests will only be processed if made by the initial authorizing party and if received in writing. There will be no refunds of any monies for any cancellation requests made after the cooling off period of 7 days from the date of order. For security and training purposes, conversations inbound and outbound (on phone, email, whatsapp, skype or any other means of communication) with our representatives or offices may be digitally recorded and the recordings form a part of the contract between Company and the client. 4.3 Any cancellations done after the cooling off period by the client, for any reason whatsoever, will lead to a full payment of the agreed price and immediate termination of the contract, until otherwise mutually agreed between Company and the client. 4.4 Once the cooling off period of 7 Days has passed, only a partial refund will be issued after deducting the number of man-days consumed at the rate of 50GBP per day or equivalent local currency. Man Days for refund purposes are calculated starting on the 8th Day from the day the payment is received.</p><p>5.0 Receivables Policy</p><p>5.1 As Company provides a bill-through service; the company takes a significant credit risk for each and every Client. Therefore, Client is responsible to maintain an active and valid payment method on file at all times. 5.2 If for any reason, Clients payment method is not available, Company reserves the right to immediately and temporarily turn off the website, pay-per-click ads, sponsored listings and ongoing or then current production, reporting, or support Services being provided to account. 5.3 If the payment is not received, Company reserves the right to terminate the Agreement in full and retain ownership of the website, domain name, or other Services until such time the account has been paid in full. 5.4 All Term Commitment Terminations will result in an escalation of all fees owed under the Terms of the Agreement. Many Clients maintain multiple forms of payment on file to prevent this from occurring.</p><p>6.0 Representations and Warranties</p><p>Client represents warrants and covenants that: 6.1 Client has sufficient authority to enter into the Agreement 6.2 Client is a business, and that Clients use of Company Services is solely for lawful commercial and business purposes 6.3 Client has the necessary rights to provide all information provided under the Agreement for use as described in the Agreement, and that all such information and all claims, statements, products and Services contained or referenced therein and in the website to which it links: 6.3.1 Do not violate any law, statute, ordinance, treaty or regulation or Company policy or guideline 6.3.2 Do not infringe any copyright, patent, trademark, trade secret or other intellectual property right of any third party 6.3.3 Do not breach any duty toward or rights of any person or entity including rights of publicity or privacy, and have not otherwise resulted in or are not likely to result in any consumer fraud, product liability, tort, breach of contract, injury, damage or harm of any kind to any person or entity 6.3.4 Are not false, deceptive or misleading 6.3.5 Are not defamatory, libelous, slanderous or threatening 6.3.6 Will be free of viruses, Trojan horses, trap doors, back doors, Easter eggs, worms, time bombs, cancel bots or other computer programming routines that may potentially damage, interfere with intercept, or expropriate any system data or personal information; 6.3.7 Comply with the applicable Program Terms; 6.3.8 Comply with all laws regarding unsolicited electronic messages (including without limitation, the CAN-SPAM Act of 2003 and Client will not engage in any form of spamming or other impermissible marketing activities through any Company Program.</p><p>7.0 Indemnification</p><p>7.1 Client will indemnify and hold Company, its subsidiaries, affiliates, content providers, service providers, employees, agents, officers, directors, and contractors (the Indemnified Parties) harmless from any breach of these Terms and Conditions or the applicable Program Terms by Client, including any use of content and third-party content developed by Company other than as expressly authorized in these Master Terms and Conditions. 7.2 Client agrees that the Indemnified Parties will have no liability in connection with any such breach or unauthorized use, and Client agrees to indemnify any and all resulting loss, damages, judgments, awards, costs, expenses, and attorneys fees of the Indemnified Parties in connection therewith. Client will also indemnify and hold the Indemnified Parties harmless from and against any claims brought by third parties arising out of Clients use of the information accessed from Company.</p><p>8.0 Trademarks</p><p>Trademarks, Service-marks, and Logos appearing on this site are the property of Company or the party that provided the trademarks, service marks, and logos to Company. Company and any party that provided trademarks, service marks, and logos to Company retain all rights with respect to any of their respective trademarks, service marks, and logos appearing in this site.</p><p>9.0 Security</p><p>9.1 Any passwords used for this site are for individual use only. Client will be responsible for the security of Clients password (if any). Company will be entitled to monitor Clients password and, at its discretion, require Client to change it. If Client uses a password that Company considers insecure, Company will be entitled to require the password to be changed and/or terminate Clients account. 9.2 Client will notify Company immediately if Client believes that the security of Clients account has been compromised. Company AND ITS SUPPLIERS SHALL NOT BE LIABLE FOR LOSSES OR DAMAGES RESULTING FROM ANY SECURITY BREACHES. 9.3 Client is prohibited from using any Services or facilities provided in connection with Company to compromise security or tamper with system resources and/or accounts. The use or distribution of tools designed for compromising security (e.g., password guessing Services, cracking tools or network probing tools) is strictly prohibited. If Client becomes involved in any violation of system security, 9.4 Company reserves the right to release Clients details to system administrators at other sites in order to assist them in resolving security incidents. Company reserves the right to investigate detected violations of these Master Terms and Conditions. 9.5 Company reserves the right to fully cooperate with any law enforcement authorities or court order requesting or directing Company to disclose the identity of anyone posting any e-mail messages, or publishing or otherwise making available any materials that are believed to violate these Terms and Conditions. BY ACCEPTING THIS AGREEMENT CLIENT WAIVE AND HOLD HARMLESS Company FROM ANY CLAIMS RESULTING FROM ANY ACTION TAKEN BY Company DURING OR AS A RESULT OF ITS INVESTIGATIONS AND/OR FROM ANY ACTIONS TAKEN AS A CONSEQUENCE OF INVESTIGATIONS BY EITHER Company OR LAW ENFORCEMENT AUTHORITIES.</p><p>10.0 Proprietary Information</p><p>10.1 The material and content accessible from this site, and any other World Wide Website owned, operated, licensed, or controlled by Company (the Content) is the proprietary information of Company or the party that provided the Content to Company, and Company or the party that provided the Content to Company retains all right, title, and interest in the Content. 10.2 The Content may not be copied, distributed, republished, uploaded, posted, or transmitted in any way without the prior written consent of Company, except that Client may print out a copy of the Content solely for Clients internal use. 10.3 Client may not remove or alter, or cause to be removed or altered, any copyright, trademark, trade name, service mark, or any other proprietary notice or legend appearing on any of the Content. Modification or use of the Content except as expressly provided in these Terms and Conditions is prohibited. Neither title nor intellectual property rights are transferred to Client by access to the Services or Company Websites. 10.4 Client is expressly prohibited, directly or indirectly through any third party, from any of the following: 10.4.1 Copying, modifying, creating a derivative work of, reverse engineering, reverse assembling or otherwise attempting to discover the source code of any software pertaining to the Services or Company Websites 10.4.2 Renting, leasing, selling, assigning, transferring, sublicensing, re-licensing, granting a security interest in, or gaining unauthorized access to the Services or Company Websites; and 10.4.3 Accessing the Services or Company Websites by any means other than through the interface that is provided by Company for use in accessing the Services or Company Websites. 10.5 Company suppliers are the exclusive owners of all right, title and interest in and to the Services or Company Websites along with any and all related intellectual property rights including, without limitation, all associated rights under the laws of copyright (including derivative works), trademarks and patent. Nothing in this Agreement shall be deemed to limit or restrict Company suppliers from providing its Services, Company Websites or technology to any third party for any purpose whatsoever, or in any way affect the rights granted to such other third parties. The use of any of the Services or Company Websites shall in no way be construed by any user as granting or conferring upon them any intellectual property rights whatsoever.</p><p>11.0 External Sites</p><p>This site may be hyper-linked to other external sites that are not maintained by, or related to, Company. Hyper-links to such sites are provided as a service to users and are not sponsored by or affiliated with this site or Company. Company has not reviewed any or all of such sites and is not responsible for the content of those sites. Hyper-links are to be accessed at Clients own risk, and Company makes no representations or warranties about the content, completeness or accuracy of these hyper-links or the sites hyper-linked to this site. Further, the inclusion of any hyper-link to a third-party site does not necessarily imply endorsement by Company of that site.</p><p>12.0 Information Provided</p><p>12.1 Client would provide Company with the necessary contents, images, videos, logos, and other relevant information required to make the site live within the agreed timeline. 12.2 In the event that the Client fails to provide the contents, images, information, videos, logos, Company would complete the website with suitable data provided or with Coming Soon text or Image Not Available in case of images. 12.3 Company will also inform the Client at least 3 Working Days in advance of such site being made live with and would charge the card for the due amount on site completion. 12.4 Client may not post, send, submit, publish, or transmit in connection with this site any material that: 12.4.1 Client does not have the right to post, including proprietary material of any third party; Advocates illegal activity or discusses an intent to commit an illegal act; 12.4.2 Is vulgar, obscene, pornographic, or indecent; 12.4.3 Does not pertain directly to this site; 12.4.4 Threatens or abuses others, libels, defames, invades privacy, stalks, is obscene, pornographic, racist, abusive, harassing, threatening or offensive; 12.4.5 Seeks to exploit or harm children by exposing them to inappropriate content, asking for personally identifiable details or otherwise; Infringes any intellectual property or other right of any entity or person, including violating anyones copyrights or trademarks or their rights of publicity; 12.4.6 Violates any law or may be considered to violate any law; 12.4.7 Impersonates or misrepresents Clients connection to any other entity or person or otherwise manipulates headers or identifiers to disguise the origin of the content; 12.4.8 Advertises any commercial endeavor (e.g., offering for sale products or Services) or otherwise engages in any commercial activity (e.g., conducting raffles or contests, displaying sponsorship banners, and/or soliciting goods or Services) except as may be specifically authorized on this site; 12.4.9 Solicits funds, advertisers or sponsors; 12.4.10 Includes Services which contain viruses, worms and/or Trojan horses or any other computer code, files or Services designed to interrupt, destroy or limit the functionality of any computer software or hardware or telecommunications; 12.4.11 Disrupts the normal flow of dialogue, causes a screen to scroll faster than other users are able to type, or otherwise act in a way which affects the ability of other people to engage in real time activities via this site; Includes MP3 format files; 12.4.12 Amounts to a pyramid or similar scheme; 12.4.13 Disobeys any policy or regulations established from time to time regarding use of this site or any networks connected to this site; or 12.4.14 Contains hyper-links to other sites that contain content that falls within the descriptions set forth above. 12.5 Company reserves the right to monitor use of this site to determine compliance with these Master Terms and Conditions, as well the right to remove or refuse any information for any reason. Notwithstanding these rights, Client remains solely responsible for the content of Clients submissions. 12.6 Client acknowledges and agrees that neither Company nor any third party that provides Content to Company will assume or have any liability for any action or inaction Company or such third party with respect to any submission.</p><p>13.0 Submissions</p><p>13.1 Client hereby grants to Company the royalty-free, perpetual, irrevocable, worldwide, non-exclusive right and license to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, perform, and display all content, remarks, suggestions, ideas, graphics, or other information communicated to Company through this site (together, the Submission), and to incorporate any Submission in other works in any form, media, or technology now known or later developed. 13.2 Company will not be required to treat any Submission as confidential, and may use any Submission in its business (including without limitation, for products or advertising) without incurring any liability for royalties or any other consideration of any kind, and will not incur any liability as a result of any similarities that may appear in future Company operations. 13.3 Company and its suppliers do not claim ownership rights in any Content that Client owns, or are owned by a third party, and that Client has provided for inclusion in the Services and/or incorporation onto Clients website. Accordingly, Client is solely responsible for ensuring that said Content does not violate any of Company policies or rig or any rd partys rights. 13.4 Company.com will treat any personal information that Client submits through this in accordance with its Privacy Policy.</p><p>14.0 Communication from Company</p><p>Client agrees to receive all communications from Company, whether via telephone, facsimile, or e-mail, and expressly agree not to consider any such communication(s) as unsolicited. Refusal to receive such communications from Company will constitute grounds for termination of this Agreement and deactivation of Clients Website.</p><p>15.0 Termination for Cause</p><p>15.1 Company and its suppliers reserve the right to immediately terminate this Agreement and deactivate Clients account and access to Services or Company Websites if they believe, in their sole and absolute discretion, that Client has: 15.1.1 Violated, or threaten to violate, the terms of this Agreement; or 15.1.2 Created, or are creating, websites as a nuisance or in a deliberate attempt to degrade or otherwise interfere with the Services or Company Websites. 15.2 Any user who is terminated for cause under this section hereby agrees to forfeit any and all rights, claims and/or causes of action against Company and its suppliers, including without limitation Clients rights to any refunds or for any losses, expenses, damages or costs incurred as a result of such termination and deactivation.</p><p>16.0 Site Ownership</p><p>Copyright, code structure, processes, imagery, and intellectual property related to the finished website produced by Company will be owned by Company. Transfer requests must be initiated by the Client to the dedicated Company Project Coordinator in writing. Rights to photos, graphics, source code, work-up files, and computer Services are specifically not transferred to the Client, and remain the property of Company. Company retain the right to display graphics and other Web design elements as examples of their work in their respective portfolios. The website(s) may contain a copyright/legal statement with a link to Company Services and corporate website. Client assumes all liability for licensing the proper technology, and imagery, for the site to operate properly outside of Company hosting environment. If Client desires to transfer the site to another hosting platform, Company reserves the right to charge a one time ownership transfer fee, which includes all supporting code, fonts, imagery, etc.</p><p>17.0 Force Majeure</p><p>Company shall not be liable or deemed to be in default under this Agreement for any delay or failure to perform resulting from (a) accidents, fire, labor disputes, epidemics, war, terrorist acts, riots, insurrections, power blackouts, acts of nature or causes beyond its reasonable control without its fault or negligence, (b) acts or omissions of the other Party or of a third Party (other than the non-performing Partys own agents or contractors), or (c) compliance with any law, regulation, ruling, order or requirement of any federal, state or municipal government or agency or court of competent jurisdiction (a Force Majeure Condition).</p><p>18.0 Data Limitations</p><p>Company will impose the following data limitations on email and bandwidth provided by Company through its products and Services offering.</p><p>19.0 Limitations of Liability</p><p>19.1 CLIENT EXPRESSLY UNDERSTANDS AND AGREES THAT Company AND ITS OFFICERS, EMPLOYEES, AGENTS, PARTNERS AND LICENSORS SHALL NOT BE LIABLE TO CLIENT FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES, INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR LOSS OF PROFITS, GOODWILL, USE, DATA OR OTHER INTANGIBLE LOSSES (EVEN IF Company HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES), RESULTING FROM: 19.1.1 THE USE OR THE INABILITY TO USE THE SERVICE 19.1.2 THE COST OF PROCUREMENT OF SUBSTITUTE GOODS AND SERVICES RESULTING FROM ANY GOODS, DATA, INFORMATION OR SERVICES PURCHASED OR OBTAINED OR MESSAGES RECEIVED OR TRANSACTIONS ENTERED INTO THROUGH OR FROM THE SERVICE 19.1.3 UNAUTHORIZED ACCESS TO OR ALTERATION OF CLIENTS TRANSMISSIONS OR DATA 19.1.4 STATEMENTS OR CONDUCT OF ANY THIRD PARTY ON THE SERVICE; OR ANY OTHER MATTER RELATING TO THE SERVICE.</p><p>20.0 Governing Law</p><p>The company is governed by the laws of England and Wales.</p><p data-f-id=\"pbf\" style=\"text-align: center; font-size: 14px; margin-top: 30px; opacity: 0.65; font-family: sans-serif;\">Powered by <a href=\"https://www.froala.com/wysiwyg-editor?pb=1\" title=\"Froala Editor\">Froala Editor</a></p>', '2021-09-16 12:51:32', '2021-09-16 13:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `query`, `created_at`, `updated_at`) VALUES
(4, 'V1 Technologies', '0123456789', 'test@gmail.com', 'sdddssds', '2021-10-04 13:05:45', '2021-10-04 13:05:45'),
(5, 'V1 Technologies', '0123456789', 'test@gmail.com', 'sdddssds', '2021-10-04 13:06:28', '2021-10-04 13:06:28'),
(6, 'V1 Technologies', '0123456789', 'test@gmail.com', 'sdddssds', '2021-10-04 13:06:35', '2021-10-04 13:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact_settings`
--

CREATE TABLE `contact_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_settings`
--

INSERT INTO `contact_settings` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://www.facebook.com/V1technologies', '2021-09-21 12:42:36', '2021-09-30 13:12:43'),
(2, 'website', 'https://v1technologies.co.uk', '2021-09-21 12:42:36', '2021-09-30 13:12:43'),
(3, 'phone', '+447500844944', '2021-09-21 12:42:36', '2021-09-30 13:12:43'),
(4, 'twitter', 'https://twitter.com/V1Technologies', '2021-09-21 12:42:36', '2021-09-30 13:12:43'),
(5, 'linkedin', 'https://www.linkedin.com/company/v1technologies', '2021-09-21 12:42:36', '2021-09-30 13:12:43'),
(6, 'email', 'v1technologiesuk@gmail.com', '2021-09-21 12:42:36', '2021-09-30 13:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', NULL, NULL),
(2, 'Dollars', 'USD', '$', NULL, NULL),
(3, 'Afghanis', 'AFN', '؋', NULL, NULL),
(4, 'Pesos', 'ARS', '$', NULL, NULL),
(5, 'Guilders', 'AWG', 'ƒ', NULL, NULL),
(6, 'Dollars', 'AUD', '$', NULL, NULL),
(7, 'New Manats', 'AZN', 'ман', NULL, NULL),
(8, 'Dollars', 'BSD', '$', NULL, NULL),
(9, 'Dollars', 'BBD', '$', NULL, NULL),
(10, 'Rubles', 'BYR', 'p.', NULL, NULL),
(11, 'Euro', 'EUR', '€', NULL, NULL),
(12, 'Dollars', 'BZD', 'BZ$', NULL, NULL),
(13, 'Dollars', 'BMD', '$', NULL, NULL),
(14, 'Bolivianos', 'BOB', '$b', NULL, NULL),
(15, 'Convertible Marka', 'BAM', 'KM', NULL, NULL),
(16, 'Pula', 'BWP', 'P', NULL, NULL),
(17, 'Leva', 'BGN', 'лв', NULL, NULL),
(18, 'Reais', 'BRL', 'R$', NULL, NULL),
(19, 'Pounds', 'GBP', '£', NULL, NULL),
(20, 'Dollars', 'BND', '$', NULL, NULL),
(21, 'Riels', 'KHR', '៛', NULL, NULL),
(22, 'Dollars', 'CAD', '$', NULL, NULL),
(23, 'Dollars', 'KYD', '$', NULL, NULL),
(24, 'Pesos', 'CLP', '$', NULL, NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', NULL, NULL),
(26, 'Pesos', 'COP', '$', NULL, NULL),
(27, 'Colón', 'CRC', '₡', NULL, NULL),
(28, 'Kuna', 'HRK', 'kn', NULL, NULL),
(29, 'Pesos', 'CUP', '₱', NULL, NULL),
(30, 'Koruny', 'CZK', 'Kč', NULL, NULL),
(31, 'Kroner', 'DKK', 'kr', NULL, NULL),
(32, 'Pesos', 'DOP ', 'RD$', NULL, NULL),
(33, 'Dollars', 'XCD', '$', NULL, NULL),
(34, 'Pounds', 'EGP', '£', NULL, NULL),
(35, 'Colones', 'SVC', '$', NULL, NULL),
(36, 'Pounds', 'FKP', '£', NULL, NULL),
(37, 'Dollars', 'FJD', '$', NULL, NULL),
(38, 'Cedis', 'GHC', '¢', NULL, NULL),
(39, 'Pounds', 'GIP', '£', NULL, NULL),
(40, 'Quetzales', 'GTQ', 'Q', NULL, NULL),
(41, 'Pounds', 'GGP', '£', NULL, NULL),
(42, 'Dollars', 'GYD', '$', NULL, NULL),
(43, 'Lempiras', 'HNL', 'L', NULL, NULL),
(44, 'Dollars', 'HKD', '$', NULL, NULL),
(45, 'Forint', 'HUF', 'Ft', NULL, NULL),
(46, 'Kronur', 'ISK', 'kr', NULL, NULL),
(47, 'Rupees', 'INR', 'Rp', NULL, NULL),
(48, 'Rupiahs', 'IDR', 'Rp', NULL, NULL),
(49, 'Rials', 'IRR', '﷼', NULL, NULL),
(50, 'Pounds', 'IMP', '£', NULL, NULL),
(51, 'New Shekels', 'ILS', '₪', NULL, NULL),
(52, 'Dollars', 'JMD', 'J$', NULL, NULL),
(53, 'Yen', 'JPY', '¥', NULL, NULL),
(54, 'Pounds', 'JEP', '£', NULL, NULL),
(55, 'Tenge', 'KZT', 'лв', NULL, NULL),
(56, 'Won', 'KPW', '₩', NULL, NULL),
(57, 'Won', 'KRW', '₩', NULL, NULL),
(58, 'Soms', 'KGS', 'лв', NULL, NULL),
(59, 'Kips', 'LAK', '₭', NULL, NULL),
(60, 'Lati', 'LVL', 'Ls', NULL, NULL),
(61, 'Pounds', 'LBP', '£', NULL, NULL),
(62, 'Dollars', 'LRD', '$', NULL, NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', NULL, NULL),
(64, 'Litai', 'LTL', 'Lt', NULL, NULL),
(65, 'Denars', 'MKD', 'ден', NULL, NULL),
(66, 'Ringgits', 'MYR', 'RM', NULL, NULL),
(67, 'Rupees', 'MUR', '₨', NULL, NULL),
(68, 'Pesos', 'MXN', '$', NULL, NULL),
(69, 'Tugriks', 'MNT', '₮', NULL, NULL),
(70, 'Meticais', 'MZN', 'MT', NULL, NULL),
(71, 'Dollars', 'NAD', '$', NULL, NULL),
(72, 'Rupees', 'NPR', '₨', NULL, NULL),
(73, 'Guilders', 'ANG', 'ƒ', NULL, NULL),
(74, 'Dollars', 'NZD', '$', NULL, NULL),
(75, 'Cordobas', 'NIO', 'C$', NULL, NULL),
(76, 'Nairas', 'NGN', '₦', NULL, NULL),
(77, 'Krone', 'NOK', 'kr', NULL, NULL),
(78, 'Rials', 'OMR', '﷼', NULL, NULL),
(79, 'Rupees', 'PKR', '₨', NULL, NULL),
(80, 'Balboa', 'PAB', 'B/.', NULL, NULL),
(81, 'Guarani', 'PYG', 'Gs', NULL, NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', NULL, NULL),
(83, 'Pesos', 'PHP', 'Php', NULL, NULL),
(84, 'Zlotych', 'PLN', 'zł', NULL, NULL),
(85, 'Rials', 'QAR', '﷼', NULL, NULL),
(86, 'New Lei', 'RON', 'lei', NULL, NULL),
(87, 'Rubles', 'RUB', 'руб', NULL, NULL),
(88, 'Pounds', 'SHP', '£', NULL, NULL),
(89, 'Riyals', 'SAR', '﷼', NULL, NULL),
(90, 'Dinars', 'RSD', 'Дин.', NULL, NULL),
(91, 'Rupees', 'SCR', '₨', NULL, NULL),
(92, 'Dollars', 'SGD', '$', NULL, NULL),
(93, 'Dollars', 'SBD', '$', NULL, NULL),
(94, 'Shillings', 'SOS', 'S', NULL, NULL),
(95, 'Rand', 'ZAR', 'R', NULL, NULL),
(96, 'Rupees', 'LKR', '₨', NULL, NULL),
(97, 'Kronor', 'SEK', 'kr', NULL, NULL),
(98, 'Dollars', 'SRD', '$', NULL, NULL),
(99, 'Pounds', 'SYP', '£', NULL, NULL),
(100, 'New Dollars', 'TWD', 'NT$', NULL, NULL),
(101, 'Baht', 'THB', '฿', NULL, NULL),
(102, 'Dollars', 'TTD', 'TT$', NULL, NULL),
(103, 'Lira', 'TRY', '₺', NULL, NULL),
(104, 'Liras', 'TRL', '£', NULL, NULL),
(105, 'Dollars', 'TVD', '$', NULL, NULL),
(106, 'Hryvnia', 'UAH', '₴', NULL, NULL),
(107, 'Pesos', 'UYU', '$U', NULL, NULL),
(108, 'Sums', 'UZS', 'лв', NULL, NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', NULL, NULL),
(110, 'Dong', 'VND', '₫', NULL, NULL),
(111, 'Rials', 'YER', '﷼', NULL, NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', NULL, NULL),
(113, 'Rupees', 'INR', '₹', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'How much do you charge?', '<p>The price depends on the service. You can select a service to see the cost.</p>', '2021-09-30 13:27:56', '2021-09-30 13:27:56'),
(2, 'How long will it take?', '<p>The time is mentioned on each service when you book the service.</p>', '2021-09-30 13:28:23', '2021-09-30 13:28:23'),
(3, 'What is the refund policy?', '<p>There are no refunds.</p>', '2021-09-30 13:29:27', '2021-09-30 13:29:27'),
(4, 'Do you collect the car?', '<p>No we dont</p>', '2021-09-30 13:29:38', '2021-09-30 13:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_09_08_055418_create_categories_table', 1),
(7, '2021_09_08_055438_create_services_table', 1),
(8, '2021_09_09_112048_create_bookings_table', 1),
(9, '2021_09_15_055551_create_reviews_table', 1),
(10, '2021_09_15_055601_create_faqs_table', 1),
(11, '2021_09_15_055617_create_contacts_table', 1),
(12, '2021_09_15_055635_create_commons_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `start_date` date NOT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `description`, `image`, `code`, `type`, `amount`, `minimum_amount`, `start_date`, `start_time`, `end_date`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 'GET 30% OFF', '30% OFF for cleaing', 'offers/9WgQHEtAprqGPGe4zV1PoTjJv2IT3YEuP0Ka55gk.png', 'GARAGE30', 'percentage', 30, 0, '1997-06-05', '22:30', '1977-02-05', '15:29', '2021-11-01 08:40:06', '2021-11-02 08:58:45'),
(2, 'FLAT 30 OFF', 'GET FLAT 30 OFF', 'offers/Y2LMl2zsx8ccT8GNMmlIawEqlk1otlCqzB8OxaiV.png', 'FLAT30OFF', 'flat', 30, 300, '2021-11-02', '15:57', '2021-11-19', '15:57', '2021-11-02 10:28:17', '2021-11-02 10:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `rating` double NOT NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `booking_id`, `service_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(5, 4, 12, 14, 5, 'nznx nananxn', '2021-10-04 11:59:33', '2021-10-04 14:36:51'),
(6, 5, 17, 14, 5, 'excellent services', '2021-10-04 14:55:34', '2021-10-05 09:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` double DEFAULT NULL,
  `minute` double DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `on_inspection` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED NOT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `questions` json DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `image`, `description`, `hour`, `minute`, `price`, `on_inspection`, `category_id`, `subcategory_id`, `questions`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Interior Cleaning', 'service/Bz8uNA8W64uveXfgpQFUE0c6mJL1l40jb9Mgh2GI.jpg', '<p id=\"isPasted\">We know car cleaning can be a chore, but it doesn&rsquo;t need to be. Our massive range of exterior car cleaning products will get your car looking great on the outside, and you feeling good on the inside. We&rsquo;ve got some of the best car cleaning products from leading brands like Autoglym, Meguiars and Karcher, alongside our products trusted by generations.&nbsp;</p>', 1, 10, 30, 0, 1, NULL, '[{\"name\": \"What is your name?\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Is disel?\", \"type\": \"radio\", \"choices\": [{\"name\": \"Yes\"}, {\"name\": \"No\"}]}, {\"name\": \"What\'s your car like?\", \"type\": \"checkbox\", \"choices\": [{\"name\": \"Good\"}, {\"name\": \"Bad\"}, {\"name\": \"Average\"}, {\"name\": \"Very Good\"}]}, {\"name\": \"Car weight?\", \"type\": \"number\", \"choices\": []}, {\"name\": \"Car Year\", \"type\": \"dropdown\", \"choices\": [{\"name\": \"1991\"}, {\"name\": \"1995\"}, {\"name\": \"2000\"}]}]', NULL, '2021-09-17 11:48:40', '2021-09-28 10:56:28'),
(2, 'Interior Cleaning', 'service/Bz8uNA8W64uveXfgpQFUE0c6mJL1l40jb9Mgh2GI.jpg', '<p id=\"isPasted\">We know car cleaning can be a chore, but it doesn&rsquo;t need to be. Our massive range of exterior car cleaning products will get your car looking great on the outside, and you feeling good on the inside. We&rsquo;ve got some of the best car cleaning products from leading brands like Autoglym, Meguiars and Karcher, alongside our products trusted by generations.</p>', 2, 20, 30, 0, 6, NULL, '[{\"name\": \"What is your name?\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Is disel?\", \"type\": \"radio\", \"choices\": [{\"name\": \"Yes\"}, {\"name\": \"No\"}]}, {\"name\": \"What\'s your car like?\", \"type\": \"checkbox\", \"choices\": [{\"name\": \"Good\"}, {\"name\": \"Bad\"}, {\"name\": \"Average\"}, {\"name\": \"Very Good\"}]}, {\"name\": \"Car weight?\", \"type\": \"number\", \"choices\": []}, {\"name\": \"Car Year\", \"type\": \"dropdown\", \"choices\": [{\"name\": \"1991\"}, {\"name\": \"1995\"}, {\"name\": \"2000\"}]}]', NULL, '2021-09-17 11:48:40', '2021-09-30 13:09:18'),
(4, 'Pirelli Tyres', 'service/E4pAG4gO6EaCyYYRcKgqRiEpCDeKhZkzPvVf3YAm.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 3, 30, 402, 0, 6, 12, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:09:04', '2021-10-01 09:46:47'),
(5, 'Dunlop Tyres', 'service/c7dm71HNhE63aDoicmfoYpF4LDpgLV2iMUdtWE4J.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Dunlop</p>', 0, 20, 352, 0, 6, 10, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:09:07', '2021-10-01 09:35:56'),
(6, 'Michelin Tyres', 'service/GvUP8SyMQvBSMKdhWFzjYddiBIzXtK8N8Hr9wa9Y.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Michelin</strong></p>', 1, 20, 212, 0, 6, 10, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:18:55', '2021-10-01 09:52:17'),
(7, 'Michelin Tyres', 'service/PyJUiBGsAWqcW8iIqyGjnWE7spmf9820TsjBdtDX.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"font-size: 16px; color: #202124; font-family: arial, sans-serif; background-color: #ffffff;\">Michelin</strong></p>', 2, 30, 258, 0, 6, 20, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:21:33', '2021-10-01 09:52:22'),
(8, 'Michelin Tyres', 'service/Xwl3D2qKqjjH1sLDa2RPvjMJZ1ENFmgUD79vhkic.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"font-size: 16px; color: #202124; font-family: arial, sans-serif; background-color: #ffffff;\">Michelin</strong></p>', 3, 30, 218, 0, 6, 19, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:21:40', '2021-10-01 09:52:26'),
(9, 'Michelin Tyres', 'service/B4F6x0x8TKk33VLRscaICsg0fZE53Tpnan0Jy7mV.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"font-size: 16px; color: #202124; font-family: arial, sans-serif; background-color: #ffffff;\">Michelin</strong></p>', 1, 50, 215, 0, 6, 12, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:21:44', '2021-10-01 09:51:19'),
(10, 'Michelin Tyres', 'service/SqmZ1Ii17Z7dIEmHze7eenAQYKGuKja5gK1Mrjm3.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"font-size: 16px; color: #202124; font-family: arial, sans-serif; background-color: #ffffff;\">Michelin</strong></p>', 2, 50, 289, 0, 6, 21, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:22:29', '2021-10-01 09:51:15'),
(11, 'Michelin Tyres', 'service/A9UEvKR0Sp1vY0Lb49w0u7KwmjklVjZTLLNDcNr2.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"font-size: 16px; color: #202124; font-family: arial, sans-serif; background-color: #ffffff;\">Michelin</strong></p>', 4, 50, 210, 0, 6, 22, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:22:56', '2021-10-01 09:51:11'),
(12, 'Michelin Tyres', 'service/kW9UplxQ0X3DJ5x2uNqIAR0JKnRgauYWxnKlSDah.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"font-size: 16px; color: #202124; font-family: arial, sans-serif; background-color: #ffffff;\">Michelin</strong></p>', 2, 42, 275, 0, 6, 23, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:23:36', '2021-10-05 09:00:52'),
(13, 'Michelin Tyres', 'service/BXbb11ZhVCbznHLNPNoq5qylfwkKZ5r7ICWr3VSr.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form&nbsp;<strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Michelin</strong></p>', 2, 42, 214, 0, 6, 11, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:23:38', '2021-10-05 09:00:48'),
(14, 'Dunlop Tyres', 'service/GbhfP2dYt404IX9S0QTxRDendf1Vt0PQO0mx7Agi.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Dunlop</p>', 1, 46, 125, 0, 6, 11, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:25:08', '2021-10-05 09:00:44'),
(15, 'Dunlop Tyres', 'service/uSydr3ZjfIta6QPLRCFrNulRfPhMda6XJrhDy9pM.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Dunlop</p>', 1, 42, 124, 0, 6, 12, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:26:15', '2021-10-05 09:00:38'),
(16, 'Dunlop Tyres', 'service/psIs9pQpsriBALsUl7qGJqu6WeZBOwUneXppDqs2.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Dunlop</p>', 2, 41, 452, 0, 6, 23, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:27:02', '2021-10-05 09:00:35'),
(17, 'Dunlop Tyres', 'service/THdtbd6QWSzFp51g3Rs61USu0TLV0YVGRxMnC6h5.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Dunlop</p>', 8, 52, 542, 0, 6, 19, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:31:32', '2021-10-05 09:00:31'),
(18, 'Pirelli Tyres', 'service/jOvOA2neh9n5d845pD9E6l0by3nfBe5k7AIzIbmj.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 8, 41, 269, 0, 6, 10, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:41:53', '2021-10-05 09:00:26'),
(19, 'Pirelli Tyres', 'service/dmc7W0f8SosIEW0ZjWzarEW7QfxVYQLwNy9gJXQd.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 7, 41, 274, 0, 6, 19, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:43:38', '2021-10-05 09:00:22'),
(20, 'Pirelli Tyres', 'service/4mhLTUtlP9QPpCdzWtsNRIbzIOxqIsi3zpvdD5qX.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 5, 41, 277, 0, 6, 20, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:44:10', '2021-10-05 09:00:17'),
(21, 'Pirelli Tyres', 'service/iCNqNJGIWTm5Mqy6J7k014ELmioLDr9s64FnVxnC.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 2, 57, 279, 0, 6, 21, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:44:57', '2021-10-05 08:59:36'),
(22, 'Pirelli Tyres', 'service/OSJ89q4GqZvFj29RhzzRF7lgl4Wlsac1lEHJuSvB.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 4, 41, 278, 0, 6, 22, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:45:24', '2021-10-05 08:59:31'),
(23, 'Pirelli Tyres', 'service/1DFyFP2yYPRhUGqQrXaMXSEPhS8w1JAoNeSm7bYy.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 4, 42, 275, 0, 6, 11, '[{\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:45:32', '2021-10-05 08:59:27'),
(24, 'Pirelli Tyres', 'service/NeN6NfSNoiQGZbNp2lODKnRuXt9Qy55HThrMbjTT.jpg', '<p>Replace all 4 tyres with these excellent quality tyres form Pirelli Tyres</p>', 2, 58, 279, 0, 6, 23, '[{\"name\": \"Tyre Size\", \"type\": \"text\", \"choices\": []}, {\"name\": \"Vehicle Reg Number\", \"type\": \"text\", \"choices\": []}]', NULL, '2021-10-01 09:45:51', '2021-10-05 08:59:22'),
(25, 'Panel Painting', 'service/l5ryCp4jlYHKKPNX9kp4INHzAbDm7w0NfTKKlvJh.jpg', '<p>Panel Painting</p>', 3, 36, 258, 0, 5, 13, NULL, NULL, '2021-10-01 09:59:56', '2021-10-05 08:59:18'),
(26, 'Underbody Painting', 'service/QvZAU2QqB121CSKyoY7K8AcoPP9fz1HPRiG0QRka.jpg', '<p>Underbody Painting</p>', 3, 25, 589, 0, 5, 13, NULL, NULL, '2021-10-01 10:01:12', '2021-10-05 08:59:14'),
(27, 'Full Car Painting', 'service/BMLykCZw5ckQyeSNiNLCNRx6X5qb8LMPAbIqDbks.jpg', '<p>Car Spraying</p>', 3, 25, 369, 0, 5, 13, NULL, NULL, '2021-10-01 10:01:15', '2021-10-05 08:59:10'),
(28, 'Minor Dent Repair', 'service/urS4N0qPJMz3bYqvaDkkcQj0tUiqIISwQj0X1pSm.jpg', '<p>Minor Dent Repair</p>', 2, 24, 57, 0, 5, 14, NULL, NULL, '2021-10-01 10:05:42', '2021-10-05 08:59:06'),
(29, 'Scratch Repair', 'service/oybGf1CoL1WMv9VxQofFh6DtIp9RRldt6tuwWr8d.jpg', '<p>Scratch Repair</p>', 1, 24, 269, 0, 5, 14, NULL, NULL, '2021-10-01 10:07:01', '2021-10-05 08:59:02'),
(30, 'Dent Repair', 'service/RwI0QlBMdS6hwtzEH3RSMl9UNTTKOs0pqRQknps6.jpg', '<p>Dent Repair</p>', 5, 42, 258, 0, 5, 14, NULL, NULL, '2021-10-01 10:07:03', '2021-10-05 08:59:51'),
(31, 'Full Car Rusting Work', 'service/cbcwRU5qXNt6L7NzkOpdbrts8Cpv9u58qJAgo3aT.jpg', '<p>Full Car Rusting Work</p>', 2, 24, 254, 0, 5, 15, NULL, NULL, '2021-10-01 10:28:09', '2021-10-05 08:58:38'),
(32, 'Semi Car Rusting Work', 'service/jnYMvHOokdC0ywpcvJUMPzqMcXGYoKshlguthPnB.jpg', '<p>Semi Car Rusting Work</p>', 3, 25, 254, 0, 5, 15, NULL, NULL, '2021-10-01 10:28:37', '2021-10-05 08:58:34'),
(33, 'Small Car Restoration', 'service/bunTxVbvmfrzaDh7AkYFpZUeUSHOmhiuCT8SimY2.jpg', '<p>Small Car Restoration</p>', 2, 58, 369, 0, 5, 24, NULL, NULL, '2021-10-01 10:31:19', '2021-10-05 08:58:29'),
(34, 'Medium Car Restoration', 'service/zgwALJ6wf4FlSfUb4f71xkoEZOvEGVto2rqGgUHY.jpg', '<p>Medium Car Restoration</p>', 2, 51, 258, 0, 5, 24, NULL, NULL, '2021-10-01 10:32:02', '2021-10-05 08:58:24'),
(35, 'Small Car Restoration', 'service/MfU9burztVa9KKtp6mLP8vUaMQ119GwbMtmrNQNw.jpg', '<p>Small Car Restoration</p>', 8, 45, 147, 0, 5, 24, NULL, NULL, '2021-10-01 10:32:26', '2021-10-05 08:58:20'),
(36, 'Windshield Repair', 'service/Y47oQGigRsGZJKgyzyMNRM0nlJRDxHeYfQzlTZZj.jpg', '<p>Windshield Repair</p>', 3, 56, 24, 0, 5, 25, NULL, NULL, '2021-10-01 10:36:13', '2021-10-05 08:58:15'),
(37, 'Bonnet Repair', 'service/dMqUKDuF1rYrGHFD0WgNnMgWSecPKifsydRRUCSB.jpg', '<p>Bonnet Repair</p>', 2, 52, 47, 0, 5, 25, NULL, NULL, '2021-10-01 10:37:11', '2021-10-05 08:58:11'),
(38, 'Shape Repair', 'service/YCgH8Q8AkudBZ4wAcS6hZXrHegGwyHdc00Z92FmW.jpg', '<p>Shape Repair</p>', 5, 52, 58, 0, 5, 25, NULL, NULL, '2021-10-01 10:39:10', '2021-10-05 08:58:06'),
(39, 'Brake Pads', 'service/wmg6tvgpvxzO6j4uf0P3wY1ilZAFnMACXX5H2j2k.jpg', '<p>Brake Pads</p>', 7, 45, 25, 0, 4, 26, NULL, NULL, '2021-10-01 10:42:32', '2021-10-05 08:58:02'),
(40, 'Disk Repair', 'service/OYOleOtEGXxCadKhrcVC0Q0dZ1HHCHNlQqGiksag.jpg', '<p>Disk Repair</p>', 7, 44, 69, 0, 4, 26, NULL, NULL, '2021-10-01 10:43:48', '2021-10-05 08:57:58'),
(41, 'Brake Oil', 'service/Y61yxjMOO3Bd1Q0OsjYG10yFTHb36BJUPHjetlQD.jpg', '<p>Brake Oil</p>', 5, 22, 14, 0, 4, 26, NULL, NULL, '2021-10-01 10:44:50', '2021-10-05 08:57:32'),
(42, 'Speedometer', 'service/iVBfoeepQs1AGIBnpT4H1TkOW1qlBALDKUhSZqrS.jpg', '<p>Speedometer</p>', 5, 11, 26, 0, 4, 27, NULL, NULL, '2021-10-01 10:46:36', '2021-10-05 08:57:28'),
(43, 'Headlight', 'service/QcLlKFi10l8jXN1034om2rHI8yPW2PoMhg8o67iR.jpg', '<p>Headlight</p>', 2, 55, 58, 0, 4, 27, NULL, NULL, '2021-10-01 10:47:39', '2021-10-05 08:57:23'),
(44, 'Backlight', 'service/G4rljjMdpAxXRAxxpQscjd6eilNr0Ycx7A1nFFpf.jpg', '<p>Backlight</p>', 3, 55, 69, 0, 4, 27, NULL, NULL, '2021-10-01 10:48:54', '2021-10-05 08:57:19'),
(45, 'Engine Oil', 'service/6LFkP1fKxtp9HgYuawAJNnZiR7CccpW3lVPZgy2Y.jpg', '<p>Engine</p>', 1, 55, 25, 0, 4, 28, NULL, NULL, '2021-10-01 10:51:18', '2021-10-05 08:57:15'),
(46, 'Full engine service', 'service/KDJtcn5Lz2E2n3t9QEpUkruUEHADfUWBsGpsvTqg.jpg', '<p>Full engine service</p>', 2, 55, 36, 0, 4, 28, NULL, NULL, '2021-10-01 10:52:31', '2021-10-05 08:57:10'),
(47, 'Charge Batteries', 'service/6vv4GzLpeLlP1gfb1DwWhl6g6e93rgyZKSPBa5Na.webp', '<p>Charge Batteries</p>', 1, 44, 25, 0, 4, 29, NULL, NULL, '2021-10-01 10:53:42', '2021-10-05 08:57:06'),
(48, 'Exhausts Service 1', 'service/6infOLfY9B1wuxaId6mt6zaoiK00jZex5BEZ9KGy.jpg', '<p>Exhausts Service 1</p>', 4, 44, 36, 0, 4, 30, NULL, NULL, '2021-10-01 10:56:44', '2021-10-05 08:57:02'),
(49, 'Exhausts Service 3', 'service/3PSDPqtLDIaSbytzy4R6PH3GLCRawkvzTaR7eka4.jpg', '<p>Exhausts Service 3</p>', 1, 33, 27, 0, 4, 30, NULL, NULL, '2021-10-01 10:57:34', '2021-10-05 08:56:54'),
(50, 'Exhausts Service 2', 'service/W0PuYwVn2EbvikKUhGoSFxu3REDMVk2qxAglK9Em.jpg', '<p>Exhausts Service 2</p>', 1, 22, 25, 0, 4, 30, NULL, NULL, '2021-10-01 10:57:35', '2021-10-05 08:56:49'),
(51, 'Gears Repair 1', 'service/m1KMEJecxjuSj1cPNJUpcjWQVImZnXX0AdyQWMsV.jpg', '<p>Gears Repair 1</p>', 1, 44, 58, 0, 4, 31, NULL, NULL, '2021-10-01 10:59:52', '2021-10-05 08:56:21'),
(52, 'Gears Repair 2', 'service/hb2BgNGs3szwXcvuSOpuciLtNk8A46s1zJjMNqCv.jpg', '<p>Gears Repair 2</p>', 11, 44, 59, 0, 4, 31, NULL, NULL, '2021-10-01 10:59:55', '2021-10-05 08:56:18'),
(53, 'Gears Repair 3', 'service/ZMKNufhKCCvk4zyer7PTZQiyUfeH3252gtLwRzPQ.jpg', '<p>Gears Repair 3</p>', 5, 22, 47, 0, 4, 31, NULL, NULL, '2021-10-01 10:59:57', '2021-10-05 08:56:13'),
(54, 'FULL  AC SERVICE', 'service/Sf7ROQNOAUEqSbC54vcKtx0Hyq6nF6oaCeHSDS5R.jpg', '<p><span style=\"color: #212529; font-family: Source Sans Pro, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol;\">FULL&nbsp; AC SERVICE</span></p>', 2, 44, 699, 0, 3, 7, NULL, NULL, '2021-10-01 11:03:34', '2021-10-05 08:56:10'),
(55, 'AC Filter', 'service/kAwZ5pDppI9RNK9GCwBPW1NYY2anIWP4RdljVN0z.jpg', '<p>AC Filter</p>', 4, 22, 69, 0, 3, 7, NULL, NULL, '2021-10-01 11:04:09', '2021-10-05 08:56:06'),
(56, 'AC Gas', 'service/NOtU8gel1Jv3EPj2S7gLzaqfVbFcKFA1vjVj3AmN.jpg', '<p>AC Gas</p>', 4, 55, 48, 0, 3, 7, NULL, NULL, '2021-10-01 11:04:14', '2021-10-05 08:56:03'),
(57, 'COOLING Services 1', 'service/CzCe67pDOKBNEIpfES5S5CwK4K4eqUH7zvPCgVE1.png', '<p>COOLING Services 1</p>', 5, 6, 58, 0, 3, 9, NULL, NULL, '2021-10-01 11:08:46', '2021-10-05 08:55:57'),
(58, 'COOLING Services 2', 'service/KAXRtIlyKfxmSUFEzYTEYQw0iaR0os17DsquNlZp.png', '<p>COOLING Services 2</p>', 5, 44, 87, 0, 3, 9, NULL, NULL, '2021-10-01 11:08:48', '2021-10-05 08:55:50'),
(59, 'COOLING Services 3', 'service/gvcgyVufWJimHBif4NPa97R77mQdO5fxCGY8GJNl.png', '<p>COOLING Services 3</p>', 5, 45, 48, 0, 3, 9, NULL, NULL, '2021-10-01 11:08:49', '2021-10-05 08:55:46'),
(60, 'Lubricant Oil 1', 'service/pQzEYvnAtUCY7WaTuaKn6goLih7aQ6P22TUM91YU.jpg', '<p>Lubricant Oil 1</p>', 1, 55, 25, 0, 3, 33, NULL, NULL, '2021-10-01 11:10:36', '2021-10-05 08:55:41'),
(61, 'Lubricant Oil 2', 'service/s5FPbN78Z2kEKEYhNiNVrZIEvQcYHvokLPj6HxK1.jpg', '<p>Lubricant Oil 2</p>', 10, 11, 36, 0, 3, 33, NULL, NULL, '2021-10-01 11:10:38', '2021-10-05 08:55:11'),
(62, 'Lubricant Oil 3', 'service/3dhRibvxo12l7z8AlXQSovygKC7MIRL6EOC4mnPH.jpg', '<p>Lubricant Oil 3</p>', 2, 33, 69, 0, 3, 33, NULL, NULL, '2021-10-01 11:10:40', '2021-10-05 08:55:07'),
(63, 'Outdoor Detailing', 'service/d6Wyrd63NJVhqaxxPV7eSvMu0cigJ8elW9UknakF.webp', '<p>Outdoor Detailing</p>', 2, 12, 14, 0, 2, 16, NULL, NULL, '2021-10-01 11:14:03', '2021-10-05 08:55:02'),
(64, 'Outdoor Detailing', 'service/OIOC37gSaEkyqP5Z0dXpgahsqw1J5YdeCf67dfwV.webp', '<p>Outdoor Detailing</p>', 5, 12, 25, 0, 2, 17, NULL, NULL, '2021-10-01 11:14:11', '2021-10-05 08:54:58'),
(65, 'Outdoor Detailing', 'service/Bhf1rezVAZGijo78ZuCjRmncirCICQV6DaxfuO41.webp', '<p>Outdoor Detailing</p>', 2, 44, 47, 0, 2, 34, NULL, NULL, '2021-10-01 11:14:39', '2021-10-05 08:54:53'),
(66, 'Outdoor Detailing', 'service/TF2sCTnX231qsuER5D8qg7dtUBqaIOvVMyoo15VR.webp', '<p>Outdoor Detailing</p>', 5, 47, 85, 0, 2, 35, NULL, NULL, '2021-10-01 11:15:06', '2021-10-05 08:54:49'),
(67, 'Outdoor Detailing', 'service/JzWG3nFfJfwNJVrIV0EbkchhmOnLAlkyZnO62cAw.webp', '<p>Outdoor Detailing</p>', 4, 45, 96, 0, 2, 36, NULL, NULL, '2021-10-01 11:15:32', '2021-10-05 08:54:44'),
(68, 'Outdoor Detailing', 'service/2NBMGdLEEQb3J4Gv9xudVWVUqoldDsaoNi8eRYhR.webp', '<p>Outdoor Detailing</p>', 6, 55, 52, 0, 2, 38, NULL, NULL, '2021-10-01 11:15:53', '2021-10-05 08:54:40'),
(69, 'Outdoor Detailing', 'service/xxtQW9X6gGcpiXSJzxgn8b2cNrNQ40Ml3o9QR9Yv.webp', '<p>Outdoor Detailing</p>', 5, 55, 41, 0, 2, 37, NULL, NULL, '2021-10-01 11:16:37', '2021-10-05 08:54:35'),
(70, 'Outdoor Detailing', 'service/QpSj0vcle6zQbiUxhJ7pyLe7u8IQpX0qKr7Hueen.webp', '<p>Outdoor Detailing</p>', 4, 55, 93, 0, 2, 39, NULL, NULL, '2021-10-01 11:17:19', '2021-10-05 08:54:31'),
(71, 'Outdoor Detailing', 'service/2dhpTvExj8ULFL0N2W4OqVWsHXpg7Mv7oLWYhq5Z.webp', '<p>Outdoor Detailing</p>', 6, 44, 16, 0, 2, 42, NULL, NULL, '2021-10-01 11:18:17', '2021-10-05 08:53:54'),
(72, 'Outdoor Detailing', 'service/OasKvOkNt3S7MnwSZDjmEsreb7azFZvmX9435o1J.webp', '<p>Outdoor Detailing</p>', 7, 55, 93, 0, 2, 41, NULL, NULL, '2021-10-01 11:18:20', '2021-10-05 08:53:50'),
(73, 'Outdoor Detailing', 'service/zKVjMQ19sdnOIweq2yKKWUUxIkGbXpRzFzFjUEoA.webp', '<p>Outdoor Detailing</p>', 6, 7, 72, 0, 2, 40, NULL, NULL, '2021-10-01 11:18:22', '2021-10-05 08:53:44'),
(74, 'Interior Detailing', 'service/UHKntX6az8pXBe0jiO8wRf5hfLzKe0EgEnx6gWJF.jpg', '<p>Interior Detailing</p>', 6, 55, 14, 0, 2, 16, NULL, NULL, '2021-10-01 11:24:21', '2021-10-05 08:53:38'),
(75, 'Interior Detailing', 'service/345DFqekUrMuHJKN47Z3tGHjaiEmuFHpnsgbSJqo.jpg', '<p>Interior Detailing</p>', 5, 44, 16, 0, 2, 17, NULL, NULL, '2021-10-01 11:24:23', '2021-10-05 08:53:33'),
(76, 'Interior Detailing', 'service/M0vO66J4kYZpL259e4gqXwfb1qhpO3JFCAY2qiPP.jpg', '<p>Interior Detailing</p>', 7, 44, 21, 0, 2, 34, NULL, NULL, '2021-10-01 11:24:25', '2021-10-05 08:53:28'),
(77, 'Interior Detailing', 'service/x2knd4kDb0ewHltQBsh0y6oDX7ocYPfnkIzHfpFj.jpg', '<p>Interior Detailing</p>', 3, 11, 20, 0, 2, 35, NULL, NULL, '2021-10-01 11:24:28', '2021-10-05 08:53:24'),
(78, 'Interior Detailing', 'service/kziVUusGBR7iiS3tMThtlTtoWmPoacKfJZexTLQV.jpg', '<p>Interior Detailing</p>', 1, 22, 23, 0, 2, 36, NULL, NULL, '2021-10-01 11:24:30', '2021-10-05 08:53:19'),
(79, 'Interior Detailing', 'service/vbD6DjxHM9Vcsq8LlvbevDriUo6gkhgsXmsXB7Q2.jpg', '<p>Interior Detailing</p>', 2, 44, 25, 0, 2, 37, NULL, NULL, '2021-10-01 11:24:33', '2021-10-05 08:53:15'),
(80, 'Interior Detailing', 'service/5XbfSTqJZMKykem5EIgnPHJm6aRx6bVmG6IgANVo.jpg', '<p>Interior Detailing</p>', 4, 11, 27, 0, 2, 38, NULL, NULL, '2021-10-01 11:24:35', '2021-10-05 08:53:11'),
(81, 'Interior Detailing', 'service/1PdzAc7OuSqqw6Fk5rrl2niTS65OHn7bDfRxkUXq.jpg', '<p><strong>Interior Detailing</strong></p>', 1, 2, 29, 0, 2, 39, NULL, NULL, '2021-10-01 11:24:37', '2021-10-05 08:52:44'),
(82, 'Interior Detailing', 'service/0WuGJwD5lSr5MpYmD3h9BXh0vGT9H59wD2D0FcHi.jpg', '<p>Interior Detailing</p>', 2, 44, 31, 0, 2, 40, NULL, NULL, '2021-10-01 11:24:39', '2021-10-05 08:52:38'),
(83, 'Interior Detailing', 'service/y3lq93UoGmBWqfv9p9X9NtLXO1FKOKOHIFfTtn0y.jpg', '<p>Interior Detailing</p>', 6, 11, 33, 0, 2, 41, NULL, NULL, '2021-10-01 11:24:41', '2021-10-05 08:52:34'),
(84, 'Interior Detailing', 'service/x1GNiv4TqZoAXHyFGaEsmna9DSdWT6DX6RISWQ3y.jpg', '<p>Interior Detailing</p>', 7, 11, 35, 0, 2, 42, NULL, NULL, '2021-10-01 11:24:43', '2021-10-05 08:52:28'),
(85, 'Full Detailing', 'service/fTyw0MAM2YcFEc6tPpELvhWflC4uqiWJgHfSOhal.jpg', '<p>Full Detailing</p>', 5, 20, 87, 0, 2, 16, NULL, NULL, '2021-10-01 11:30:47', '2021-10-05 08:52:21'),
(86, 'Full Detailing', 'service/70Rye0RLydPMAdCcxT4fjctNzlNXWoMRE3lxXCgb.jpg', '<p>Full Detailing</p>', 4, 11, 98, 0, 2, 17, NULL, NULL, '2021-10-01 11:30:49', '2021-10-05 08:52:17'),
(87, 'Full Detailing', 'service/NUqYfDUTHTibuCpvymUCQalXoON5vA6DXZZXuyLE.jpg', '<p>Full Detailing</p>', 5, 22, 77, 0, 2, 34, NULL, NULL, '2021-10-01 11:30:50', '2021-10-05 08:52:13'),
(88, 'Full Detailing', 'service/LXWQtTW9qiGHoFieu3VGEkWUZBWdBz6Cn4Nru8wz.jpg', '<p>Full Detailing</p>', 2, 11, 96, 0, 2, 35, NULL, NULL, '2021-10-01 11:30:52', '2021-10-05 08:52:09'),
(89, 'Full Detailing', 'service/IjzDEY69Dn8vFaVozZLygUYP8rVdyIyOA9ehywqz.jpg', '<p>Full Detailing</p>', 4, 12, 77, 0, 2, 36, NULL, NULL, '2021-10-01 11:30:53', '2021-10-05 08:52:05'),
(90, 'Full Detailing', 'service/0A5SHmg1CLeplAPDrUbLaF56VxEDSGxGuJV33V4p.jpg', '<p>Full Detailing</p>', 3, 11, 88, 0, 2, 37, NULL, NULL, '2021-10-01 11:30:55', '2021-10-05 08:52:00'),
(91, 'Full Detailing', 'service/IfMM0JjZj12rRCRKtwGYiqwWEm7VNrbFLCDff4IY.jpg', '<p>Full Detailing</p>', 3, 3, 89, 0, 2, 38, NULL, NULL, '2021-10-01 11:30:57', '2021-10-05 08:51:37'),
(92, 'Full Detailing', 'service/FrHjYxoDrXELX9DvCa2WZr9llYt3cokOLkYGv4fr.jpg', '<p>Full Detailing</p>', 2, 2, 88, 0, 2, 39, NULL, NULL, '2021-10-01 11:30:59', '2021-10-05 08:51:32'),
(93, 'Full Detailing', 'service/aFoMhx8yECCe8MR1HGSdETzIkOdYFNVENdO6UKEV.jpg', '<p>Full Detailing</p>', 1, 1, 22, 0, 2, 40, NULL, NULL, '2021-10-01 11:31:01', '2021-10-05 08:51:27'),
(94, 'Full Detailing', 'service/xuQtTGIigGNJfsAbNB6xmLQT76tt34d8L2dGKqK1.jpg', '<p>Full Detailing</p>', 2, 22, 58, 0, 2, 41, NULL, NULL, '2021-10-01 11:31:03', '2021-10-05 08:02:56'),
(95, 'Full Detailing', 'service/QIeCHg2QoMN2nG7Qe0jBOPizcowIhaJAGh2WRMD9.jpg', '<p>Full Detailing</p>', 1, 11, 85, 0, 2, 42, NULL, NULL, '2021-10-01 11:31:08', '2021-10-05 08:02:45'),
(96, 'Car Washing 1', 'service/HNPES4KRe6gGMKVHnHQ8C3iSGwEuKRwlSRobZNma.jpg', '<p>Car Washing 1</p>', 10, 20, 25, 0, 1, 43, NULL, NULL, '2021-10-01 12:08:49', '2021-10-05 08:02:36'),
(97, 'Car Washing 2', 'service/wmfeKifYR44azPPZFYSlxxoImipMj2wxeGR215iC.jpg', '<p>Car Washing 2</p>', 9, 19, 25, 0, 1, 43, NULL, NULL, '2021-10-01 12:09:18', '2021-10-05 08:02:29'),
(98, 'Car Washing 3', 'service/lTRgKAoH0X1uljM3MEJlyasewVXNr7Ii9WhsJnOY.jpg', '<p>Car Washing 3</p>', 8, 18, 69, 0, 1, 43, NULL, NULL, '2021-10-01 12:09:40', '2021-10-05 08:02:23'),
(99, 'Safe Engine Wash', 'service/OLm962VbpnTry816M4PD3yH8hrVushmujFnK2uLB.jpg', '<p><span style=\"color: #212529; font-family: \'Source Sans Pro\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">Safe Engine Wash</span></p>', 7, 17, 14, 0, 1, 44, NULL, NULL, '2021-10-01 12:10:47', '2021-10-05 08:02:19'),
(100, 'Safe Engine Wash 2', 'service/xI0lSOtFG0Ou4QIimdnNXEZOVQb4uBxTjDG31V0c.jpg', '<p><span style=\"color: #212529; font-family: \'Source Sans Pro\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">Safe Engine Wash 2</span></p>', 6, 16, 25, 0, 1, 44, NULL, NULL, '2021-10-01 12:10:49', '2021-10-05 08:02:13'),
(101, 'Safe Engine Wash 3', 'service/9bXSl8z1gZz6ONkZd6XcNhyblnD7ohHlIp0HOCs1.jpg', '<p><span style=\"color: #212529; font-family: \'Source Sans Pro\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 16px; background-color: #ffffff;\">Safe Engine Wash 3</span></p>', 4, 14, 25, 0, 1, 44, NULL, NULL, '2021-10-01 12:10:51', '2021-10-05 08:01:34'),
(102, 'Car Polishing 1', 'service/AoW3FRWQECk39nQOXwoIozsPoNnqxwbdMGMRTMx5.jpg', '<p>Car Polishing 1</p>', 3, 14, 58, 0, 1, 45, NULL, NULL, '2021-10-01 12:13:22', '2021-10-05 08:01:28'),
(103, 'Car Polishing 2', 'service/brLDxxIostjPwdNkDQT3A8zrEDpc7kt9SKyHgE9a.jpg', '<p>Car Polishing 2</p>', 2, 13, 25, 0, 1, 45, NULL, NULL, '2021-10-01 12:13:24', '2021-10-05 08:01:23'),
(104, 'Car Polishing 3', 'service/Xewye0vPMKJOPPGeYJo3Wz5Z4Bw4pJfuktG0pZ0b.jpg', '<p>Car Polishing 3</p>', 1, 12, 65, 0, 1, 45, NULL, NULL, '2021-10-01 12:13:26', '2021-10-05 08:01:15'),
(105, 'Rubbing Polish 1', 'service/aL8dFKxOUzyO2yTz01dxfIa9I2Lkgmy56Ri5ggFz.jpg', '<p>Rubbing Polish 1</p>', 5, 15, 27, 0, 1, 46, NULL, NULL, '2021-10-01 12:15:20', '2021-10-05 08:01:44'),
(106, 'Rubbing Polish 2', 'service/7CWbmq3vbDaizEOOX5skwiNOV1gSl4P6fYsQNerT.jpg', '<p>Rubbing Polish 2</p>', 4, 11, 92, 0, 1, 46, NULL, NULL, '2021-10-01 12:15:22', '2021-10-05 08:00:51'),
(107, 'Rubbing Polish 3', 'service/ZGhGUFPdkx8wZ11lZwP4mclIRejI8fzcxJ4Uh8Rq.jpg', '<p>Rubbing Polish 3</p>', 5, 30, 36, 0, 1, 46, NULL, NULL, '2021-10-01 12:15:23', '2021-10-05 08:00:46'),
(108, 'Foam Wash 1', 'service/19SxdPL4JTlmj9eLmzNPI0fsBMn4O6jLittO9dTz.jpg', '<p>Foam Wash 1</p>', 4, 25, 125, 0, 1, 47, NULL, NULL, '2021-10-01 12:17:58', '2021-10-05 08:00:39'),
(109, 'Foam Wash 2', 'service/NG0jOEKsRKUij6MZ8SkcGU3X5RVhqrZhA12dvErV.jpg', '<p>Foam Wash 2</p>', 2, 10, 258, 0, 1, 47, NULL, NULL, '2021-10-01 12:18:00', '2021-10-05 08:00:35'),
(110, 'Foam Wash 3', 'service/juL1pxgqrBfmoKoA4mjHwEgLtbBrZPjJbPoIcq0V.jpg', '<p>Foam Wash 3</p>', 5, 20, 350, 0, 1, 43, NULL, NULL, '2021-10-01 12:18:02', '2021-10-04 13:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'currency', 'USD', NULL, '2021-11-02 06:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(9, 'sliders/VkGOxN4bz89mxbL7jNh3Ltw6CkmyuX0qWbwy194z.jpg', '2021-10-01 08:46:07', '2021-10-01 08:46:07'),
(11, 'sliders/JtcQYUBo7C8PvLlm3f3YAr2P5CtL0WlBRoBG0ZJG.jpg', '2021-10-04 13:37:26', '2021-10-04 13:37:26'),
(12, 'sliders/oR6EWM58C2fhyVL0bYmrujOjgOPG96IW3uoypngd.jpg', '2021-10-04 13:37:33', '2021-10-04 13:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `type`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'GST', 'percentage', 18, '2021-11-01 08:40:26', '2021-11-01 08:40:26'),
(2, 'VAT', 'flat', 10, '2021-11-01 08:41:13', '2021-11-01 08:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `type`, `stripe_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Demo Admin', 'admin@demo.com', '2021-09-16 12:04:48', '+447500844944', '$2y$10$L6CGM6vegLUbymsTUZvWEet2XsS5XybgRaEe97S7zEjNr/x/WAaJm', NULL, NULL, 'admin', 'cus_KUqJHLKjCd7o9I', 'iEiP5O1I3cnsqNHJax9EDLlrYSE0MYtHP253qUpv9FRybiy320GybjrHftn1', '2021-09-16 12:04:48', '2021-09-17 07:48:47'),
(4, 'V1 Technologies', 'test@gmail.com', NULL, '0123456789', '$2y$10$OAacReExPlTL3WerSyQHHOOAUSOWpPBIiglUShGu9./wEnxi4qRq2', NULL, NULL, 'user', 'cus_KUqJHLKjCd7o9I', NULL, '2021-09-20 08:12:04', '2021-09-27 08:56:43'),
(14, 'test', 'v1test@gmail.com', NULL, '8537016670', '$2y$10$H1uLHwDNlBQFoQ/YAfzbvu2Z9l3/IuM4Tmnk4fJwbKY2c867P6hze', NULL, NULL, 'user', 'cus_KVkJP5Dmf2Pdmz', NULL, '2021-10-31 18:31:37', '2021-10-31 18:31:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commons`
--
ALTER TABLE `commons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_settings`
--
ALTER TABLE `contact_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `commons`
--
ALTER TABLE `commons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_settings`
--
ALTER TABLE `contact_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
