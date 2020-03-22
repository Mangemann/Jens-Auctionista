-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 12:32 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auctionista`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `3_ongoing_auctions`
-- (See below for the actual view)
--
CREATE TABLE `3_ongoing_auctions` (
`item_id` int(11) unsigned
,`seller_id` int(11) unsigned
,`item_name` varchar(255)
,`item_desc` varchar(255)
,`item_img` varchar(255)
,`reserved_price` int(11) unsigned
,`auction_start` datetime
,`auction_end` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `5_auction_creator`
-- (See below for the actual view)
--
CREATE TABLE `5_auction_creator` (
`item_id` int(11) unsigned
,`user_name` varchar(255)
,`item_name` varchar(255)
,`item_desc` varchar(255)
,`item_img` varchar(255)
,`reserved_price` int(11) unsigned
,`auction_start` datetime
,`auction_end` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `6_latest_bid`
-- (See below for the actual view)
--
CREATE TABLE `6_latest_bid` (
`bid_id` int(11) unsigned
,`bid_item` int(11) unsigned
,`bid_user` int(11) unsigned
,`bid_price` int(11) unsigned
,`bid_time` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `8_reserved_price_reached`
-- (See below for the actual view)
--
CREATE TABLE `8_reserved_price_reached` (
`item_name` varchar(255)
,`reserve_price_met` int(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `9_latest_publ_auction`
-- (See below for the actual view)
--
CREATE TABLE `9_latest_publ_auction` (
`item_name` varchar(255)
,`seller_id` int(11) unsigned
,`item_desc` varchar(255)
,`item_img` varchar(255)
,`auction_start` datetime
,`auction_end` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `10_auction_ending_first`
-- (See below for the actual view)
--
CREATE TABLE `10_auction_ending_first` (
`item_name` varchar(255)
,`seller_id` int(11) unsigned
,`item_desc` varchar(255)
,`item_img` varchar(255)
,`auction_start` datetime
,`auction_end` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `bid_id` int(11) UNSIGNED NOT NULL,
  `bid_item` int(11) UNSIGNED NOT NULL,
  `bid_user` int(11) UNSIGNED NOT NULL,
  `bid_price` int(11) UNSIGNED NOT NULL,
  `bid_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`bid_id`, `bid_item`, `bid_user`, `bid_price`, `bid_time`) VALUES
