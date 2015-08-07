-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2014 at 12:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE IF NOT EXISTS `usertable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usr` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `regIP` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trackOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `totalCount` int(11) NOT NULL,
  `currList` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `feedback` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usr` (`usr`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `usr`, `pass`, `email`, `regIP`, `dt`, `trackOrder`, `count`, `totalCount`, `currList`, `feedback`) VALUES
(1, 'udhav.sethi', '5ae016bf8b0336a3f0d8996525a00da2', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:13:57', '', 0, 0, '', ''),
(2, 'admin', 'f88fff0e4b61ac93ccf16799b104c52f', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:27:12', '[8,6,10,4,2,5,3,11,1,13,14,7,9]', 0, 0, '', ''),
(3, 'newuser', '7a388f5482881cc1c309d046b54a3b01', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:36:21', '', 0, 0, '', ''),
(4, 'afdfvc', 'e6d74ccdc1b9c98848bf8e76f4c3d842', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:36:33', '', 0, 0, '', ''),
(5, 'raone', 'decf84c849188f0b71f6d6b4290ff27f', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:38:37', '', 0, 0, '', ''),
(6, 'admin2', '59be3d0c58558e163d3d2f227bc17470', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:41:39', '', 0, 0, '', ''),
(7, 'user1', '4c232f596451be4df0c44ad1f5d49eff', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:44:09', '', 0, 0, '', ''),
(8, 'sdgfvsv', 'dba8c2a328d941ccd3c2458e7ff617be', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:44:54', '', 0, 0, '', ''),
(9, 'afvasdv', 'dd1cf3161bd37ddae0b96cdb027b9932', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:46:03', '', 0, 0, '', ''),
(10, 'shaktimaan', '1e9282e71653f0ad122967d08dfac52b', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:49:52', '', 0, 0, '', ''),
(11, 'roger', '6bf9f285d9cb5c3f39cd2797391337d8', 'es12b1022@iith.ac.in', '::1', '2014-05-19 18:50:33', '', 0, 0, '', ''),
(12, 'udhav', '62c3afaa776b981c6bb7a46c0556f67c', 'es12b1022@iith.ac.in', '::1', '2014-05-19 19:25:08', '[7,5,9,10,3,1]', 2, 0, '{"trackid":["/tracks/151676070","/tracks/121245757","/tracks/97317846","/tracks/64253897","/tracks/128206790","/tracks/82103122","/tracks/100638909","/tracks/126492000","/tracks/148007334","/tracks/89138323","/tracks/19762856","/tracks/132115924","/tracks/10026955","/tracks/136696679","/tracks/91165944","/tracks/129555997","/tracks/109667271","/tracks/144040343","/tracks/26923302","/tracks/135739523","/tracks/59114816"],"name":["Summer Of 69 Unplugged","Man Of The Year","Treasure","Master Of puppets","2 On","Do Me A Favor","New Slaves","When I Lost My Bet","Good Kisser","If I Die Young","Strobe","Who Do You Love","Broken","Dark Horse","True North","The Man","Stay the night","I Dont Dance","Ass Back Home","Wild Wild Love","Nothing Else Matters"],"artist":["Bryan Adams","Schoolboy Q","Bruno Mars","Metallica","Tinashe Feat Schoolboy Q","Sour Stone","DJ Snake","Dillinger Escape Plan","Usher","The Band Perry","Deadmau5","YG Feat Drake","Seether Feat Amy Lee","Katy Pery","Bad Religion","Aloe Blacc","Zedd","Lee Brice","Gym Class Heroes","Pitbull Feat G.R.L. ","Metallica"]}', 'first comment<br>second comment!<br>Third comment bitches!!<br>Aaaaaand you guys are fucking awesome!!!!!<br>Hi guys I wanna say this... Keep going!!<br>and hence.. the comments system is on the roll!<br>just commentin..!<br>new feedback for you!<br>latest comment<br>OYE CHOTU..!!<br>hello there');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
