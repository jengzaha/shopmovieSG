-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 10:17 AM
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
-- Database: `product3`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_movie`
--

CREATE TABLE `add_movie` (
  `id` int(25) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `directer` varchar(100) NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `categroy` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `you_tube_link` varchar(250) NOT NULL,
  `show` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `decription` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_movie`
--

INSERT INTO `add_movie` (`id`, `movie_name`, `directer`, `release_date`, `categroy`, `language`, `you_tube_link`, `show`, `action`, `decription`, `image`, `status`) VALUES
(1, 'Bleach: Thousand-Year Blood War', 'titie kubo', '11 October 2022', 'Adventure', 'Thai', 'https://youtube.com/embed/IUvcnt0yL-c', '13.00', 'running', 'Substitute Soul Reaper Ichigo Kurosaki spends his days fighting against Hollows, dangerous evil spirits that threaten Karakura Town. Ichigo carries out his quest with his closest allies: Orihime Inoue, his childhood friend with a talent for healing; Yasutora Sado, his high school classmate with supe', 'bleach.jpg', 1),
(2, 'Bleach: Thousand-Year Blood War part3', 'titie kubo', '2 may 2024', 'Adventure ', 'japan', '', '', 'upcoming', 'Substitute Soul Reaper Ichigo Kurosaki spends his days fighting against Hollows, dangerous evil spirits that threaten Karakura Town. Ichigo carries out his quest with his closest allies: Orihime Inoue, his childhood friend with a talent for healing; Yasutora Sado, his high school classmate with supe', 'bleach3.jpg', 1),
(3, 'Danshi Koukousei no Nichijou', 'Takamatsu Shinchi', '10 januly 2012', 'Comedy', 'Thai', 'https://youtube.com/embed/BsQj0RYzW98', '18:15', 'running', 'Roaming the halls of the all-boys Sanada North High School are three close comrades: the eccentric ringleader with a hyperactive imagination Hidenori, the passionate Yoshitake, and the rational and prudent Tadakuni. Their lives are filled with giant robots, true love, and intense drama... in their c', 'Danshi.jpg', 1),
(4, 'Kemono Jihen', 'Shou Aimoto', '16 December 2023', 'science', 'japan', '', '', 'upcoming', '', 'digi.jpg', 1),
(17, 'Jujutsu Kaisen Season 2', 'Akutami Gege', '6  July 2023', 'Comedy', 'japan', 'https://youtube.com/embed/O6qVieflwqs', '13.00,14.15', 'running', 'The story begins by returning to the past, where Gojo Satoru, Geto Suguru, and Leiri Shoko are all sophomore students in a vocational college. At the age of only 16', 'juju.jpg', 1),
(18, 'Kimi wa Houkago Insomnia', 'Kimisomu', '20 April 2023', 'Romantic', 'japan', 'https://youtube.com/embed/MUpnWo6vfyM', '13.00,14.15', 'running', 'High schooler Ganta Nakami has trouble falling asleep most nights. As a result, he is irritable at school, always searching for an opportunity to find a secluded place to doze off. On the other hand, Isaki Magari is a free spirit who is well liked by her friends, but no one is aware of her sleep dis', 'school.jpg', 1),
(19, 'Deaimon', 'Midorimatsu', '6 April 2022', 'Drama', 'Japan, English', 'https://youtube.com/embed/pGeJPm3a9rg', '10:00', 'running', 'Ten years have passed since Nagomu Irino left his home to pursue his dream that ultimately failed. He finally decides to return after hearing that his father—owner of the Kyoto sweets store Ryokushou—has been hospitalized. Worrying that no one would inherit the shop if his father passes away, Nagomu', 'Deaimon.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Jainam', 'jainmdg@gmail.com', 'admin', '1'),
(2, 'Jeng', 'polticoza@outlook.com', '0870808453', '0');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `show_time` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `totalseat` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `booking_date` varchar(100) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_number` varchar(25) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  `cvv` int(5) NOT NULL,
  `custemer_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `uid`, `movie`, `show_time`, `seat`, `totalseat`, `price`, `payment_date`, `booking_date`, `card_name`, `card_number`, `ex_date`, `cvv`, `custemer_id`) VALUES