(1, 56, 97, 94693, '2020-03-22 13:58:18'),
(2, 23, 39, 11570, '2020-04-07 18:36:30'),
(3, 88, 65, 5551, '2020-03-27 20:17:07'),
(4, 91, 29, 85367, '2020-04-24 05:47:26'),
(5, 3, 88, 5591, '2020-04-24 22:38:56'),
(6, 3, 66, 3000, '2020-03-18 02:11:57'),
(7, 55, 8, 85836, '2020-05-03 18:59:44'),
(8, 42, 72, 29829, '2020-04-25 21:44:23'),
(9, 100, 8, 41704, '2020-05-15 20:10:52'),
(10, 57, 60, 27869, '2020-05-09 01:41:23'),
(11, 56, 14, 95000, '2020-03-26 08:00:00'),
(12, 56, 58, 97000, '2020-04-01 15:00:00'),
(13, 56, 79, 100000, '2020-04-08 17:00:00'),
(14, 91, 11, 50000, '2020-04-14 21:00:00'),
(15, 91, 36, 23000, '2020-04-07 06:00:00'),
(16, 57, 82, 18000, '2020-03-23 09:00:00'),
(17, 100, 44, 35000, '2020-05-10 09:00:00'),
(18, 101, 30, 1000, '2020-03-20 09:38:00'),
(19, 101, 30, 1000, '2020-03-20 09:38:00'),
(20, 101, 30, 1000, '2020-03-20 09:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_img` varchar(255) NOT NULL,
  `reserved_price` int(11) UNSIGNED NOT NULL,
  `auction_start` datetime NOT NULL,
  `auction_end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `seller_id`, `item_name`, `item_desc`, `item_img`, `reserved_price`, `auction_start`, `auction_end`) VALUES
(1, 17, 'Chaetomium', 'Drainage of Right Hand Tendon, Percutaneous Approach', 'http://dummyimage.com/222x148.bmp/dddddd/000000', 23544, '2020-03-18 00:00:00', '2020-05-30 00:00:00'),
(2, 20, 'Hydroxychloroquine Sulfate', 'LDR Brachytherapy of Inguinal Lymph using Oth Isotope', 'http://dummyimage.com/226x188.bmp/5fa2dd/ffffff', 8, '2020-03-19 00:00:00', '2020-06-18 08:22:00'),
(3, 77, 'Dove', 'Drainage of Splenic Artery, Open Approach, Diagnostic', 'http://dummyimage.com/182x109.png/5fa2dd/ffffff', 359, '2020-02-20 00:00:00', '2020-05-05 06:00:00'),
(4, 62, 'Natural Fiber Therapy Natural Laxative', 'Bypass Lower Esophagus to Stomach with Nonaut Sub, Endo', 'http://dummyimage.com/183x187.bmp/dddddd/000000', 6503, '2020-02-21 00:00:00', '2020-04-08 16:00:00'),
(5, 41, 'Potassium Chloride', 'Drainage of Right Lobe Liver with Drain Dev, Open Approach', 'http://dummyimage.com/130x223.jpg/dddddd/000000', 238, '2020-01-22 00:00:00', '2020-05-31 19:00:00'),
(6, 45, 'bronze-n-brighten', 'Irrigation of Ear using Irrigat, Perc Approach, Diagn', 'http://dummyimage.com/236x219.bmp/5fa2dd/ffffff', 2708, '2020-01-23 00:00:00', '2020-03-29 08:00:00'),
(7, 6, 'HAND AND NATURE SANITIZER', 'Drainage of Right Lower Lung Lobe with Drainage Device, Endo', 'http://dummyimage.com/225x160.bmp/5fa2dd/ffffff', 9, '2020-03-24 00:00:00', '2020-04-21 06:00:00'),
(8, 30, 'Smart Sense Zinc Cold Remedy', 'Release Vagina, Via Natural or Artificial Opening', 'http://dummyimage.com/208x194.jpg/dddddd/000000', 565, '2020-03-25 00:01:00', '2020-04-21 06:01:00'),
(9, 7, 'Amantadine HCl', 'Drainage of Right Upper Femur, Percutaneous Approach, Diagn', 'http://dummyimage.com/207x101.jpg/5fa2dd/ffffff', 843, '2020-02-26 00:00:00', '2020-08-13 11:00:00'),
(10, 83, 'Lactovit Lactourea ROLL-ON DEODORANT ANTIPERSPIRANT', 'Replace of R Sphenoid Bone with Nonaut Sub, Open Approach', 'http://dummyimage.com/169x210.bmp/cc0000/ffffff', 6279, '2020-03-27 00:00:00', '2020-05-03 08:11:00'),
(11, 72, 'Skin Doctors Photo Age Reverse Night Serum', 'Supplement Small Intestine with Autol Sub, Via Opening', 'http://dummyimage.com/175x153.jpg/cc0000/ffffff', 77583, '2020-03-28 00:00:00', '2020-03-18 12:00:00'),
(12, 18, 'Infergen', 'Drainage of R Int Iliac Art, Perc Endo Approach, Diagn', 'http://dummyimage.com/246x150.jpg/dddddd/000000', 44598, '2020-03-11 00:17:00', '2020-05-27 08:00:00'),
(13, 87, 'BIOWHITE BRIGHTENING', 'Exercise Treatment of Resp Low Back/LE using Oth Equip', 'http://dummyimage.com/174x232.png/dddddd/000000', 6880, '2020-03-17 00:00:00', '2020-04-08 05:00:00'),
(14, 1, 'Magnesium Sulfate', 'Removal of Synth Sub from L Humeral Shaft, Open Approach', 'http://dummyimage.com/113x201.bmp/cc0000/ffffff', 1092, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(15, 30, 'SKIN CAVIAR CONCEALER FOUNDATION SUNSCREEN SPF 15 - Creme Peche', 'Occlusion of Right Temporal Artery, Percutaneous Approach', 'http://dummyimage.com/175x236.jpg/dddddd/000000', 44, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(16, 84, 'Atorvastatin Calcium', 'Removal of Drainage Device from Upper Intestinal Tract, Endo', 'http://dummyimage.com/126x229.bmp/5fa2dd/ffffff', 42, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(17, 48, 'SAFEWAY CARE', 'Bypass 4+ Cor Art from Thor Art w Nonaut Sub, Open', 'http://dummyimage.com/123x126.bmp/ff4444/ffffff', 9, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(18, 84, 'Red Snapper', 'Beam Radiation of Hemibody using Photons 1 - 10 MeV', 'http://dummyimage.com/121x143.bmp/ff4444/ffffff', 5115, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(19, 9, 'Citalopram Hydrobromide', 'Supplement Left Knee Joint with Liner, Open Approach', 'http://dummyimage.com/188x105.bmp/cc0000/ffffff', 9, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(20, 3, 'Geotrichum candidum', 'Resection of Upper Lip, Open Approach', 'http://dummyimage.com/201x106.jpg/5fa2dd/ffffff', 8629, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(21, 56, 'Western Ragweed', 'Dilation of Left Ureter with Intralum Dev, Via Opening', 'http://dummyimage.com/225x135.jpg/dddddd/000000', 14, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(22, 97, 'Ipratropium Bromide', 'Insertion of Intralum Dev into L Temporal Art, Perc Approach', 'http://dummyimage.com/121x112.bmp/cc0000/ffffff', 8, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(23, 30, 'dicyclomine hydrochloride', 'Repair Cervical Nerve, Open Approach', 'http://dummyimage.com/147x181.bmp/dddddd/000000', 689, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(24, 72, 'Cefazolin', 'Supplement Left Trunk Muscle with Autol Sub, Open Approach', 'http://dummyimage.com/222x221.png/cc0000/ffffff', 90623, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(25, 40, 'Zaditor', 'Replace R Sphenoid Bone w Synth Sub, Perc Endo', 'http://dummyimage.com/243x169.jpg/5fa2dd/ffffff', 18, '0000-00-00 00:00:00', '2020-05-17 00:00:00'),
(26, 76, 'PM pain reliever', 'Occlusion R Thyroid Art w Intralum Dev, Perc Endo', 'http://dummyimage.com/234x180.jpg/cc0000/ffffff', 46, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(27, 54, 'Valium', 'Extirpation of Matter from GI Tract, Via Opening', 'http://dummyimage.com/118x199.jpg/dddddd/000000', 1762, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(28, 87, 'Sorine', 'Excision of Left Pulmonary Vein, Open Approach, Diagnostic', 'http://dummyimage.com/130x133.jpg/cc0000/ffffff', 656, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(29, 88, 'Heparin Sodium', 'Revision of Ext Fix in L Finger Phalanx, Open Approach', 'http://dummyimage.com/148x118.bmp/dddddd/000000', 79, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(30, 68, 'Glycopyrrolate', 'Remove Int Fix from R Metatarsotars Jt, Perc Endo', 'http://dummyimage.com/113x147.jpg/5fa2dd/ffffff', 3037, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(31, 52, 'Neutrogena Healthy Skin Radiance', 'Destruction of Left Vas Deferens, Percutaneous Approach', 'http://dummyimage.com/248x230.jpg/dddddd/000000', 17, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(32, 86, 'PUR-WASH', 'Repair Neck, Stoma, External Approach', 'http://dummyimage.com/184x142.png/ff4444/ffffff', 1249, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(33, 34, 'Carbamazepine', 'Drainage of L Pelvic Bone with Drain Dev, Perc Endo Approach', 'http://dummyimage.com/163x174.bmp/dddddd/000000', 28722, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(34, 36, 'Roxalia', 'Supplement Ileum with Nonaut Sub, Via Opening', 'http://dummyimage.com/105x193.png/dddddd/000000', 70, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(35, 3, 'Abstral', 'Removal of Drainage Device from Head, Perc Endo Approach', 'http://dummyimage.com/195x127.jpg/5fa2dd/ffffff', 38, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(36, 36, 'Actos', 'Plain Radiography of Left Hip using High Osmolar Contrast', 'http://dummyimage.com/185x238.bmp/cc0000/ffffff', 408, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(37, 68, 'ATOPALM BB MEDIUM SPF 20 BROAD SPECTRUM SUNSCREEN', 'Dilation of Duodenum with Intraluminal Device, Endo', 'http://dummyimage.com/112x164.png/ff4444/ffffff', 305, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(38, 66, 'CLINIQUE', 'Repair Right Foot, External Approach', 'http://dummyimage.com/118x121.png/5fa2dd/ffffff', 14681, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(39, 25, 'Adapalene', 'Plain Radiography of Right Hip', 'http://dummyimage.com/227x107.png/5fa2dd/ffffff', 443, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(40, 76, 'Black Suede Essential', 'Supplement R Cephalic Vein w Autol Sub, Perc Endo', 'http://dummyimage.com/165x196.png/cc0000/ffffff', 872, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(41, 78, 'Felodipine', 'Removal of Drainage Device from Mouth/Throat, Open Approach', 'http://dummyimage.com/232x228.jpg/5fa2dd/ffffff', 8268, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(42, 13, 'Witch Hazel', 'Replace L Parietal Bone w Autol Sub, Perc Endo', 'http://dummyimage.com/125x140.png/dddddd/000000', 694, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(43, 12, 'LYZA', 'Fluoroscopy of R Brachioceph A using Oth Contrast', 'http://dummyimage.com/223x205.bmp/cc0000/ffffff', 1963, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(44, 18, 'Hesol Rim', 'Exercise Treatment of Resp Head, Neck using Assist Equipment', 'http://dummyimage.com/246x194.jpg/ff4444/ffffff', 88, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(45, 44, 'Hanitizer', 'Control Bleeding in Gastrointestinal Tract, Endo', 'http://dummyimage.com/181x193.bmp/cc0000/ffffff', 636, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(46, 90, 'Common Cold', 'Drainage of Pelvic Subcu/Fascia, Perc Approach', 'http://dummyimage.com/199x126.jpg/5fa2dd/ffffff', 622, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(47, 98, 'Gemfibrozil', 'Fluoroscopy L Low Extrem Vein w Oth Contrast, Guidance', 'http://dummyimage.com/181x231.jpg/5fa2dd/ffffff', 94, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(48, 18, 'Doxazosin', 'Supplement Esophagast Junct w Autol Sub, Perc Endo', 'http://dummyimage.com/151x189.bmp/cc0000/ffffff', 61490, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(49, 86, 'Hydrocodone Bitartrate and Acetaminophen', 'Revise Autol Sub in Head & Neck Subcu/Fascia, Extern', 'http://dummyimage.com/127x141.jpg/5fa2dd/ffffff', 2419, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(50, 53, 'Aurum Lavender Rose', 'Transfuse of Autol Factor IX into Periph Vein, Open Approach', 'http://dummyimage.com/118x249.bmp/cc0000/ffffff', 11451, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(51, 85, 'Advanced Dual Complex Fade', 'Repair Left Superior Parathyroid Gland, Perc Endo Approach', 'http://dummyimage.com/139x230.bmp/cc0000/ffffff', 17219, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(52, 40, 'Benzamycin', 'Extirpate of Matter from Sup Mesent Art, Perc Endo Approach', 'http://dummyimage.com/150x107.png/ff4444/ffffff', 7, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(53, 33, 'Clean Choice Foodservice Antibacterial', 'Restrict Access Pancr Duct w Extralum Dev, Perc', 'http://dummyimage.com/128x166.png/5fa2dd/ffffff', 878, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(54, 75, 'Ampicillin', 'Resection of Penis, External Approach', 'http://dummyimage.com/245x106.jpg/5fa2dd/ffffff', 455, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(55, 35, 'ALLOPURINOL', 'Resection of Thymus, Percutaneous Endoscopic Approach', 'http://dummyimage.com/127x184.bmp/cc0000/ffffff', 4780, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(56, 9, 'Anticavity Fluoride Rinse', 'Insertion of Diaphragm Lead into R Diaphragm, Perc Approach', 'http://dummyimage.com/135x180.png/ff4444/ffffff', 30, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(57, 92, 'Aspirin', 'Removal of Other Device on Right Upper Leg', 'http://dummyimage.com/132x120.png/cc0000/ffffff', 82, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(58, 96, 'Sulfamethoxazole and Trimethoprim', 'Extirpation of Matter from L Abd Bursa/Lig, Open Approach', 'http://dummyimage.com/201x237.png/ff4444/ffffff', 85622, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(59, 79, 'Estradiol', 'Bypass Thoracic Aorta, Descending to Carotid, Open Approach', 'http://dummyimage.com/246x173.bmp/ff4444/ffffff', 33929, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(60, 47, 'VENTOLIN', 'Occlusion of Left Renal Artery, Open Approach', 'http://dummyimage.com/189x157.jpg/ff4444/ffffff', 6583, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(61, 88, 'Sunkissed Honeydew Hand Sanitizer', 'Excision of Sacral Sympathetic Nerve, Perc Endo Approach', 'http://dummyimage.com/158x186.png/5fa2dd/ffffff', 5, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(62, 52, 'Fentanyl Citrate', 'Restrict L Basilic Vein w Extralum Dev, Perc Endo', 'http://dummyimage.com/200x240.jpg/cc0000/ffffff', 122, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(63, 61, 'good sense pain relief pm', 'Extirpate matter from R Knee Bursa/Lig, Perc Endo', 'http://dummyimage.com/237x147.bmp/5fa2dd/ffffff', 49, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(64, 33, 'MEDIQUE Diamode', 'Extirpation of Matter from 1 Cor Art, Bifurc, Open Approach', 'http://dummyimage.com/236x250.jpg/5fa2dd/ffffff', 98, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(65, 29, 'ISOSORBIDE MONONITRATE', 'Replace R Low Leg Tendon w Autol Sub, Perc Endo', 'http://dummyimage.com/191x159.png/ff4444/ffffff', 6, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(66, 63, 'CARVEDILOL', 'Replacement of R Carpal with Synth Sub, Perc Endo Approach', 'http://dummyimage.com/114x170.png/ff4444/ffffff', 28, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(67, 46, 'Laser Block 100', 'Bypass 4+ Cor Art from Thor Art with Autol Vn, Open Approach', 'http://dummyimage.com/112x173.bmp/dddddd/000000', 4, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(68, 23, 'Furosemide', 'Bypass Stomach to Jejunum with Nonaut Sub, Open Approach', 'http://dummyimage.com/116x174.png/dddddd/000000', 57, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(69, 17, 'MEIJER SPF 4 TANNING OIL', 'Removal of Autologous Tissue Substitute from Nose, Endo', 'http://dummyimage.com/128x241.jpg/dddddd/000000', 8340, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(70, 44, 'Sweet Pea Blossom Hand Sanitizer', 'Occlusion of Left Internal Iliac Artery, Open Approach', 'http://dummyimage.com/245x165.jpg/ff4444/ffffff', 9066, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(71, 95, 'ARNISPORT', 'Insertion of Endobronch Valve into L Main Bronc, Via Opening', 'http://dummyimage.com/189x143.jpg/cc0000/ffffff', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(72, 97, 'DOXEPIN HYDROCHLORIDE', 'Dilation of Low Art with 2 Drug-elut, Perc Endo Approach', 'http://dummyimage.com/194x232.bmp/cc0000/ffffff', 12429, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(73, 73, 'Latanoprost', 'Fluoroscopy of Right Jugular Veins using Other Contrast', 'http://dummyimage.com/133x145.bmp/dddddd/000000', 84693, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(74, 38, 'members mark famotidine', 'Compression of Left Thumb using Pressure Dressing', 'http://dummyimage.com/249x144.bmp/dddddd/000000', 58, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(75, 58, 'Enalapril Maleate', 'Supplement Right Renal Vein with Nonaut Sub, Open Approach', 'http://dummyimage.com/172x245.jpg/dddddd/000000', 97520, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(76, 66, 'Modern Pain Medicine', 'Revise Drain Dev in Head & Neck Subcu/Fascia, Extern', 'http://dummyimage.com/139x250.jpg/dddddd/000000', 4836, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(77, 87, 'Leucovorin Calcium', 'Compression of Right Foot using Pressure Dressing', 'http://dummyimage.com/217x128.jpg/cc0000/ffffff', 8466, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(78, 94, 'Milk of Magnesia Mint', 'Revision of Nonaut Sub in L Patella, Extern Approach', 'http://dummyimage.com/239x242.png/ff4444/ffffff', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(79, 29, 'Levetiracetam', 'Revision of Nonaut Sub in R Eye, Perc Approach', 'http://dummyimage.com/222x123.png/cc0000/ffffff', 9, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(80, 40, 'Trandolapril', 'Measure of Arterial Saturation, Peripheral, Open Approach', 'http://dummyimage.com/137x220.png/ff4444/ffffff', 9, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(81, 55, 'Claritin', 'Drainage of Left Knee Tendon, Percutaneous Approach', 'http://dummyimage.com/159x244.jpg/cc0000/ffffff', 4, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(82, 28, 'Soothing Bath Treatment', 'Introduce of Analg/Hypnot/Sedat into Nose, Extern Approach', 'http://dummyimage.com/228x209.png/ff4444/ffffff', 35, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(83, 25, 'INSOMNIA RELIEF', 'Drain of L Palatine Bone with Drain Dev, Perc Endo Approach', 'http://dummyimage.com/117x238.png/dddddd/000000', 298, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(84, 20, 'Optiray', 'Ultrasonography of Left Ovary using Other Contrast', 'http://dummyimage.com/193x136.png/cc0000/ffffff', 177, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(85, 72, 'Nitrogen', 'Removal of Int Fix from R Metatarsal, Perc Approach', 'http://dummyimage.com/176x129.bmp/cc0000/ffffff', 447, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(86, 48, 'Laura mercier Moisturizer cream with SPF 15', 'Excision of Left Conjunctiva, External Approach', 'http://dummyimage.com/110x210.bmp/5fa2dd/ffffff', 7021, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(87, 67, 'Skin Tag Relief', 'Bypass R Int Iliac Art to L Femor A w Synth Sub, Open', 'http://dummyimage.com/167x210.bmp/5fa2dd/ffffff', 7, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(88, 32, 'BiferaRx', 'Drainage of Left Foot Tendon, Percutaneous Approach', 'http://dummyimage.com/159x128.jpg/5fa2dd/ffffff', 17571, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(89, 48, 'propranolol hydrochloride', 'Revision of Synthetic Substitute in L Hip Jt, Perc Approach', 'http://dummyimage.com/237x228.png/cc0000/ffffff', 907, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(90, 38, 'Carbamazepine', 'Removal of Nonaut Sub from C-thor Disc, Perc Endo Approach', 'http://dummyimage.com/130x111.jpg/cc0000/ffffff', 3095, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(91, 40, 'Hectorol', 'Muscle Performance Treatment of GU Sys using Oth Equip', 'http://dummyimage.com/172x240.png/dddddd/000000', 6210, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(92, 38, 'Lindane', 'Fusion Thor Jt w Synth Sub, Post Appr A Col, Open', 'http://dummyimage.com/113x115.png/dddddd/000000', 1, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(93, 69, 'IOPE RETIGEN GLOW COVER CAKE', 'Bypass Bi Ureter to Ileum with Synth Sub, Perc Endo Approach', 'http://dummyimage.com/192x198.jpg/ff4444/ffffff', 3881, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(94, 58, 'Fludarabine Phosphate', 'Removal of Packing Material on Left Lower Extremity', 'http://dummyimage.com/173x105.bmp/5fa2dd/ffffff', 3867, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(95, 52, 'Pier 1 Imports Cherry Anti-Bacterial Hand Sanitizer', 'Indiv Counsel for Substance Abuse, Motivational Enhance', 'http://dummyimage.com/159x129.jpg/cc0000/ffffff', 6200, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(96, 3, 'Extra Strength Non-Aspirin', 'Supplement L Temporomandib Jt with Autol Sub, Open Approach', 'http://dummyimage.com/170x220.jpg/dddddd/000000', 640, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(97, 38, 'Vida Mia Hand Sanitizer', 'Extirpate matter from R Thyroid Art, Bifurc, Perc Endo', 'http://dummyimage.com/173x185.bmp/dddddd/000000', 8, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(98, 32, 'Soften Sure Foam Soap Antimicrobial', 'Planar Nucl Med Imag of Neck Lymph using Technetium 99m', 'http://dummyimage.com/119x209.jpg/cc0000/ffffff', 8780, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(99, 42, 'Oxygen', 'Repair Eye in Products of Conception, Endo', 'http://dummyimage.com/201x212.png/5fa2dd/ffffff', 97, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(100, 42, 'Citalopram', 'Division of Right Hip Muscle, Percutaneous Approach', 'http://dummyimage.com/236x192.bmp/cc0000/ffffff', 10, '2020-03-17 00:00:00', '2020-05-17 00:00:00'),
(101, 99, 'Toapapper', 'Sånt du torkar dig med efter toabesök', 'http://dummyimage.com/222x148.bmp/dddddd/0213132', 500, '2020-03-30 09:25:00', '2020-03-27 22:00:00'),
(102, 99, 'Toapapper', 'Sånt du torkar dig med efter toabesök', 'http://dummyimage.com/222x148.bmp/dddddd/0213132', 500, '2020-03-30 09:25:00', '2020-03-27 22:00:00'),
(103, 99, 'Toapapper', 'Sånt du torkar dig med efter toabesök', 'http://dummyimage.com/222x148.bmp/dddddd/0213132', 500, '2020-03-30 09:25:00', '2020-03-27 22:00:00'),
(104, 99, 'Toapapper', 'Sånt du torkar dig med efter toabesök', 'http://dummyimage.com/222x148.bmp/dddddd/0213132', 500, '2020-03-30 09:25:00', '2020-03-27 22:00:00'),
(105, 99, 'Toapapper', 'Sånt du torkar dig med efter toabesök', 'http://dummyimage.com/222x148.bmp/dddddd/0213132', 500, '2020-03-30 09:25:00', '2020-03-27 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`) VALUES
(1, 'Maurene Halsall', 'mhalsall0@senate.gov'),
(2, 'Mandi Jerdein', 'mjerdein1@auda.org.au'),
(3, 'Evangelin McCaffery', 'emccaffery2@wordpress.com'),
(4, 'Zebedee Marie', 'zmarie3@nyu.edu'),
(5, 'Eyde Novis', 'enovis4@xrea.com'),
(6, 'Izabel Londsdale', 'ilondsdale5@surveymonkey.com'),
(7, 'Florence Jaze', 'fjaze6@stumbleupon.com'),
(8, 'Cordell Duigan', 'cduigan7@symantec.com'),
(9, 'Ban Dwelley', 'bdwelley8@lulu.com'),
(10, 'Lacie Emor', 'lemor9@altervista.org'),
(11, 'Briny Sired', 'bsireda@flickr.com'),
(12, 'Cherise Emmott', 'cemmottb@unesco.org'),
(13, 'Toddie Rumgay', 'trumgayc@eventbrite.com'),
(14, 'Jock Vina', 'jvinad@nba.com'),
(15, 'Helen-elizabeth Larraway', 'hlarrawaye@earthlink.net'),
(16, 'Maitilde Siaskowski', 'msiaskowskif@unesco.org'),
(17, 'Adeline Ziem', 'aziemg@ihg.com'),
(18, 'Luce O\'Sharkey', 'losharkeyh@redcross.org'),
(19, 'Evy Garthshore', 'egarthshorei@mysql.com'),
(20, 'Lorie Dobbyn', 'ldobbynj@senate.gov'),
(21, 'Price Rubke', 'prubkek@cnbc.com'),
(22, 'Janifer Josovich', 'jjosovichl@netvibes.com'),
(23, 'Florrie Rosin', 'frosinm@engadget.com'),
(24, 'Jordain Romayne', 'jromaynen@nydailynews.com'),
(25, 'Milena Borge', 'mborgeo@senate.gov'),
(26, 'Mel Pregel', 'mpregelp@google.pl'),
(27, 'Even Pullinger', 'epullingerq@xing.com'),
(28, 'Elwood Maddrell', 'emaddrellr@vk.com'),
(29, 'Aguie Folks', 'afolkss@samsung.com'),
(30, 'Galven Padly', 'gpadlyt@shinystat.com'),
(31, 'Thaxter Matthewes', 'tmatthewesu@ucla.edu'),
(32, 'Filbert Blaymires', 'fblaymiresv@meetup.com'),
(33, 'Raymund Sidebotton', 'rsidebottonw@printfriendly.com'),
(34, 'Katharyn Gue', 'kguex@example.com'),
(35, 'Claire Handscombe', 'chandscombey@netscape.com'),
(36, 'Knox Ickowicz', 'kickowiczz@istockphoto.com'),
(37, 'Raimondo Busby', 'rbusby10@google.co.uk'),
(38, 'Lesley Lutas', 'llutas11@economist.com'),
(39, 'Rosalie Rizzardo', 'rrizzardo12@soundcloud.com'),
(40, 'Nat Gibbard', 'ngibbard13@blogspot.com'),
(41, 'Del Neljes', 'dneljes14@msu.edu'),
(42, 'Madel Simester', 'msimester15@noaa.gov'),
(43, 'Cchaddie De la Barre', 'cde16@latimes.com'),
(44, 'Cale Babidge', 'cbabidge17@craigslist.org'),
(45, 'Sheba Rogerson', 'srogerson18@deliciousdays.com'),
(46, 'Dorian Woodison', 'dwoodison19@hc360.com'),
(47, 'Maxie Habbershon', 'mhabbershon1a@soundcloud.com'),
(48, 'Darn Monteath', 'dmonteath1b@theatlantic.com'),
(49, 'Melania Schutt', 'mschutt1c@chronoengine.com'),
(50, 'Donny Barti', 'dbarti1d@pbs.org'),
(51, 'Vinnie Stiell', 'vstiell1e@exblog.jp'),
(52, 'Shauna Crick', 'scrick1f@ehow.com'),
(53, 'Rochell Radnedge', 'rradnedge1g@google.co.jp'),
(54, 'Allistir Hanhardt', 'ahanhardt1h@hubpages.com'),
(55, 'Jeffrey Ghest', 'jghest1i@bbc.co.uk'),
(56, 'Carmon Stickler', 'cstickler1j@businessweek.com'),
(57, 'Imelda Crook', 'icrook1k@loc.gov'),
(58, 'Jarad Labb', 'jlabb1l@joomla.org'),
(59, 'Freeland Cattermole', 'fcattermole1m@biglobe.ne.jp'),
(60, 'Camellia Ferrieroi', 'cferrieroi1n@hugedomains.com'),
(61, 'Gerik Acors', 'gacors1o@de.vu'),
(62, 'Lark Longcaster', 'llongcaster1p@sciencedirect.com'),
(63, 'Emelita Duthy', 'eduthy1q@columbia.edu'),
(64, 'Kile Ancell', 'kancell1r@tripadvisor.com'),
(65, 'Ariela Field', 'afield1s@whitehouse.gov'),
(66, 'Corissa Penvarden', 'cpenvarden1t@lycos.com'),
(67, 'Dunc Macveigh', 'dmacveigh1u@163.com'),
(68, 'Chrisse Jagiello', 'cjagiello1v@cnet.com'),
(69, 'Peria Scardifeild', 'pscardifeild1w@skyrock.com'),
(70, 'Weylin Fettiplace', 'wfettiplace1x@pinterest.com'),
(71, 'Henriette Giblett', 'hgiblett1y@dell.com'),
(72, 'Archibald Domke', 'adomke1z@house.gov'),
(73, 'Daniele Boyles', 'dboyles20@dagondesign.com'),
(74, 'Lanna Klaaasen', 'lklaaasen21@t.co'),
(75, 'Julissa Medgwick', 'jmedgwick22@harvard.edu'),
(76, 'Junia Arrow', 'jarrow23@yahoo.com'),
(77, 'Filmore Soltan', 'fsoltan24@reference.com'),
(78, 'Opaline Precious', 'oprecious25@sourceforge.net'),
(79, 'Wood Morillas', 'wmorillas26@constantcontact.com'),
(80, 'Nicolais Meegin', 'nmeegin27@ucoz.com'),
(81, 'Berte Wragge', 'bwragge28@naver.com'),
(82, 'Rhys Dachs', 'rdachs29@europa.eu'),
(83, 'Lona Barkway', 'lbarkway2a@cam.ac.uk'),
(84, 'Filbert Schindler', 'fschindler2b@163.com'),
(85, 'Del Preshaw', 'dpreshaw2c@infoseek.co.jp'),
(86, 'Glenine Bassom', 'gbassom2d@360.cn'),
(87, 'Silvain Pimblott', 'spimblott2e@princeton.edu'),
(88, 'Vince Alvarado', 'valvarado2f@histats.com'),
(89, 'Gilbertine Van Halen', 'gvan2g@unblog.fr'),
(90, 'Marty Melliard', 'mmelliard2h@wordpress.org'),
(91, 'Audy Del Castello', 'adel2i@wiley.com'),
(92, 'Indira Joul', 'ijoul2j@msn.com'),
(93, 'Aileen McVicar', 'amcvicar2k@vk.com'),
(94, 'Fania Rudinger', 'frudinger2l@lycos.com'),
(95, 'Candace Taill', 'ctaill2m@hubpages.com'),
(96, 'Randie Eastabrook', 'reastabrook2n@shop-pro.jp'),
(97, 'Jeniffer Blowin', 'jblowin2o@miibeian.gov.cn'),
(98, 'Rodolphe Holleworth', 'rholleworth2p@nhs.uk'),
(99, 'Tammara Marte', 'tmarte2q@bluehost.com'),
(100, 'Jemie Aglione', 'jaglione2r@abc.net.au');

