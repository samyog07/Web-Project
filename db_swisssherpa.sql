-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2018 at 10:04 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_swisssherpa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `content` text NOT NULL,
  `order_item` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `title`, `slug`, `image`, `featured`, `display`, `author`, `tags`, `excerpt`, `content`, `order_item`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'News Title', 'news-title', 'news-title.jpeg', 1, 1, 'subas', 'tags', '<p>sdssdsadsadsa</p>\r\n', '<p>DSAdsad</p>\r\n', 1, '2018-06-07 13:05:26', 'Rajen Kaji Shrestha', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contactmail`
--

CREATE TABLE `tbl_contactmail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contactmail`
--

INSERT INTO `tbl_contactmail` (`id`, `name`, `email`, `contact_no`, `country`, `message`, `created_at`) VALUES
(1, 'Biplav Raj Raut', 'biplavraut@gmail.com', '9841180064', 'Nepal', 'asdfasdf ad afa dsfasdfas', '2017-05-03 17:39:49'),
(2, 'Biplav Raj Raut', 'biplavraut@gmail.com', '9841180064', 'Nepal', 'asdasasasda asda', '2017-05-03 17:40:57'),
(3, 'Assent Educon', 'admin@example.com', '9818150150', 'USA, Newzland', 'xcfzdf asd ', '2017-05-03 18:05:45'),
(4, 'Youtube', 'dutshab1@gmail.com', '9841180064', 'Nepala', 'adasdads', '2017-05-03 18:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `image` varchar(255) NOT NULL,
  `menu_category` varchar(255) NOT NULL,
  `order_item` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `faq_question` varchar(255) NOT NULL,
  `faq_answer` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `faq_question`, `faq_answer`, `updated_at`, `updated_by`) VALUES
(5, 'who is your daddy? big daddy', '<p>&nbsp;</p>\r\n\r\n<p>Daddy swami ji... daddy yankeee bitches</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-08-19 07:46:17', 0),
(6, 'who is your daddy? ulalala', '<p>&nbsp;</p>\r\n\r\n<p>daddy swami ji</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-08-19 07:46:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menubuilder`
--

CREATE TABLE `tbl_menubuilder` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` tinyint(4) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `description` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `child` tinyint(4) NOT NULL,
  `order_item` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menubuilder`
--

