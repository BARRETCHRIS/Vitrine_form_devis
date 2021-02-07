-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 06 août 2019 à 19:26
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
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_type` tinyint(1) NOT NULL DEFAULT '0',
  `c_pro` tinyint(1) NOT NULL DEFAULT '1',
  `entreprise_id` int(11) NOT NULL,
  `c_pro_status` tinyint(1) NOT NULL DEFAULT '1',
  `c_account` tinyint(1) NOT NULL DEFAULT '0',
  `c_function` varchar(50) NOT NULL,
  `c_firstname` varchar(50) NOT NULL,
  `c_lastname` varchar(50) NOT NULL,
  `c_civility` char(1) NOT NULL,
  `c_address` varchar(100) NOT NULL,
  `c_cp` varchar(10) NOT NULL,
  `c_city` varchar(50) NOT NULL,
  `c_phone` varchar(16) NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  `c_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `enterprise`
--

CREATE TABLE `enterprise` (
  `entreprise_id` int(11) NOT NULL,
  `entreprise_name` varchar(50) NOT NULL,
  `entreprise_siret` varchar(17) NOT NULL,
  `entreprise_tva` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `estimate`
--

CREATE TABLE `estimate` (
  `es_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `bld_id` int(11) NOT NULL,
  `tm_id` int(11) NOT NULL,
  `gamme_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `es_comment` text NOT NULL,
  `es_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `gamme`
--

CREATE TABLE `gamme` (
  `gamme_id` int(11) NOT NULL,
  `gamme_name` varchar(20) NOT NULL,
  `gamme_value` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gamme`
--

INSERT INTO `gamme` (`gamme_id`, `gamme_name`, `gamme_value`) VALUES
(1, 'Entrée de gamme', 1),
(2, 'Moyen de gamme', 2);

-- --------------------------------------------------------

--
-- Structure de la table `gas_type`
--

CREATE TABLE `gas_type` (
  `gt_id` int(11) NOT NULL,
  `gt_displayfr` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `local_type`
--

CREATE TABLE `local_type` (
  `lt_id` int(11) NOT NULL,
  `lt_displayfr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_type` tinyint(1) NOT NULL,
  `menu_displayfr` varchar(20) NOT NULL,
  `menu_menu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `gamme_id` int(11) NOT NULL,
  `tm_id` int(11) NOT NULL,
  `p_ref` varchar(30) NOT NULL,
  `gt_id` varchar(10) NOT NULL,
  `p_voltage` varchar(10) NOT NULL,
  `p_volume` varchar(10) NOT NULL,
  `p_price` decimal(10,0) NOT NULL,
  `p_tva` tinyint(1) NOT NULL,
  `p_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `bld_id` int(11) NOT NULL,
  `rt_id` int(11) NOT NULL,
  `room_area` decimal(10,0) NOT NULL,
  `room_height` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `room_type`
--

CREATE TABLE `room_type` (
  `rt_id` int(11) NOT NULL,
  `rt_displayfr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `sv_id` int(11) NOT NULL,
  `sv_displayfr` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Index pour la table `enterprise`
--
ALTER TABLE `enterprise`
  ADD PRIMARY KEY (`entreprise_id`);

--
-- Index pour la table `estimate`
--
ALTER TABLE `estimate`
  ADD PRIMARY KEY (`es_id`);

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
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

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
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `building`
--
ALTER TABLE `building`
  MODIFY `bld_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enterprise`
--
ALTER TABLE `enterprise`
  MODIFY `entreprise_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `estimate`
--
ALTER TABLE `estimate`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gamme`
--
ALTER TABLE `gamme`
  MODIFY `gamme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gas_type`
--
ALTER TABLE `gas_type`
  MODIFY `gt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `local_type`
--
ALTER TABLE `local_type`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_machine`
--
ALTER TABLE `type_machine`
  MODIFY `tm_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
