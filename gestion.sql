-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 19 Avril 2021 à 15:55
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id_patient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `tel` int(16) NOT NULL,
  `date_n` date NOT NULL,
  `cin` varchar(20) NOT NULL,
  PRIMARY KEY (`id_patient`),
  UNIQUE KEY `cin` (`cin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Contenu de la table `patient`
--

INSERT INTO `patient` (`id_patient`, `nom`, `prenom`, `adresse`, `tel`, `date_n`, `cin`) VALUES
(39, 'Driowya', 'Abdelghafour', 'Talaa 10', 626720424, '1996-08-03', 'AD303845'),
(49, 'asdfg', 'ertyu', 'asdfg', 567893452, '1998-02-19', '123');

-- --------------------------------------------------------

--
-- Structure de la table `rdv`
--

CREATE TABLE IF NOT EXISTS `rdv` (
  `foreign_id` int(11) DEFAULT NULL,
  `date_rdv` datetime DEFAULT NULL,
  UNIQUE KEY `date_rdv` (`date_rdv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rdv`
--

INSERT INTO `rdv` (`foreign_id`, `date_rdv`) VALUES
(1, '2018-08-31 08:00:00'),
(1, '2018-08-26 08:30:00'),
(1, '2018-08-28 08:30:00'),
(1, '2018-08-30 08:30:00'),
(1, '2018-08-30 11:30:00'),
(1, '2018-08-30 12:00:00'),
(1, '2018-08-30 12:30:00'),
(1, '2018-08-30 13:00:00'),
(1, '2018-08-30 13:30:00'),
(1, '2018-08-30 14:00:00'),
(2, '0000-00-00 00:00:00'),
(2, '2018-09-20 00:00:00'),
(2, '2018-09-27 08:30:00'),
(2, '2018-09-27 08:00:00'),
(2, '2018-09-27 09:30:00'),
(2, '2018-09-27 09:00:00'),
(2, '2018-09-27 10:00:00'),
(2, '2018-09-27 10:30:00'),
(2, '2018-09-27 11:00:00'),
(2, '2018-09-27 11:30:00'),
(2, '2018-09-27 12:00:00'),
(2, '2018-09-27 13:30:00'),
(2, '2018-09-27 12:30:00'),
(2, '2018-09-27 13:00:00'),
(2, '2018-09-27 14:00:00'),
(2, '2018-09-28 08:30:00'),
(2, '2018-09-28 08:00:00'),
(2, '2018-09-28 10:30:00'),
(2, '2018-09-28 14:00:00'),
(2, '2018-09-28 09:00:00'),
(2, '2018-09-28 11:00:00'),
(1, '2021-04-22 08:00:00'),
(1, '2021-04-27 08:00:00'),
(1, '2021-04-19 08:00:00'),
(1, '2021-04-27 11:30:00'),
(1, '2021-04-30 10:30:00'),
(1, '2021-04-21 08:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `id` int(10) NOT NULL,
  `titre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`id`, `titre`) VALUES
(1, 'Neurologue');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `iduser` varchar(50) NOT NULL,
  `nomuser` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`iduser`, `nomuser`, `prenom`, `login`, `password`) VALUES
('melissa', 'melissa', 'melissa', 'melissa', 'melissa'),
('kahina', 'kahina', 'kahina', 'kahina', 'kahina');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