-- --------------------------------------------------------

--
-- Structure for view `3_ongoing_auctions`
--
DROP TABLE IF EXISTS `3_ongoing_auctions`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `3_ongoing_auctions`  AS  select `items`.`item_id` AS `item_id`,`items`.`seller_id` AS `seller_id`,`items`.`item_name` AS `item_name`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`reserved_price` AS `reserved_price`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from `items` where `items`.`auction_end` >= current_timestamp() and `items`.`auction_start` >= current_timestamp() ;

-- --------------------------------------------------------

--
-- Structure for view `5_auction_creator`
--
DROP TABLE IF EXISTS `5_auction_creator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `5_auction_creator`  AS  select `items`.`item_id` AS `item_id`,`users`.`user_name` AS `user_name`,`items`.`item_name` AS `item_name`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`reserved_price` AS `reserved_price`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from (`items` join `users`) where `items`.`seller_id` = `users`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `6_latest_bid`
--
DROP TABLE IF EXISTS `6_latest_bid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `6_latest_bid`  AS  select `bids`.`bid_id` AS `bid_id`,`bids`.`bid_item` AS `bid_item`,`bids`.`bid_user` AS `bid_user`,`bids`.`bid_price` AS `bid_price`,`bids`.`bid_time` AS `bid_time` from `bids` order by `bids`.`bid_time` desc ;

