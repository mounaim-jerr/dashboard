-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 13 avr. 2021 à 10:58
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `membres`
--

-- --------------------------------------------------------

--
-- Structure de la table `developpeur`
--

DROP TABLE IF EXISTS `developpeur`;
CREATE TABLE IF NOT EXISTS `developpeur` (
  `dev_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `mail` varchar(200) NOT NULL,
  PRIMARY KEY (`dev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `membres_donnee`
--

DROP TABLE IF EXISTS `membres_donnee`;
CREATE TABLE IF NOT EXISTS `membres_donnee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `vkey` varchar(60) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membres_donnee`
--

INSERT INTO `membres_donnee` (`id`, `firstName`, `lastName`, `mail`, `vkey`, `verified`, `password`, `create_date`) VALUES
(35, 'MOHAMMED', 'RABHI', 'rabhimed49@gmail.com', '82bb204e5135588215b2f19cc5d900fe', 0, '$2y$10$Cs3AQkjCJMPHxMdPQEfEXO78G8a1nWCqFBODsfc5TYcb5oyINiUJe', '2021-04-12 15:28:37'),
(36, 'MOHAMMED', 'RABHI', 'rabhimed49@gmail.com', '43749315a7ff07272a411b0525a4ed35', 0, '$2y$10$26D1foQY5BfQ/D0XdjctQ.a8wklqjJla8vUtG2AMoCLt56lGXZtLm', '2021-04-12 18:00:51'),
(37, 'Abdelmonaim', 'Jerroudi', 'jerroudi.mo@gmail.com', '8918bb987fa73f909474d885b68be029', 1, '$2y$10$cCHG7Tyzc6Z0nIeVB7ztuevuMie.81I.9pSqpv1OTBo/iIw9Ye9XW', '2021-04-12 18:04:22');

-- --------------------------------------------------------

--
-- Structure de la table `techno`
--

DROP TABLE IF EXISTS `techno`;
CREATE TABLE IF NOT EXISTS `techno` (
  `techno_id` int(11) NOT NULL AUTO_INCREMENT,
  `techno_name` varchar(50) NOT NULL,
  PRIMARY KEY (`techno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
