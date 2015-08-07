-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2014 at 12:33 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alpha`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `artist` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `artist`, `trackid`) VALUES
(1, 'Summer Of 69 Unplugged', 'Bryan Adams', '/tracks/151676070'),
(2, 'Bottoms Up', 'Brantley Gilbert', '/tracks/134618021'),
(3, 'This Is How We Roll', 'Florida Georgia Line Feat Luke Bryan', '/tracks/130385480'),
(4, 'Give Me Back My Hometown', 'Eric Church', '/tracks/142637963'),
(5, 'Teardrops On My Guitar', 'Taylor Swift', '/tracks/92792433'),
(6, 'Cop Car', 'Keith Urban', '/tracks/140567030'),
(7, 'Beachin', 'Jake Owen', '/tracks/128506396'),
(8, 'I Dont Dance', 'Lee Brice', '/tracks/144040343'),
(9, 'Whiskey In My Water', 'Tyler Farr', '/tracks/141073358'),
(10, 'Let Her Go', 'Passenger', '/tracks/121856682'),
(11, 'We Are Tonight', 'Billy Currington', '/tracks/126905851'),
(12, 'Yeah', 'Joe Nichols', '/tracks/114759476'),
(13, 'Wheres It At', 'Dustin Lynch', '/tracks/144668402'),
(14, 'If I Die Young', 'The Band Perry', '/tracks/89138323'),
(15, 'Whatever Shes Got', 'David Nail', '/tracks/127198680');

-- --------------------------------------------------------

--
-- Table structure for table `electronic`
--

CREATE TABLE IF NOT EXISTS `electronic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `trackc` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `electronic`
--

INSERT INTO `electronic` (`id`, `name`, `artist`, `trackc`, `trackid`) VALUES
(1, 'New Slaves', 'DJ Snake', 'https://soundcloud.com/djsnake-king/new-slaves-dj-snake-remix-1', '/tracks/100638909'),
(2, 'Summer', 'Calvin Harris', 'https://soundcloud.com/calvinharris/calvin-harris-summer-extended', '/tracks/143553285'),
(3, 'Wake me up', 'Avicii', 'https://soundcloud.com/aviciiofficial/avicii-wake-me-up-extended-mix', '/tracks/97617992'),
(4, 'Dont You Worry Child', 'Swedish House Mafia', 'https://soundcloud.com/officialswedishhousemafia/dont-you-worry-child', '/tracks/55945671'),
(5, 'Selfie', 'The Chainsmokers', 'https://soundcloud.com/thechainsmokers/selfie-preview', '/tracks/131713700'),
(6, 'Red Lights', 'Tiesto', 'https://soundcloud.com/tiesto/tiesto-redlights-wav', '/tracks/134079724'),
(7, 'I Need Your Love', 'Calvin Harris & Ellie Goulding', 'https://soundcloud.com/r3hab/calvin-harris-ellie-goulding-i', '/tracks/95306719'),
(8, 'Stay the night', 'Zedd', 'https://soundcloud.com/wavemusicyt/zedd-stay-the-night-ft-hayley', '/tracks/109667271'),
(9, 'Whos That Chick', 'David Guetta', 'https://soundcloud.com/davidguetta/david-guetta-whos-that-chick', '/tracks/15916480'),
(10, 'Get Lucky', 'Daft Punk', 'https://soundcloud.com/user723751824/get-lucky-daft-punk-feat', '/tracks/88345377'),
(11, 'Sad Machine', 'Porter Robinson', 'https://soundcloud.com/porter-robinson/sad-machine', '/tracks/149151252'),
(12, 'All I Want', 'Dawn Goden', 'https://soundcloud.com/diplo/dawn-golden-all-i-want-diplo-remix', '/tracks/149183809'),
(13, 'Loud', 'Zedd Dead', 'https://soundcloud.com/zedsdead/zeds-dead-x-hunter-siegel-loud', '/tracks/148537774'),
(14, 'Strobe', 'Deadmau5', 'https://soundcloud.com/user2727940/deadmau5-strobe', '/tracks/19762856'),
(15, 'Turn Down For What', 'DJ Snake & Lil Jon', 'https://soundcloud.com/lil_jon/turn-down-for-what-dj-snake', '/tracks/125529024');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'rock'),
(2, 'metal'),
(3, 'pop'),
(4, 'rap'),
(5, 'electronic'),
(6, 'rnb'),
(7, 'country');

