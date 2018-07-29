-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 29 juil. 2018 à 09:06
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wemanity`
--

-- --------------------------------------------------------

--
-- Structure de la table `gs_article`
--

DROP TABLE IF EXISTS `gs_article`;
CREATE TABLE IF NOT EXISTS `gs_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_article` text NOT NULL,
  `text_article` text NOT NULL,
  `Actif` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gs_article`
--

INSERT INTO `gs_article` (`article_id`, `title_article`, `text_article`, `Actif`) VALUES
(1, 'Two Years at Sea', 'Bausch & Lomb Incorporated', 1),
(2, 'Hum Dil De Chuke Sanam', 'Chain Drug Consortium, LLC', 1),
(3, 'Macheads', 'Fresenius Kabi USA, LLC', 1),
(4, 'Messenger, The (Ulak)', 'Cantrell Drug Company', 1),
(5, 'Santa Sangre', 'AnazaoHealth Corporation', 1),
(6, 'In Enemy Hands', 'Teva Pharmaceuticals USA Inc', 1),
(7, '$ellebrity (Sellebrity)', 'Alvogen, Inc.', 1),
(8, 'Sound and Fury', 'Idelle Labs, Ltd', 1),
(9, 'Bringing Down the House', 'Menper Distributors, Inc.', 1),
(10, 'Sick Girl', 'Nelco Laboratories, Inc.', 1),
(11, 'Dossier 51 (Dossier 51, Le)', 'Northwind Pharmaceuticals, LLC', 1),
(12, 'High Crimes', 'Uriel Pharmacy Inc.', 1),
(13, 'I Melt with You', 'Bath & Body Works, Inc.', 1),
(14, 'Maleficent', 'Accra-Pac, Inc.', 1),
(15, 'Boricua\'s Bond', 'Hospira, Inc.', 1),
(16, 'Seal Team Eight: Behind Enemy Lines', 'Wildlife Research Center, Inc.', 1),
(17, 'Wishmaster 2: Evil Never Dies', 'KAISER FOUNDATION HOSPITALS', 1),
(18, 'Maidentrip', 'Nelco Laboratories, Inc.', 1),
(19, 'Süperseks', 'Supervalu Inc', 1),
(20, 'Manzanar Fishing Club, The', 'GAVIS Pharmaceuticals, LLC', 1),
(21, 'Day of the Locust, The', 'Remedy Makers', 1),
(22, 'Pooh\'s Heffalump Movie', 'RITE AID CORPORATION', 1),
(23, 'Inglorious Bastards (Quel maledetto treno blindato)', 'Hollister-Stier Laboratories LLC', 1),
(24, 'The Lost Squadron', 'Morgan Gallacher Inc.', 1),
(25, 'First Deadly Sin, The', 'KAISER FOUNDATION HOSPITALS', 1),
(26, 'Something Wild', 'Lake Erie Medical DBA Quality Care Products LLC', 1),
(27, 'Slap Shot 2: Breaking the Ice', 'Cardinal Health', 1),
(28, 'Praise', 'Kroger Company', 1),
(29, 'Unbreakable', 'Cardinal Health', 1),
(30, 'Beyond Hypothermia (Sip si 32 doe)', 'Fikes Northwest, Corp.', 1),
(31, 'Tillman Story, The', 'Contract Pharmacy Services-PA', 1),
(32, 'Out-of-Towners, The', 'Forest Laboratories, Inc', 1),
(33, 'Psyhi vathia (a.k.a. Deep Soul)', 'Family Dollar Services Inc.', 1),
(34, 'Heidi Fleiss: Hollywood Madam', 'Walgreen Company', 1),
(35, 'Comfort and Joy', 'Watson Laboratories, Inc.', 1),
(36, 'Butterfly, The (Papillon, Le)', 'Reckitt Benckiser LLC', 1),
(37, 'Only God Knows (Sólo Dios Sabe)', 'Valeant Pharmaceuticals North America LLC', 1),
(38, 'The Puzzle', 'Precision Dose Inc.', 1),
(39, 'Free Samples', 'H.J. Harkins Company, Inc.', 1),
(40, 'Summer Interlude (Sommarlek)', 'Zep Inc.', 1),
(41, 'Everybody Dies But Me', 'Share Corporation', 1),
(42, '11.6', 'Novartis Pharmaceuticals Corporation', 1),
(43, 'Love and a Bullet', 'International Labs, Inc.', 1),
(44, '18 Again!', 'Nelco Laboratories, Inc.', 1),
(45, 'Coffy', 'Ranbaxy Pharmaceuticals Inc.', 1),
(46, 'Mudhoney', 'BluePoint Laboratories', 1),
(47, 'The Lunchbox', 'AvKARE, Inc.', 1),
(48, 'Digimon: The Movie', 'GlaxoSmithKline Consumer Healthcare LP', 1),
(49, '14 Blades (Jin yi wei)', 'KMART CORPORATION', 1),
(50, 'Secret Adventures of Gustave Klopp, The (Narco)', 'Mitchell Home Medical, Inc.', 1),
(51, 'United', 'DAVA Pharmaceuticals, Inc.', 1),
(52, 'Planet of the Future, The', 'Unit Dose Services', 1),
(53, 'Mother Küsters Goes to Heaven (Mutter Küsters\' Fahrt zum Himmel)', 'ALK-Abello, Inc.', 1),
(54, 'Musketeer, The', 'Cardinal Health', 1),
(55, 'Drive Me Crazy', 'Gordon Laboratories', 1),
(56, 'Arrival II', 'NUGA MEDICAL CO., LTD.', 1),
(57, 'Magic of Ordinary Days, The', 'UNITED EXCHANGE CORP.', 1),
(58, 'Kids in the Hall: Brain Candy', 'Aurobindo Pharma Limited', 1),
(59, 'Batman', 'Target Corporation', 1),
(60, 'Godzilla: Final Wars (Gojira: Fainaru uôzu)', 'STAT Rx USA LLC', 1),
(61, 'Dylan Moran Live: What It Is', 'Church & Dwight Co., Inc.', 1),
(62, 'Confidence', 'Hyland\'s', 1),
(63, 'Seoul Searching', 'H&H Laboratories, Inc.', 1),
(64, 'American Me', 'Physicians Total Care, Inc.', 1),
(65, 'Achilles and the Tortoise (Akiresu to kame)', 'Dispensing Solutions, Inc.', 1),
(66, 'Steel Trap, The', 'Baxter Healthcare Corporation', 1),
(67, 'Return to Homs, The', 'Chattem, Inc.', 1),
(68, 'Bullet for Joey, A', 'Wyeth BioPharma Division of Wyeth Pharmaceuticals Inc., a subsidiary of Pfizer Inc.', 1),
(69, 'Vampyros Lesbos (Vampiras, Las)', 'G.D. Searle LLC Division of Pfizer Inc', 1),
(70, 'Exit to Eden', 'Mylan Institutional LLC', 1),
(71, 'Loneliness of the Long Distance Runner, The', 'Jafra Cosmetics International Inc', 1),
(72, 'April Story', 'Western Family Food, Inc.', 1),
(73, 'Spriggan (Supurigan)', 'Walgreens Company', 1),
(74, 'Queen of the Damned', 'A-S Medication Solutions LLC', 1),
(75, 'Kill Me Now', 'DOLGENCORP LLC', 1),
(76, 'All About My Mother (Todo sobre mi madre)', 'Physicians Total Care, Inc.', 1),
(77, 'Enon opetukset', 'Energique, Inc.', 1),
(78, 'Mr. Average', 'Aidarex Pharmaceuticals LLC', 1),
(79, 'Captain America', 'Colgate-Palmolive', 1),
(80, 'Most Hated Family in America, The', 'McKesson', 1),
(81, 'Ten Minutes Older', 'Native Remedies, LLC', 1),
(82, 'Twins', 'Alva-Amco Pharmacal Companies, Inc.', 1),
(83, 'Samurai I: Musashi Miyamoto (Miyamoto Musashi)', 'Ventura International LTD.', 1),
(84, 'Alpha and Omega 2: A Howl-iday Adventure (Alpha & Omega 2)', 'Biogrand Co., Ltd', 1),
(85, 'Do You Remember Dolly Bell? (Sjecas li se, Dolly Bell)', 'Caudalie USA Inc.', 1),
(86, 'Hollidaysburg', 'General Injectables & Vaccines, Inc', 1),
(87, 'Hori Smoku Sailor Jerry: The Life of Norman K. Collins ', 'Major Pharmaceuticals', 1),
(88, 'Animal Crackers', 'Physicians Total Care, Inc.', 1),
(89, 'Severance', 'C.B. Fleet Company, Inc.', 1),
(90, 'Black Sun (Kuroi taiyô)', 'Hospira, Inc.', 1),
(91, 'Impulse', 'SAM\'S WEST INC.', 1),
(92, 'Whitecoats', 'Chi Research, Inc.', 1),
(93, 'Kink', 'Meijer Distribution Inc', 1),
(94, 'Celeste and Jesse Forever (Celeste & Jesse Forever)', 'Energique, Inc.', 1),
(95, 'Teenage Paparazzo', 'Amgen Inc', 1),
(96, 'Ewok Adventure, The (a.k.a. Caravan of Courage: An Ewok Adventure)', 'Bryant Ranch Prepack', 1),
(97, 'Dead Man on Campus', 'Dolgencorp Inc', 1),
(98, 'Company of Heroes', 'China Ningbo Shangge Cosmetic Technology Corp.', 1),
(99, 'Death Sentence', 'Uriel Pharmacy Inc.', 1),
(100, 'Test Add Aymen', 'Aymen Make Insert Text Via BD', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gs_event`
--

DROP TABLE IF EXISTS `gs_event`;
CREATE TABLE IF NOT EXISTS `gs_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gs_language`
--

DROP TABLE IF EXISTS `gs_language`;
CREATE TABLE IF NOT EXISTS `gs_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `gs_language`
--

INSERT INTO `gs_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 2, 1),
(2, 'Italiano', 'it', 'it_IT.UTF-8,it_IT,italian', 'it.png', 'italian', 'italian', 3, 1),
(3, 'French', 'fr', 'fr,fr-FR,fr_FR.UTF-8,fr-CH,fr-CA,french', 'fr.png', 'french', 'french', 1, 1),
(4, 'عربي', 'ar', 'ar.UTF-8,ar,ar,arabic', 'tn.png', 'arabic', 'arabic', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gs_setting`
--

DROP TABLE IF EXISTS `gs_setting`;
CREATE TABLE IF NOT EXISTS `gs_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `gs_setting`
--

INSERT INTO `gs_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(284, 0, 'config', 'config_sys_log_filename', 'bo_sys.log', 0),
(283, 0, 'config', 'config_error_filename', 'error.log', 0),
(282, 0, 'config', 'config_error_log', '1', 0),
(281, 0, 'config', 'config_error_display', '0', 0),
(280, 0, 'config', 'config_password', '0', 0),
(279, 0, 'config', 'config_seo_url', '0', 0),
(278, 0, 'config', 'config_secure', '0', 0),
(277, 0, 'config', 'config_admin_language', 'en', 0),
(276, 0, 'config', 'config_language', 'en', 0),
(275, 0, 'config', 'config_meta_keyword', '', 0),
(274, 0, 'config', 'config_meta_description', '', 0),
(273, 0, 'config', 'config_meta_title', 'Wemanity', 0),
(272, 0, 'config', 'config_limit_admin', '10', 0),
(271, 0, 'config', 'config_email', 'aymen.abdessalem.dev@gmail.com', 0),
(270, 0, 'config', 'config_owner', 'Wemanity', 0),
(269, 0, 'config', 'config_name', 'Wemanity', 0),
(285, 0, 'config', 'config_backup_es_log_filename', 'backup_es.log', 0);

-- --------------------------------------------------------

--
-- Structure de la table `gs_store`
--

DROP TABLE IF EXISTS `gs_store`;
CREATE TABLE IF NOT EXISTS `gs_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gs_user`
--

DROP TABLE IF EXISTS `gs_user`;
CREATE TABLE IF NOT EXISTS `gs_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `gs_user`
--

INSERT INTO `gs_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '098f6bcd4621d373cade4e832627b4f6', '74005a38c', 'Aymen', 'Abdessalem', 'aymen.abdessalem.dev@gmail.com', '', '', '::1', 1, '2018-07-29 08:35:30');