(6, 7, 'Jujutsu Kaisen Season 2', '14.15', 'C7', '1', '150', 'Mon-08-23 ', 'Tue-08-23 ', '7210', '123456789', '2025-12-22', 242, 794758803),
(7, 7, 'Kimi wa Houkago Insomnia', '13.00', 'B7', '1', '150', 'Mon-08-23 ', 'Tue-08-23 ', 'dol', '1234567777', '2023-12-11', 444, 1128322171),
(8, 8, 'Bleach: Thousand-Year Blood War', '13.00', 'C4', '1', '150', 'Mon-08-23 ', 'Tue-08-23 ', 'kokkok', '00000000000', '2023-05-16', 0, 831855776),
(9, 9, 'Kimi wa Houkago Insomnia', '14.15', 'C2', '1', '150', 'Mon-08-23 ', 'Tue-08-23 ', 'hook', '3333333333', '2023-07-12', 222, 933165277),
(10, 9, 'Jujutsu Kaisen Season 2', '13.00', 'B6', '1', '150', 'Mon-08-23 ', 'Tue-08-23 ', 'pop', '0000000000', '2023-12-16', 111, 1484870832),
(11, 6, 'Jujutsu Kaisen Season 2', '14.15', 'D9', '1', '150', 'Tue-09-23 ', 'Wed-09-23 ', '123456789', 'mod', '2001-12-16', 242, 2000547405),
(12, 8, 'Bleach: Thousand-Year Blood War', '13.00', 'G10', '1', '100', 'Mon-09-23 ', 'Tue-09-23 ', '123456789', 'jj', '2023-12-12', 111, 1410477062),
(13, 10, 'Danshi Koukousei no Nichijou', '18:15', 'E9,E10', '2', '300', 'Mon-09-23 ', 'Tue-09-23 ', '123456789', 'kom', '2023-10-16', 721, 726649042),
(14, 11, 'Jujutsu Kaisen Season 2', '13.00', 'G8,E8,E9', '3', '400', 'Tue-09-23 ', 'Wed-09-23 ', '123456789', 'jne', '2023-12-12', 777, 1337482470);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `massage` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `massage`) VALUES
(61, 'com', 'jeng@outlook.com', 'kiki'),
(59, 'jeng', 'polticoza@outlook.com', 'sawasdeekub');

-- --------------------------------------------------------

--
-- Table structure for table `theater_show`
--

CREATE TABLE `theater_show` (
  `id` int(25) NOT NULL,
  `show` varchar(100) NOT NULL,
  `theater` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theater_show`
--

INSERT INTO `theater_show` (`id`, `show`, `theater`) VALUES
(1, '21:00', '1'),
(2, '15:00', '1'),
(3, '18:00', '1'),
(4, '18:15', '2'),
(5, '15:15', '2'),
(6, '21:15', '1'),
(7, '13.00', '1'),
(8, '14.15', '1'),
(9, '10:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `city`, `password`, `image`) VALUES
(6, 'nuly321', 'polticp9@gmail.com', 986503907, 'lol', 'Polti1234', 'DSC07064.jpg'),
(7, 'jokeza', 'polticoza@outlook.com', 2121212121, 'koi', 'Polti1345', '3211.png'),
(8, 'jeng', 'jeng@outlook.com', 1111111111, 'zoo', 'Love1345', 'ohya.jpg'),
(9, 'juu', 'phonlarid.go@rmuti.ac.th', 2147483647, 'dok', 'Love710', 'Screenshot_10.png'),
(10, 'zoo', 'polticoza@outlook.com', 986503907, 'lol', 'Love73100', '372684130_681508630668487_8460499534084157695_n.jpg'),
(11, 'hoob', 'polticoza@outlook.com', 986503907, 'lol', 'Love73101', '355166723_148159924939884_6771455011803228203_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_movie`
--
ALTER TABLE `add_movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theater_show`
--
ALTER TABLE `theater_show`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_movie`
--
ALTER TABLE `add_movie`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `theater_show`
--
ALTER TABLE `theater_show`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