-- --------------------------------------------------------

--
-- Table structure for table `metal`
--

CREATE TABLE IF NOT EXISTS `metal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `linkc` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `metal`
--

INSERT INTO `metal` (`id`, `name`, `artist`, `linkc`, `trackid`) VALUES
(1, 'Master Of puppets', 'Metallica', 'https://soundcloud.com/friendlistworld/metalica-master-of-puppets', '/tracks/64253897'),
(2, 'Hallowen Be Thy Name', 'Iron Maiden', 'https://soundcloud.com/numiz/iron-maiden-hallowed-be-thy', '/tracks/109782951'),
(3, 'Blow Your Trumpets Gabriel', 'Behemoth', 'https://soundcloud.com/metalbladerecords/behemoth-blow-your-trumpets-1', '/tracks/128097729'),
(4, 'As I Lay Dying', 'Nothing Left', 'https://soundcloud.com/bullsrecords-instruments/as-i-lay-dying-nothing-left', '/tracks/143011776'),
(5, 'Tired Climb', 'Kylesa', 'https://soundcloud.com/thequietus/kylesa-tired-climb', '/tracks/6039517'),
(6, 'Halo Of Blood', 'Children Of Bodom', 'https://soundcloud.com/nuclearblastrecords/children-of-bodom-halo-of', '/tracks/95255954'),
(7, 'Clarity', 'Protest The Hero', 'https://soundcloud.com/protest-the-hero/clarity', '/tracks/110278565'),
(8, 'Nothing Else Matters', 'Metallica', 'https://soundcloud.com/zombaindia/metallica-nothing-else-matters', '/tracks/59114816'),
(9, 'Bring Me To Horizon', 'Shadow Moses', 'https://soundcloud.com/bring-me-the-horizon/bring-me-the-horizon-shadow', '/tracks/74246922'),
(10, 'Demented Agression', 'Cannibal Corpse', 'https://soundcloud.com/metalbladerecords/cannibal-corpse-demented', '/tracks/33193806'),
(11, 'My Dying Time', 'Black Label Society', 'https://soundcloud.com/mascotlabelgroup/black-label-society-my-dying', '/tracks/135447574'),
(12, 'Embers Voice', 'Gorgust', 'https://soundcloud.com/gorguts/gorgust-embers-voice', '/tracks/141937573'),
(13, 'God Is dead?', 'Black Sabbath', 'https://soundcloud.com/marcos-garcia-55/god-is-dead-black-sabbath', '/tracks/88940842'),
(14, 'When I Lost My Bet', 'Dillinger Escape Plan', 'https://soundcloud.com/dillingerescapeplan/when-i-lost-my-bet', '/tracks/126492000'),
(15, 'Cycles Of Suffering', 'Suffocation', 'https://soundcloud.com/nuclearblastrecords/suffocation-cycles-of', '/tracks/74934639');

-- --------------------------------------------------------

--
-- Table structure for table `pop`
--

CREATE TABLE IF NOT EXISTS `pop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `linc` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pop`
--

INSERT INTO `pop` (`id`, `name`, `artist`, `linc`, `trackid`) VALUES
(1, 'Treasure', 'Bruno Mars', 'https://soundcloud.com/caracasonfire/bruno-mars-treasure', '/tracks/97317846'),
(2, 'Still Into You', 'Paramore', 'https://soundcloud.com/causeusmile/still-into-you-paramore', '/tracks/98127480'),
(3, 'Stay High', 'ToveLo & Hippie Sabotage', 'https://soundcloud.com/numiz/luke-bryan-thats-my-kind-of', '/tracks/122248975'),
(4, 'White Horse', 'Taylor Swift', 'https://soundcloud.com/taylorswiftvevo/taylor-swift-white-horse-full', '/tracks/135633078'),
(5, 'Mirrors', 'Justin Timberlake', 'https://soundcloud.com/dj-taly-1/mirrors-justin-timberlake', '/tracks/93603838'),
(6, 'Love Somebody', 'Maroon 5', 'https://soundcloud.com/caracasonfire/maroon-5-love-somebody', '/tracks/94543533'),
(7, 'All Of Me', 'John Legend', 'https://soundcloud.com/johnlegend/all-of-me-3', '/tracks/23142795'),
(8, 'Ass Back Home', 'Gym Class Heroes', 'https://soundcloud.com/gymclassheroes/ass-back-home-feat-neon-hitch', '/tracks/26923302'),
(9, 'Best day of my life', 'American Authors', 'https://soundcloud.com/mmmusic/american-authors-best-day-of', '/tracks/112489041'),
(10, 'We Cant Stop', 'Miley Cyrus', 'https://soundcloud.com/boyalexboy/miley-cyrus-we-cant-stop-183', '/tracks/105039183'),
(11, 'Tik Tok', 'Ke$ha', 'https://soundcloud.com/citypop/tik-tok-kesha', '/tracks/8032671'),
(12, 'Nothing Here But Love', 'Lenka', 'https://soundcloud.com/twiceasnice-1/lenka-nothing-here-but-love', '/tracks/106244543'),
(13, 'Run to you', 'Roslyn Peralta', 'https://soundcloud.com/newh2o/roslyn-peralta-run-to-you', '/tracks/149576003'),
(14, 'Dark Horse', 'Katy Pery', 'https://soundcloud.com/yumae-kurasaki/katy-perry-dark-horse-feat', '/tracks/136696679'),
(15, 'A Thousand Years', 'Christina Perri', 'https://soundcloud.com/ourlifetrakz/a-thousand-years-christina-1', '/tracks/80877685');

-- --------------------------------------------------------

--
-- Table structure for table `rap`
--

CREATE TABLE IF NOT EXISTS `rap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `artist` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `rap`
--

