-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 19 mars 2018 à 10:19
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `SYG`
--

-- --------------------------------------------------------

--
-- Structure de la table `GAMES`
--

CREATE TABLE `GAMES` (
  `ID_GAMES` int(11) NOT NULL,
  `NAME_GAME` varchar(40) NOT NULL,
  `DESCRIPTION_GAMES` varchar(40) DEFAULT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `ID_TYPE` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `GAMES`
--

INSERT INTO `GAMES` (`ID_GAMES`, `NAME_GAME`, `DESCRIPTION_GAMES`, `ID`, `ID_TYPE`) VALUES
(1, 'Neytau', 'Un jeu génial', 1, 1),
(2, 'Kingdom come : Deliverance', 'Medieval', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `GENRE`
--

CREATE TABLE `GENRE` (
  `ID_TYPE` int(10) UNSIGNED NOT NULL,
  `NAME_TYPE` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `GENRE`
--

INSERT INTO `GENRE` (`ID_TYPE`, `NAME_TYPE`) VALUES
(1, 'RPG');

-- --------------------------------------------------------

--
-- Structure de la table `UTILISATEURS`
--

CREATE TABLE `UTILISATEURS` (
  `ID` int(10) UNSIGNED NOT NULL,
  `MAIL` varchar(40) NOT NULL,
  `MDP` varchar(40) NOT NULL,
  `PSEUDO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `UTILISATEURS`
--

INSERT INTO `UTILISATEURS` (`ID`, `MAIL`, `MDP`, `PSEUDO`) VALUES
(1, 'darkansloading@gmail.com', 'test', 'Darkans');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `GAMES`
--
ALTER TABLE `GAMES`
  ADD PRIMARY KEY (`ID_GAMES`),
  ADD KEY `FK_GAMES_UTILISATEURS` (`ID`),
  ADD KEY `FK_GAMES_GENRE` (`ID_TYPE`);

--
-- Index pour la table `GENRE`
--
ALTER TABLE `GENRE`
  ADD PRIMARY KEY (`ID_TYPE`);

--
-- Index pour la table `UTILISATEURS`
--
ALTER TABLE `UTILISATEURS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `GAMES`
--
ALTER TABLE `GAMES`
  MODIFY `ID_GAMES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `GENRE`
--
ALTER TABLE `GENRE`
  MODIFY `ID_TYPE` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `UTILISATEURS`
--
ALTER TABLE `UTILISATEURS`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `GAMES`
--
ALTER TABLE `GAMES`
  ADD CONSTRAINT `FK_GAMES_GENRE` FOREIGN KEY (`ID_TYPE`) REFERENCES `GENRE` (`ID_TYPE`),
  ADD CONSTRAINT `FK_GAMES_UTILISATEURS` FOREIGN KEY (`ID`) REFERENCES `UTILISATEURS` (`ID`);