-- --------------------------------------------------------

--
-- Structure for view `8_reserved_price_reached`
--
DROP TABLE IF EXISTS `8_reserved_price_reached`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `8_reserved_price_reached`  AS  select `items`.`item_name` AS `item_name`,`items`.`reserved_price` < `bids`.`bid_price` AS `reserve_price_met` from (`items` join `bids`) where `items`.`item_id` = `bids`.`bid_item` ;

-- --------------------------------------------------------

--
-- Structure for view `9_latest_publ_auction`
--
DROP TABLE IF EXISTS `9_latest_publ_auction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `9_latest_publ_auction`  AS  select `items`.`item_name` AS `item_name`,`items`.`seller_id` AS `seller_id`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from `items` order by `items`.`auction_start` desc ;

-- --------------------------------------------------------

--
-- Structure for view `10_auction_ending_first`
--
DROP TABLE IF EXISTS `10_auction_ending_first`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `10_auction_ending_first`  AS  select `items`.`item_name` AS `item_name`,`items`.`seller_id` AS `seller_id`,`items`.`item_desc` AS `item_desc`,`items`.`item_img` AS `item_img`,`items`.`auction_start` AS `auction_start`,`items`.`auction_end` AS `auction_end` from `items` order by `items`.`auction_end` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`bid_id`),
  ADD KEY `bid_item` (`bid_item`,`bid_user`),
  ADD KEY `bid_user` (`bid_user`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `bid_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_ibfk_1` FOREIGN KEY (`bid_item`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bids_ibfk_2` FOREIGN KEY (`bid_user`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