INSERT INTO `rap` (`id`, `name`, `artist`, `trackid`) VALUES
(1, 'Man Of The Year', 'Schoolboy Q', '/tracks/121245757'),
(2, 'Fancy', 'Iggy Azalea Feat Charli XCX ', '/tracks/144565072'),
(3, 'Timber', 'Pitbull Featuring Ke$ha', '/tracks/114238860'),
(4, 'Headlights', 'Eminem', '/tracks/117846681'),
(5, 'Lose Yourself', 'Eminem', '/tracks/2198502'),
(6, 'Show Me', 'Kid Ink Feat Chris Brown ', '/tracks/108863442'),
(7, 'Move That Doh', 'Future Feat Pharrell', '/tracks/143987817'),
(8, 'Wild Wild Love', 'Pitbull Feat G.R.L. ', '/tracks/135739523'),
(9, '5am in Toronto', 'Drake', '/tracks/113010710'),
(10, 'On The Run Part II', 'Jay Z Feat Beyonce ', '/tracks/103171651'),
(11, 'Stoner', 'Young Thug', '/tracks/122381158'),
(12, 'Cut Her Off', 'KCamp Feat 2 Chainz ', '/tracks/125798130'),
(13, 'We Dem Boyz', 'Wiz Khalifa', '/tracks/134332993'),
(14, 'Who Do You Love', 'YG Feat Drake', '/tracks/132115924'),
(15, 'Worst Behaviour', 'Drake', '/tracks/112670388');

-- --------------------------------------------------------

--
-- Table structure for table `rnb`
--

