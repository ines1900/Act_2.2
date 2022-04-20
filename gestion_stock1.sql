-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 19 avr. 2022 à 10:55
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_stock`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `client_nom` varchar(128) NOT NULL,
  `téléphone` int NOT NULL,
  `abonnement` enum('premium','vip','classique') NOT NULL,
  `intérêt` set('sport','cinema','musique') NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`client_id`, `client_nom`, `téléphone`, `abonnement`, `intérêt`) VALUES
(1, 'tom', 198458, 'premium', 'cinema'),
(2, 'jerry', 2548725, 'vip', 'musique'),
(3, 'shaune', 45852, 'premium', 'sport'),
(4, 'masha', 54661, 'premium', 'cinema'),
(5, 'bear', 54872, 'classique', 'cinema');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `fournisseur_id` int NOT NULL AUTO_INCREMENT,
  `fournisseur_nom` varchar(128) NOT NULL,
  PRIMARY KEY (`fournisseur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`fournisseur_id`, `fournisseur_nom`) VALUES
(1, 'coquette'),
(2, 'chic'),
(3, 'charmeblanc'),
(4, 'jinajoli'),
(5, 'coincidence');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `produit_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(128) NOT NULL,
  `marque` varchar(128) NOT NULL,
  `référence_fournisseur` int NOT NULL,
  PRIMARY KEY (`produit_id`),
  KEY `produit_id` (`produit_id`),
  KEY `référence_fournisseur` (`référence_fournisseur`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`produit_id`, `nom`, `type`, `marque`, `référence_fournisseur`) VALUES
(1, 'ref1', 'robe', 'zara', 1),
(2, 'ref2', 'short', 'stradi', 3),
(3, 'ref3', 'pull', 'pullandbear', 4),
(4, 'ref5', 'robe', 'pullandbear', 4),
(5, 'ref6', 'robe', 'zara', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
