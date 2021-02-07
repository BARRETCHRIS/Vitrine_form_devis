-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 05 août 2019 à 16:51
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
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_type` tinyint(1) NOT NULL DEFAULT '0',
  `c_pro` tinyint(1) NOT NULL DEFAULT '1',
  `entreprise_id` int(11) NOT NULL,
  `c_prostatus` tinyint(1) NOT NULL DEFAULT '1',
  `c_account` tinyint(1) NOT NULL DEFAULT '0',
  `c_function` varchar(50) NOT NULL,
  `c_firstname` varchar(50) NOT NULL,
  `c_lastname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `c_civility` char(1) NOT NULL,
  `c_address` varchar(100) NOT NULL,
  `c_cp` varchar(10) NOT NULL,
  `c_city` varchar(50) NOT NULL,
  `c_phone` varchar(16) NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  `c_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