CREATE TABLE IF NOT EXISTS `rnb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `tackc` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `rnb`
--

INSERT INTO `rnb` (`id`, `name`, `artist`, `tackc`, `trackid`) VALUES
(1, '2 On', 'Tinashe Feat Schoolboy Q', 'https://soundcloud.com/tinashenow/tinashe-2-on-feat-schoolboy-q', '/tracks/128206790'),
(2, 'Happy', 'Pharell Williams', 'https://soundcloud.com/crazy_cool/happy-pharell-williams', '/tracks/143214463'),
(3, 'Bitch Dont Kill My Vibe', 'Kendrick Lamar', 'https://soundcloud.com/xo_whoa/bitch-dont-kill-my-vibe', '/tracks/67016624'),
(4, 'Talk Dirty', 'Jason Derulo', 'https://soundcloud.com/daarinsoulfly/talk-dirty-jason-derulo', '/tracks/135648474'),
(5, 'Loyal', 'Chris Brown Feat Lil Wayne, Tyga ', 'https://soundcloud.com/chris_brown/chris-brown-loyal-east-coast', '/tracks/125459218'),
(6, 'Hold My Hand', 'Michael Jackson & Akon', 'https://soundcloud.com/felix-san-juan/hold-my-hand-akon-ft-micheal', '/tracks/120026356'),
(7, 'Na Na', 'Trey Songz', 'https://soundcloud.com/brunacunhh/zac-mann-na-na-trey-songz', '/tracks/139993961'),
(8, 'The Man', 'Aloe Blacc', 'https://soundcloud.com/mmmusic/aloe-blacc-the-man', '/tracks/129555997'),
(9, 'Bow Down', 'Beyonce', 'https://soundcloud.com/beyoncemusic/bow-down-i-been-on', '/tracks/82541328'),
(10, 'Pills N Potions', 'Nicki Minaj', 'https://soundcloud.com/nickiofficial/pills-n-potions', '/tracks/150689913'),
(11, 'The Worst', 'Jhene Aiko', 'https://soundcloud.com/jadens-1/the-worst-jhen-aiko-ft-jaden', '/tracks/121880288'),
(12, 'Trophies', 'Young Money', 'https://soundcloud.com/youngmoneyentertainment/young-money-trophies-feat', '/tracks/138278479'),
(13, 'Drunk In Love', 'Beyonce', 'https://soundcloud.com/zineb-nass/drunk-in-love-beyonce-ft-jay-z', '/tracks/138904862'),
(14, 'Good Kisser', 'Usher', 'https://soundcloud.com/usher-raymond-music/usher-good-kisser', '/tracks/148007334'),
(15, 'Wiggle', 'Jason Derulo Feat Snoop Dogg', 'https://soundcloud.com/sabbar-yassir/wiggle-jason-derulo-ft-snoop-dogg', '/tracks/147310720');

-- --------------------------------------------------------

--
-- Table structure for table `rock`
--

CREATE TABLE IF NOT EXISTS `rock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `linkc` varchar(255) NOT NULL,
  `trackid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `rock`
--

INSERT INTO `rock` (`id`, `name`, `artist`, `linkc`, `trackid`) VALUES
(1, 'Do Me A Favor', 'Sour Stone', 'https://soundcloud.com/roadrunner-usa/stone-sour-do-me-a-favor', '/tracks/82103122'),
(2, 'Hollow', 'Alice In Chains', 'https://soundcloud.com/aliceinchainsofficial/hollow', '/tracks/84923823'),
(3, 'What Ive Done', 'Linkin Park', 'https://soundcloud.com/beaexn/linkin-park-what-ive-done', '/tracks/5378750'),
(4, 'Cut Me Some slack', 'Paul McCartney', 'https://soundcloud.com/rcarecords/cut-me-some-slack-sound-city', '/tracks/125800055'),
(5, 'Last Resort', 'Papa Roach', 'https://soundcloud.com/dj_rad/papa-roach-last-resort', '/tracks/40439758'),
(6, 'Guilty All The Same', 'Linkin Park', 'https://soundcloud.com/linkin_park/linkin-park-guilty-all-the', '/tracks/138307724'),
(7, 'Dear God', 'Avegened Sevenfold', 'https://soundcloud.com/capasrock/avenged-sevenfold-dear-god', '/tracks/65306157'),
(8, 'True North', 'Bad Religion', 'https://soundcloud.com/epitaph-records/bad-religion-true-north', '/tracks/91165944'),
(9, 'Holiday', 'Green Day', 'https://soundcloud.com/green-day-3/green-day-holiday', '/tracks/43705205'),
(10, 'Pompeii', 'Bastille', 'https://soundcloud.com/mmmusic/bastille-pompeii', '/tracks/110969844'),
(11, 'Life Must Go On', 'Alter Bridge', 'https://soundcloud.com/roadrunnerrecords/alter-bridge-life-must-go-on', '/tracks/26064054'),
(12, 'Wish You Were Here', 'Pink Floyd', 'https://soundcloud.com/nancyatorres/pink-floyd-wish-you-were-here-1', '/tracks/632823'),
(13, 'Chasing Cars', 'Snow Patrol', 'https://soundcloud.com/hailssss/snow-patrol-chasing-cars', '/tracks/54430683'),
(14, 'Broken', 'Seether Feat Amy Lee', 'https://soundcloud.com/seetherofficial/broken-featuring-amy-lee', '/tracks/10026955'),
(15, 'Here Without You', '3 Doors Down', 'https://soundcloud.com/kibin/here-without-you-3-doors-down', '/tracks/604081');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
