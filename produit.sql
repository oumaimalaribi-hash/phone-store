-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 04 Février 2026 à 18:30
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `magasin`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `marque` varchar(50) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `memoire` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `batterie` varchar(30) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `garantie` varchar(20) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom`, `marque`, `prix`, `memoire`, `ram`, `batterie`, `couleur`, `garantie`, `description`) VALUES
(1, 'Samsung Galaxy A14', 'Samsung', '850.00', '128 Go', '6 Go', '5000 mAh', 'Noir', '1 an', 'Smartphone Android, écran 6.6 pouces, bonne autonomie, idéal pour usage quotidien.'),
(2, 'iPhone 13', 'Apple', '4200.00', '128 Go', '4 Go', '3240 mAh', 'Noir,Blanc', '1 an', 'Smartphone Apple haut de gamme avec écran Super Retina de 6.1 pouces, performances fluides grâce à la puce A15 Bionic, appareil photo performant et bonne autonomie pour une utilisation quotidienne.'),
(3, 'Xiaomi Redmi Note 12', 'Xiaomi', '780.00', '128 Go', '8 Go', '5000 mAh', 'Bleu,Noire,Beige', '1 an', 'Smartphone Android avec écran AMOLED 6.67 pouces, très bon rapport qualité/prix.'),
(4, 'Infinix Note 40 Pro+', 'Infinix', '1150.00', '256 Go', '12 Go', '4600 mAh', 'Noir', '1 an', 'Smartphone Android avec écran AMOLED incurvé 6.78 pouces, charge rapide 100W, bonnes performances et design moderne.'),
(5, 'OPPO A78', 'OPPO', '980.00', '128 Go', '8 Go', '5000 mAh', 'Vert', '1 an', 'Smartphone Android avec écran AMOLED 6.43 pouces, bonne autonomie et design élégant.'),
(6, 'Huawei Nova 11i', 'Huawei', '860.00', '128 Go', '8 Go', '5000 mAh', 'Noir, Vert', '1 an', 'Smartphone Huawei avec écran 6.8 pouces, bonne autonomie et design moderne.'),
(7, 'Nokia G42 5G', 'Nokia', '900.00', '128 Go', '6 Go', '5000 mAh', 'Gris, Violet', '1 an', 'Smartphone Android 5G, robuste, avec bonne autonomie et design simple.'),
(8, 'Vivo Y36', 'Vivo', '830.00', '128 Go', '8 Go', '5000 mAh', 'Noir, Vert', '1 an', 'Smartphone Android avec écran 6.64 pouces, design élégant et bonne autonomie.'),
(9, 'Samsung Galaxy S21 FE', 'Samsung', '3200.00', '128 Go', '6 Go', '4500 mAh', 'Vert', '1 an', 'Smartphone Android haut de gamme avec grand écran AMOLED, performances rapides, appareil photo polyvalent et bonne autonomie pour toutes les utilisations.'),
(10, 'OnePlus Nord 2', 'OnePlus', '2500.00', '128 Go', '8 Go', '4500 mAh', 'Gris', '2 ans', 'Smartphone Android performant avec écran Fluid AMOLED de 6.43 pouces, charges rapides, excellente performance pour les jeux et multitâche, idéal pour usage quotidien intensif'),
(11, 'Google Pixel 6a', 'Google', '2800.00', '128 Go', '6 Go', '4410 mAh', 'Noir, Vert', '1 an', 'Smartphone Android avec interface fluide, appareil photo de qualité, mises à jour Google rapides et performance équilibrée pour un usage quotidien.'),
(12, 'Motorola Moto G62', 'Motorola', '1700.00', '128 Go', '6 Go', '5000 mAh', 'Bleu,Noire,Beige', '1 an', 'Smartphone Android avec grand écran 6.5 pouces, bon équilibre entre performance et autonomie, idéal pour les tâches quotidiennes, les vidéos et les jeux légers.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