-- --------------------------------------------------------

--
-- Structure de la table `gs_user_group`
--

DROP TABLE IF EXISTS `gs_user_group`;
CREATE TABLE IF NOT EXISTS `gs_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `gs_user_group`
--

INSERT INTO `gs_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:\"access\";a:16:{i:0;s:18:\"common/column_left\";i:1;s:18:\"common/filemanager\";i:2;s:11:\"common/menu\";i:3;s:14:\"common/profile\";i:4;s:15:\"contenu/article\";i:5;s:17:\"setting/dbsetting\";i:6;s:15:\"setting/setting\";i:7;s:13:\"setting/store\";i:8;s:11:\"tool/backup\";i:9;s:14:\"tool/error_log\";i:10;s:16:\"tool/help_center\";i:11;s:12:\"tool/sys_log\";i:12;s:11:\"tool/upload\";i:13;s:8:\"user/api\";i:14;s:9:\"user/user\";i:15;s:20:\"user/user_permission\";}s:6:\"modify\";a:16:{i:0;s:18:\"common/column_left\";i:1;s:18:\"common/filemanager\";i:2;s:11:\"common/menu\";i:3;s:14:\"common/profile\";i:4;s:15:\"contenu/article\";i:5;s:17:\"setting/dbsetting\";i:6;s:15:\"setting/setting\";i:7;s:13:\"setting/store\";i:8;s:11:\"tool/backup\";i:9;s:14:\"tool/error_log\";i:10;s:16:\"tool/help_center\";i:11;s:12:\"tool/sys_log\";i:12;s:11:\"tool/upload\";i:13;s:8:\"user/api\";i:14;s:9:\"user/user\";i:15;s:20:\"user/user_permission\";}}'),
(2, 'Demonstration', 'a:1:{s:6:\"access\";a:13:{i:0;s:18:\"elastic/dataconfig\";i:1;s:15:\"elastic/manager\";i:2;s:29:\"elastic/many_database_setting\";i:3;s:11:\"report/logs\";i:4;s:15:\"report/segments\";i:5;s:17:\"setting/dbsetting\";i:6;s:22:\"setting/search_engines\";i:7;s:15:\"setting/setting\";i:8;s:18:\"tool/backup_es_log\";i:9;s:14:\"tool/error_log\";i:10;s:12:\"tool/sys_log\";i:11;s:9:\"user/user\";i:12;s:20:\"user/user_permission\";}}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