INSERT INTO `tbl_menubuilder` (`id`, `title`, `slug`, `image`, `category`, `display`, `description`, `parent_id`, `child`, `order_item`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(5, 'About Us', 'about-us', 'about-us.jpg', 0, 1, '<p>lado muji lado</p>\r\n', 0, 1, 2, '2017-09-07 02:47:11', 'Rajen Kaji Shrestha', '2018-08-16 11:31:49', 'Rajen Kaji Shrestha'),
(12, 'Welcome to Sherpa Adventure', 'welcome-to-sherpa-adventure', '', 0, 1, '<p><span style=\"font-size:18px\">At Sherpa &amp; Swiss Adventures we believe in responsible tourism. We recognize the fragility of or Himalayan home and we organize our treks, expeditions, and tours with an effort to have a minimal impact on both the environment and the culture of the region we visit. We also actively support educational opportunities for the Sherpa people through the NGO Networking Education for Poverty Alleviation among Locals (NEPAL).</span></p>\r\n', 0, 0, 1, '2018-06-05 15:59:42', 'Rajen Kaji Shrestha', '2018-08-16 09:16:36', 'Rajen Kaji Shrestha'),
(15, 'Tour the Indian Subcontinent', 'tour-the-indian-subcontinent', 'franchise-opening.jpg', 0, 1, '<p>We have packages that take you to your choice of any place you want to visit in the&nbsp;Indian subcontinent&nbsp;with a proper guidance at a reasonable cost.</p>\r\n', 0, 0, 9, '2018-06-10 11:47:18', 'Rajen Kaji Shrestha', '2018-08-16 09:56:26', 'Rajen Kaji Shrestha'),
(16, 'Trekking Routes', 'trekking-routes', 'trekking-routes.jpeg', 0, 1, '<p>We help you plan and provide a better itinerary and trekking routes through out your trek into the wilderness.</p>\r\n', 0, 0, 6, '2018-06-10 11:49:10', 'Rajen Kaji Shrestha', '2018-08-16 09:30:59', 'Rajen Kaji Shrestha'),
(17, 'Expedition', 'expedition', 'expedition.jpg', 0, 1, '<p>Sherpa Swiss takes you on an expedition of your lifetime. From the vast open and green landscapes to the highest altitudes in the Himalayas.</p>\r\n', 0, 0, 10, '2018-06-10 11:52:42', 'Rajen Kaji Shrestha', '2018-08-16 10:05:17', 'Rajen Kaji Shrestha'),
(18, 'Heli Trekking', 'heli-trekking', 'heli-trekking.png', 0, 1, '<p>Eyewitness the breathtaking majestic Himalayan range from Everest to Annapurna. The Heli ride that is made in heaven.</p>\r\n', 0, 0, 11, '2018-08-16 15:59:28', 'Rajen Kaji Shrestha', '0000-00-00 00:00:00', ''),
(19, 'Be the first to Know', 'be-the-first-to-know', '', 0, 1, '<p>Be the first to know about any offer we provide. Stay Connected to our community.</p>\r\n', 0, 0, 12, '2018-08-16 16:04:40', 'Rajen Kaji Shrestha', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsandevent`
--

CREATE TABLE `tbl_newsandevent` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `author` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `excerpt` text NOT NULL,
  `content` text NOT NULL,
  `order_item` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_newsandevent`
--

INSERT INTO `tbl_newsandevent` (`id`, `type`, `title`, `slug`, `image`, `featured`, `display`, `author`, `location`, `datetime`, `excerpt`, `content`, `order_item`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(6, 0, 'Event Title', 'event-title', 'event-title.jpg', 1, 1, 'admin', 'kathmandu', '1999-02-20 19:11:00', '<p>something</p>\r\n', '<p>something</p>\r\n', 1, '2018-06-13 13:07:33', 'Rajen Kaji Shrestha', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlets`
--

CREATE TABLE `tbl_outlets` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_outlets`
--

INSERT INTO `tbl_outlets` (`id`, `title`, `link`, `image`, `content`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(4, 'Coffee School', 'http://www.kaffeinecoffeeschool.com/', '1806121528802490.jpg', '<p>lorem span dolor amit&nbsp;lorem span dolor amit&nbsp;lorem span dolor amit</p>\r\n', '2018-06-12 17:06:30', 'Rajen Kaji Shrestha', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projectmngt`
--

CREATE TABLE `tbl_projectmngt` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `project_date` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `excerpt` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projectmngt`
--

INSERT INTO `tbl_projectmngt` (`id`, `title`, `slug`, `project_date`, `comment`, `excerpt`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(17, 'My Project', 'my-project', '04/02/2017 - 05/12/2017', '[{\"comment\":\"powan\",\"created_at\":\"2017-04-04 14:54:30\",\"user_id\":\"1\"}]', 'asdfasdfa', 0, '2017-04-02 16:28:38', 'Biplav Raj Raut', '2017-04-04 09:09:30', ''),
(18, 'My 2nd Project', 'my-2nd-project', '04/02/2017 - 05/03/2017', '[{\"comment\":\"sdfs\",\"created_at\":\"2017-04-04 14:53:56\",\"user_id\":\"1\"},{\"comment\":\"powan\",\"created_at\":\"2017-04-04 14:54:25\",\"user_id\":\"1\"}]', 'asdfasdfasdfas', 0, '2017-04-02 18:05:18', 'Biplav Raj Raut', '2017-04-07 06:40:51', ''),
(19, 'NAya Project', 'naya-project', '04/03/2017 - 04/03/2017', '[{\"comment\":\"powan\",\"created_at\":\"2017-04-04 14:54:19\",\"user_id\":\"1\"}]', 'asdfasdf', 0, '2017-04-03 18:39:16', 'Rajen Kaji Shrestha', '2017-04-07 07:26:24', ''),
(20, 'NAya Projectsf ', 'naya-projectsf', '04/03/2017 - 04/03/2017', '[{\"comment\":\"asda\",\"created_at\":\"2017-04-04 14:53:45\",\"user_id\":\"1\"},{\"comment\":\"powan\",\"created_at\":\"2017-04-04 14:54:10\",\"user_id\":\"1\"}]', 'asdfasdfasdfasdf', 0, '2017-04-03 18:39:33', 'Rajen Kaji Shrestha', '2017-04-06 08:29:56', ''),
(21, 'adaa', 'adaa', '04/06/2017 - 05/03/2017', '[{\"comment\":\"my\'\",\"created_at\":\"2017-04-07 12:26:09\",\"user_id\":\"4\"},{\"comment\":\"\\\"adidas\\\"\",\"created_at\":\"2017-04-07 12:45:27\",\"user_id\":\"4\"},{\"comment\":\"\'kkhh\",\"created_at\":\"2017-04-07 13:02:46\",\"user_id\":\"4\"},{\"comment\":\"s\",\"created_at\":\"2017-04-17 12:39:18\",\"user_id\":\"7\"}]', 'asdfasdf', 0, '2017-04-06 14:15:06', 'Rajen Kaji Shrestha', '2017-04-17 06:54:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sitesettings`
--

CREATE TABLE `tbl_sitesettings` (
  `id` int(11) NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `Getintouch` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `po_box` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sitesettings`
--

INSERT INTO `tbl_sitesettings` (`id`, `site_title`, `short_description`, `about`, `Getintouch`, `site_logo`, `address`, `phone`, `mobile`, `fax`, `po_box`, `email`, `facebook`, `twiter`, `linkedin`, `google`) VALUES
(1, 'swisssherpa  ', 'swisssherpa is awesome', '<p>\r\n\r\n</p><p></p><blockquote></blockquote><blockquote></blockquote><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<b>SHERPA AND SWISS ADVENTURES TEAM</b><br><br>Lhakpa Gyalzen Sherpa founded Sherpa &amp; Swiss Adventures in 1993 after returning to Nepal from a year of work at Air Glaciers, a helicopter operator in Sion, Switzerland. At Air Glaciers he worked as a flight assistant and medical evacuation coordinator working side by side with Swiss mountaineers and medical staff. During his time in Switzerland, he improved his fluency in French (in addition to Sherpa, Nepali, Hindi, English, and Tibetan which he already spoke) and found similarities between the Swiss appreciation for their mountain surroundings and his own Sherpa community. With the support and encouragement of his Swiss mountaineering friends, he named his new company Sherpa &amp; Swiss Adventures as a symbolic melding of these two mountain peoples living on opposite sides of the globe.<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>The founder of Sherpa &amp; Swiss Adventures, Mr. Lhakpa Gyalzen Sherpa, is a socially responsible and multi-dynamic person who is also the founder of Easy Heli Charter Services, Manang Air (P) Ltd. and Vayodha Hospitals (P) Ltd. Vayodha Hospital was the first of its kind in Nepal to be designed with rooftop helipad which has helped to speed up the rescue mission.<br>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; Lhakpa\'s extensive work in both the tourism industry and in mountain rescues provide him with a unique set of skills and experience that gives Sherpa &amp; Swiss Adventures the ability to provide not only incredible Himalayan adventures to its clients but also to ensure their utmost safety. In addition to organizing treks, expeditions, and tours for its many clients, Sherpa &amp; Swiss Adventures has organized mountain rescues and medical evacuations throughout Nepal. Lhakpa has received several awards and honors by grateful clients, embassies, and the mountaineering community. In 2010 he was honored by Embassies of Switzerland and Australia for, “skillful and outstanding management of mountain rescue operations for travelers in Nepal.” That same year he was awarded “Kumar Khadga Bikram Bravery Award-2009” by the Nepal Mountaineering Association for his work in mountain rescues. The following year he was recognized by the Union International Alpinists Association (UIAA) for his role in rescuing international mountaineers who climb Nepal’s mountains. In the year 2014, he is honored with \"Rastra Sewa Samman-2014\" and \"Gantabya Nepal Publication Award\".<br><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; At Sherpa &amp; Swiss Adventures we believe in responsible tourism. We recognize the fragility of or Himalayan home and we organize our treks, expeditions, and tours with an effort to have a minimal impact on both the environment and the culture of the region we visit. We also actively support educational opportunities for the Sherpa people through the NGO Networking Education for Poverty Alleviation among Locals (NEPAL).<br><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; We take pride in our high quality, personal service and organized enjoyable and successful treks, tours, and expeditions. We have a staff of highly experienced guides, porters, and cooks. All with many years of providing the highest quality of service to our clients. Our reputation is one of the best in Himalaya. Apart from treks and expeditions, we organize ground arrangements including escorted transfer, sight-seeing, hotel reservation, flight confirmation, bicycling tours, filming, paragliding, excursion to many mountain resorts, peak climbing, culture tours, mountain flight by aircraft or helicopter, adventurous trips like heli-skiing, -tours, white water rafting, wildlife safaris, and more. Please let us work with you to provide you with an unforgettable adventure in the Himalayan regions of Nepal, Tibet, India, Bhutan, and Sikkim. We recognize our clients have their own specific interests, we will be happy to design a trip just for you. We specialize in tailor-made treks and tours that are an adventure of a lifetime.heli<br><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; We are fully licensed, registered and insured. You may have complete confidence that your financial security is fully guaranteed when you book your treks and tours with Sherpa &amp; Swiss Adventures. Sherpa &amp; Swiss Adventures P. Ltd. is registered at the office of the company register (Reg. 161/049/050) in 1993 and licensed by the Ministry of Culture, Tourism and Civil Aviation and is also the member of Trekking Agent Association of Nepal, the member of Nepal Mountaineering Association and Himalayan Rescue.<br></p><p></p>                    <p></p>', '<p>Stay in TOUCH&nbsp; bro!!</p>', 'logo.png', 'Mandikhatar,Kathmandu,Nepal', '+ 977 - 1 - 4371022 / 4377283  ', '+977 0000000000', 'N/A', '1805', 'info@swisssherpa.com', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sub_title` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slide_status` enum('0','1') NOT NULL,
  `slide_order` int(11) NOT NULL,
  `short_content` text,
  `inserted` datetime NOT NULL,
  `inserted_by` varchar(50) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `sub_title`, `link`, `image`, `slide_status`, `slide_order`, `short_content`, `inserted`, `inserted_by`, `updated`, `updated_by`) VALUES
(10, 'Durbarmarg', 'Kaffeine Durbarmarg', '#', '1806051528194442.jpg', '1', 1, '<p>Learn how to balance your city job with nature.</p>\r\n', '2018-06-05 16:12:22', 'admin', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `roles` int(11) NOT NULL,
  `status` tinyint(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `slug`, `image`, `post`, `email`, `user_name`, `password`, `contact`, `address`, `roles`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(7, 'Rajen Kaji Shrestha', 'rajen-kaji-shrestha', 'rajen-kaji-shrestha.png', 'Administrator', 'rajen_shrestha5@hotmail.com', 'admin', '$2y$10$26Lq62z5ikyfUGoFex33nOhz6XFOieSROsAwtLPQ56Nto6r1SSx0y', '9843079819', 'Hadigaun, Kathmandu', 0, 1, '2017-03-22 18:37:53', 'Biplav Raj Raut', '0000-00-00 00:00:00', ''),
(9, 'subas nyaupane', 'subas-nyaupane', 'subas-nyaupane.png', 'Devloper', 'subas.nyaupane143@gmail.com', 'subasadmin', '$2y$10$2XubKbeIa74slbYPXUlvNeTz6YRD1qDlJgqCjQvSxKBdRm0PrAqny', '9846904756', 'kalanki, Kathmandu', 0, 1, '2018-06-05 15:53:43', 'Rajen Kaji Shrestha', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contactmail`
--
ALTER TABLE `tbl_contactmail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menubuilder`
--
ALTER TABLE `tbl_menubuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_newsandevent`
--
ALTER TABLE `tbl_newsandevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_projectmngt`
--
ALTER TABLE `tbl_projectmngt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sitesettings`
--
ALTER TABLE `tbl_sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_contactmail`
--
ALTER TABLE `tbl_contactmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_menubuilder`
--
ALTER TABLE `tbl_menubuilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_newsandevent`
--
ALTER TABLE `tbl_newsandevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_outlets`
--
ALTER TABLE `tbl_outlets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_projectmngt`
--
ALTER TABLE `tbl_projectmngt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_sitesettings`
--
ALTER TABLE `tbl_sitesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
