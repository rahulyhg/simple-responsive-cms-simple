-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2016 at 01:09 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automobili`
--
CREATE DATABASE IF NOT EXISTS `automobili` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;


use automobili;
-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(48, 'Automobili'),
(51, 'Motori');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(12, 137, 'test', 'test@test.com', 'lorem lorem', 'approved', '2016-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(113, 48, 'Opel', 'pedja', 'pedja', '2016-07-18', 'Opel-Logo-2011-Slogan-Vector.svg.png', '<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;"><strong>Adam Opel AG</strong>&nbsp;(<strong>Opel</strong>,&nbsp;<small style="font-size: 11.9px;">pronounced</small>) is a German automobile manufacturer headquartered in&nbsp;<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="R&uuml;sselsheim" href="https://en.wikipedia.org/wiki/R%C3%BCsselsheim">R&uuml;sselsheim</a>,&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Hesse" href="https://en.wikipedia.org/wiki/Hesse">Hesse</a>, Germany, and a subsidiary of&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="General Motors" href="https://en.wikipedia.org/wiki/General_Motors">General Motors Company</a>. The company designs, engineers, manufactures and distributes Opel-branded passenger vehicles, light commercial vehicles and vehicle parts for distribution in Africa, Asia, Europe and South America. Opel designed and manufactured vehicles are also sold under the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Buick" href="https://en.wikipedia.org/wiki/Buick">Buick</a>&nbsp;brand in the United States, Canada, Mexico, and China, the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Holden" href="https://en.wikipedia.org/wiki/Holden">Holden</a>&nbsp;brand in Australia and New Zealand, and the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Vauxhall Motors" href="https://en.wikipedia.org/wiki/Vauxhall_Motors">Vauxhall</a>&nbsp;brand in the United Kingdom.</p>\r\n<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;">Opel traces its roots to a sewing machine manufacturer founded by&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Adam Opel" href="https://en.wikipedia.org/wiki/Adam_Opel">Adam Opel</a>&nbsp;in 1862. The company began manufacturing bicycles in 1886 and produced its first automobile in 1899.</p>\r\n<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;">Opel became a share-limited company (German:&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Aktiengesellschaft" href="https://en.wikipedia.org/wiki/Aktiengesellschaft">Aktiengesellschaft</a>) in 1929; United States&ndash;based General Motors took a majority stake in Opel that same year. General Motors assumed full control in 1931 and today Adam Opel AG is a wholly owned subsidiary of General Motors Company. Although Adam Opel AG continues to be a share-limited company, shares of the company are not publicly listed. Adam Opel AG is the parent company of General Motors UK Limited, better known as Vauxhall, and various other General Motors subsidiaries.</p>', 'opel', '', 'published', 40),
(136, 48, 'Ford', 'dodaj', 'pedja', '2016-07-18', '250px-Ford_Motor_Company_Logo.svg.png', '<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;">The&nbsp;<strong>Ford Motor Company</strong>&nbsp;(commonly referred to simply as&nbsp;<strong>Ford</strong>) is an&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="United States" href="https://en.wikipedia.org/wiki/United_States">American</a>&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Multinational corporation" href="https://en.wikipedia.org/wiki/Multinational_corporation">multinational</a>&nbsp;automaker headquartered in&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Dearborn, Michigan" href="https://en.wikipedia.org/wiki/Dearborn,_Michigan">Dearborn, Michigan</a>, a suburb of<a style="text-decoration: none; color: #0b0080; background: none;" title="Detroit" href="https://en.wikipedia.org/wiki/Detroit">Detroit</a>. It was founded by&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Henry Ford" href="https://en.wikipedia.org/wiki/Henry_Ford">Henry Ford</a>&nbsp;and incorporated on June 16, 1903. The company sells automobiles and commercial vehicles under the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="List of Ford vehicles" href="https://en.wikipedia.org/wiki/List_of_Ford_vehicles">Ford</a>&nbsp;brand and most luxury cars under the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Lincoln Motor Company" href="https://en.wikipedia.org/wiki/Lincoln_Motor_Company">Lincoln</a>&nbsp;brand. Ford also owns Brazilian&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Sport utility vehicle" href="https://en.wikipedia.org/wiki/Sport_utility_vehicle">SUV</a>&nbsp;manufacturer,&nbsp;<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="Troller" href="https://en.wikipedia.org/wiki/Troller">Troller</a>, and Australian performance car manufacturer&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Ford Performance Vehicles" href="https://en.wikipedia.org/wiki/Ford_Performance_Vehicles">FPV</a>. In the past it has also produced tractors and automotive components. Ford owns a 2.1% stake in&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Mazda" href="https://en.wikipedia.org/wiki/Mazda">Mazda</a>&nbsp;of Japan, an 8% stake in&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Aston Martin" href="https://en.wikipedia.org/wiki/Aston_Martin">Aston Martin</a>&nbsp;of the United Kingdom, and a 49% stake in&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Jiangling Motors" href="https://en.wikipedia.org/wiki/Jiangling_Motors">Jiangling</a>&nbsp;of China. It also has a number of joint-ventures, one in China (<a style="text-decoration: none; color: #0b0080; background: none;" title="Changan Ford Mazda" href="https://en.wikipedia.org/wiki/Changan_Ford_Mazda">Changan Ford Mazda</a>), one in Taiwan (<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="Ford Lio Ho" href="https://en.wikipedia.org/wiki/Ford_Lio_Ho">Ford Lio Ho</a>), one in Thailand (<a style="text-decoration: none; color: #0b0080; background: none;" title="AutoAlliance Thailand" href="https://en.wikipedia.org/wiki/AutoAlliance_Thailand">AutoAlliance Thailand</a>), one in Turkey (<a style="text-decoration: none; color: #0b0080; background: none;" title="Ford Otosan" href="https://en.wikipedia.org/wiki/Ford_Otosan">Ford Otosan</a>), and one in Russia (<a style="text-decoration: none; color: #0b0080; background: none;" title="Ford Sollers" href="https://en.wikipedia.org/wiki/Ford_Sollers">Ford Sollers</a>). It is listed on the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="New York Stock Exchange" href="https://en.wikipedia.org/wiki/New_York_Stock_Exchange">New York Stock Exchange</a>&nbsp;and is controlled by the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Ford family tree" href="https://en.wikipedia.org/wiki/Ford_family_tree">Ford family</a>, although they have minority ownership.<sup id="cite_ref-4" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;"><a style="text-decoration: none; color: #0b0080; background: none;" href="https://en.wikipedia.org/wiki/Ford_Motor_Company#cite_note-4">[4]</a></sup></p>\r\n<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;">Ford introduced methods for large-scale manufacturing of cars and large-scale management of an industrial workforce using elaborately engineered manufacturing sequences typified by moving&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Assembly line" href="https://en.wikipedia.org/wiki/Assembly_line">assembly lines</a>; by 1914 these methods were known around the world as&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Fordism" href="https://en.wikipedia.org/wiki/Fordism">Fordism</a>. Ford''s former UK subsidiaries<a style="text-decoration: none; color: #0b0080; background: none;" title="Jaguar Cars" href="https://en.wikipedia.org/wiki/Jaguar_Cars">Jaguar</a>&nbsp;and&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Land Rover" href="https://en.wikipedia.org/wiki/Land_Rover">Land Rover</a>, acquired in 1989 and 2000 respectively, were sold to&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Tata Motors" href="https://en.wikipedia.org/wiki/Tata_Motors">Tata Motors</a>&nbsp;in March 2008. Ford owned the Swedish automaker&nbsp;<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="Volvo cars" href="https://en.wikipedia.org/wiki/Volvo_cars">Volvo</a>&nbsp;from 1999 to 2010.<sup id="cite_ref-5" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;"><a style="text-decoration: none; color: #0b0080; background: none;" href="https://en.wikipedia.org/wiki/Ford_Motor_Company#cite_note-5">[5]</a></sup>&nbsp;In 2011, Ford discontinued the&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Mercury (automobile)" href="https://en.wikipedia.org/wiki/Mercury_(automobile)">Mercury</a>&nbsp;brand, under which it had marketed entry-level luxury cars in the United States, Canada, Mexico, and the Middle East since 1938.</p>', 'Ford', '', 'published', 3),
(137, 48, 'Mercedes-Benz', 'dodaj', 'pedja', '2016-07-18', 'Mercedes_benz_silverlogo.png', '<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;"><strong>Mercedes-Benz</strong>&nbsp;(<small style="font-size: 11.9px;">German pronunciation:</small>&nbsp;&nbsp;is a global automobile manufacturer and a division of the German company&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Daimler AG" href="https://en.wikipedia.org/wiki/Daimler_AG">Daimler AG</a>. The brand is known for&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Luxury vehicle" href="https://en.wikipedia.org/wiki/Luxury_vehicle">luxury vehicles</a>, buses,&nbsp;<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="Coach (vehicle)" href="https://en.wikipedia.org/wiki/Coach_(vehicle)">coaches</a>, and trucks. The headquarters of Mercedes-Benz is in&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Stuttgart" href="https://en.wikipedia.org/wiki/Stuttgart">Stuttgart</a>,&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Baden-W&uuml;rttemberg" href="https://en.wikipedia.org/wiki/Baden-W%C3%BCrttemberg">Baden-W&uuml;rttemberg</a>, Germany.</p>\r\n<p style="margin: 0.5em 0px; line-height: 22.4px; color: #252525; font-family: sans-serif; font-size: 14px;">The name first appeared in 1926 under&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Daimler-Benz" href="https://en.wikipedia.org/wiki/Daimler-Benz">Daimler-Benz</a>, but traces its origins to&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Daimler-Motoren-Gesellschaft" href="https://en.wikipedia.org/wiki/Daimler-Motoren-Gesellschaft">Daimler-Motoren-Gesellschaft</a>''s 1901&nbsp;<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="Mercedes (car)" href="https://en.wikipedia.org/wiki/Mercedes_(car)">Mercedes</a>&nbsp;and to&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Karl Benz" href="https://en.wikipedia.org/wiki/Karl_Benz">Karl Benz</a>''s 1886&nbsp;<a style="text-decoration: none; color: #0b0080; background: none;" title="Benz Patent-Motorwagen" href="https://en.wikipedia.org/wiki/Benz_Patent-Motorwagen">Benz Patent-Motorwagen</a>, which is widely regarded as the first gasoline powered&nbsp;<a class="mw-redirect" style="text-decoration: none; color: #0b0080; background: none;" title="Automobile" href="https://en.wikipedia.org/wiki/Automobile">automobile</a>. Mercedes-Benz''s slogan is "The Best or Nothing". Mercedes-Benz is one of the most recognized automotive brands worldwide.<sup id="cite_ref-1" class="reference" style="line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;"><a style="text-decoration: none; color: #0b0080; background: none;" href="https://en.wikipedia.org/wiki/Mercedes-Benz#cite_note-1">[1]</a></sup></p>', 'Mercedes-Benz', '', 'published', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(43, 'pedja', '$2y$12$n3RfA1PgDboarlE8EFXQg.uzF1SncmZEBrW/yMjBaqyPuFKsci1I6', 'Predrag', 'Rajic', 'pedja@pedja.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(45, 'test', '$2y$10$w0d.kHpWqFCOxZQnUzt3.eHH9acSeJc7VyN6BNdbvhYiOQfoMHIXq', 'test', 'test', 'test@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(58, 's69ca0va3erpfqs8ke2uhsef73', 1468840117);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
