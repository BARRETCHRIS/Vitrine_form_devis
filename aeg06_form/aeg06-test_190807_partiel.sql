-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 07 août 2019 à 18:37
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `aeg06-test`
--

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `gamme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `gamme_id`) VALUES
(1, 'Daikin', 7),
(2, 'Panasonic', 7),
(3, 'Hitachi', 7),
(4, 'Atlantic / Fujitsu', 7),
(5, 'Toshiba', 7),
(6, 'Général', 7),
(7, 'Mitsubishi', 7),
(8, 'CoolSmart', 1),
(9, 'Heiwa', 1);

-- --------------------------------------------------------

--
-- Structure de la table `building`
--

CREATE TABLE `building` (
  `bld_id` int(11) NOT NULL,
  `bld_who` tinyint(1) NOT NULL,
  `lt_id` tinyint(1) NOT NULL,
  `bld_all_area` decimal(10,0) NOT NULL,
  `bld_middle_height` decimal(10,0) NOT NULL,
  `bld_energy_class` varchar(3) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `bld_roomnbr` int(3) NOT NULL,
  `bld_climnbr` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `gamme`
--

CREATE TABLE `gamme` (
  `gamme_id` int(11) NOT NULL,
  `gamme_name` varchar(30) NOT NULL,
  `gamme_value` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gamme`
--

INSERT INTO `gamme` (`gamme_id`, `gamme_name`, `gamme_value`) VALUES
(1, 'Entrée de gamme', 1),
(2, 'Moyen de gamme', 2),
(3, 'Haut de gamme', 3),
(4, 'Entrée et moyen de gamme', 4),
(5, 'Entrée et haut de gamme', 5),
(6, 'Moyen et haut de gamme', 6),
(7, 'Entrée, moyen et haut de gamme', 7);

-- --------------------------------------------------------

--
-- Structure de la table `gas_type`
--

CREATE TABLE `gas_type` (
  `gt_id` int(11) NOT NULL,
  `gt_displayfr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gas_type`
--

INSERT INTO `gas_type` (`gt_id`, `gt_displayfr`) VALUES
(1, 'R22 HCFC CHLORODIFLUOROMETHANE'),
(2, 'R32 HFC DIFLUOROMETHANE'),
(3, 'R404A HFC MELANGES ZEOTROPIQUE'),
(4, 'R410A HFC MELANGES ZEOTROPIQUE');

-- --------------------------------------------------------

--
-- Structure de la table `local_type`
--

CREATE TABLE `local_type` (
  `lt_id` int(11) NOT NULL,
  `lt_displayfr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `local_type`
--

INSERT INTO `local_type` (`lt_id`, `lt_displayfr`) VALUES
(1, 'maison'),
(2, 'appartement'),
(3, 'bureau'),
(4, 'commerce'),
(5, 'restaurant'),
(6, 'hangard / entrepot'),
(7, 'immeuble'),
(8, 'autres');

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'tva_pro', '20'),
(2, 'tva_particulier', '10');

-- --------------------------------------------------------

--
-- Structure de la table `room_type`
--

CREATE TABLE `room_type` (
  `rt_id` int(11) NOT NULL,
  `rt_displayfr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `room_type`
--

INSERT INTO `room_type` (`rt_id`, `rt_displayfr`) VALUES
(1, 'salon / séjour'),
(2, 'chambre'),
(3, 'cuisine'),
(4, 'salle de bains'),
(5, 'veranda / terrasse'),
(6, 'bureau informatisé'),
(7, 'salle de réunion'),
(8, 'réserve'),
(9, 'salle à forte fréquentation'),
(10, 'atelier'),
(11, 'autre');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `sv_id` int(11) NOT NULL,
  `sv_displayfr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`sv_id`, `sv_displayfr`) VALUES
(1, 'pose et fourniture à neuf'),
(2, 'reprise d\'une installation'),
(3, 'mise en service'),
(4, 'dépannage'),
(5, 'entretien');

-- --------------------------------------------------------

--
-- Structure de la table `type_machine`
--

CREATE TABLE `type_machine` (
  `tm_id` int(11) NOT NULL,
  `tm_displayfr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Index pour la table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`bld_id`);

--
-- Index pour la table `gamme`
--
ALTER TABLE `gamme`
  ADD PRIMARY KEY (`gamme_id`);

--
-- Index pour la table `gas_type`
--
ALTER TABLE `gas_type`
  ADD PRIMARY KEY (`gt_id`);

--
-- Index pour la table `local_type`
--
ALTER TABLE `local_type`
  ADD PRIMARY KEY (`lt_id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Index pour la table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`rt_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sv_id`);

--
-- Index pour la table `type_machine`
--
ALTER TABLE `type_machine`
  ADD PRIMARY KEY (`tm_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `building`
--
ALTER TABLE `building`
  MODIFY `bld_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gamme`
--
ALTER TABLE `gamme`
  MODIFY `gamme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `gas_type`
--
ALTER TABLE `gas_type`
  MODIFY `gt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `local_type`
--
ALTER TABLE `local_type`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type_machine`
--
ALTER TABLE `type_machine`
  MODIFY `tm_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
