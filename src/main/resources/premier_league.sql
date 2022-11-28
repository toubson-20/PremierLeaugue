-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 nov. 2022 à 19:21
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `premierleague`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nom_equipe` varchar(50) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `nom_stade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`id`, `nom_equipe`, `ville`, `nom_stade`) VALUES
(1, 'Manchester United', 'Manchester', 'Old Trafford'),
(2, 'Manchester City', 'Manchester', 'Etihad Stadium'),
(3, 'Arsenal', 'Londres', 'Emirates Stadium'),
(4, 'Liverpool', 'Liverpool', 'Anfield'),
(5, 'Tottenham', 'Londres', 'Hotspur stadium');

-- --------------------------------------------------------

--
-- Structure de la table `joueurs`
--

CREATE TABLE `joueurs` (
  `id` int(11) NOT NULL,
  `nom_joueur` varchar(40) NOT NULL,
  `num_maillot` int(11) NOT NULL,
  `poste` varchar(40) NOT NULL,
  `id_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `joueurs`
--

INSERT INTO `joueurs` (`id`, `nom_joueur`, `num_maillot`, `poste`, `id_equipe`) VALUES
(1, 'Shaw', 23, 'defenseur', 1),
(2, 'Varane', 19, 'defenseur', 1),
(3, 'Martinez', 6, 'defenseur', 1),
(4, 'Casemiro', 18, 'milieu', 1),
(5, 'Eriksen', 14, 'milieu', 1),
(6, 'Fernandes', 8, 'milieu', 1),
(7, 'Rashford', 10, 'attaquant', 1),
(8, 'Martial', 9, 'attaquant', 1),
(9, 'Antony', 21, 'attaquant', 1),
(10, 'De Gea', 1, 'gardien', 1),
(11, 'Ederson', 31, 'gardien', 2),
(12, 'Cancelo', 7, 'defenseur', 2),
(13, 'Dias', 3, 'defenseur', 2),
(14, 'Akanji', 25, 'defenseur', 2),
(15, 'Walker', 2, 'defenseur', 2),
(16, 'Rodri', 16, 'milieu', 2),
(17, 'Silva', 20, 'milieu', 2),
(18, 'De Bruyne', 17, 'milieu', 2),
(19, 'Grealish', 10, 'attaquant', 2),
(20, 'Mahrez', 26, 'attaquant', 2),
(21, 'Haaland', 9, 'attaquant', 2),
(22, 'Ramsdale', 1, 'gardien', 3),
(23, 'Tierney', 3, 'defenseur', 3),
(24, 'Saliba', 12, 'defenseur', 3),
(25, 'White', 4, 'defenseur', 3),
(26, 'Zinchenko', 35, 'defenseur', 3),
(27, 'Partey', 5, 'milieu', 3),
(28, 'Xhaka', 34, 'milieu', 3),
(29, 'Odegaard', 8, 'milieu', 3),
(30, 'Martinelli', 11, 'attaquant', 3),
(31, 'Jesus', 9, 'attaquant', 3),
(32, 'Nelson', 24, 'attaquant', 3),
(33, 'Alisson', 1, 'gardien', 4),
(34, 'Alexander-Arnold', 66, 'defenseur', 4),
(35, 'Matip', 32, 'defenseur', 4),
(36, 'Konate', 5, 'defenseur', 4),
(37, 'Robertson', 26, 'defenseur', 4),
(38, 'Fabinho', 3, 'milieu', 4),
(39, 'Thiago', 6, 'milieu', 4),
(40, 'Elliott', 19, 'milieu', 4),
(41, 'Salah', 11, 'attaquant', 4),
(42, 'Diaz', 23, 'attaquant', 4),
(43, 'Nunez', 27, 'attaquant', 4),
(44, 'Lloris', 1, 'gardien', 5),
(45, 'Sanchez', 6, 'defenseur', 5),
(46, 'Royal', 12, 'defenseur', 5),
(47, 'Lenglet', 34, 'defenseur', 5),
(48, 'Romero', 17, 'defenseur', 5),
(49, 'Bentacur', 30, 'milieu', 5),
(50, 'Perisic', 14, 'milieu', 5),
(51, 'Bissouma', 38, 'milieu', 5),
(52, 'Kane', 10, 'attaquant', 5),
(53, 'Son', 7, 'attaquant', 5),
(54, 'Kulusevki', 21, 'attaquant', 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `joueurs`
--
ALTER TABLE `joueurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `joueurs`
--
ALTER TABLE `joueurs`
  ADD CONSTRAINT `joueurs_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
