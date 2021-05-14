-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 23 Mai 2017 à 12:14
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tasty_horizons`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `ID_ADMINISTRATEUR` int(11) NOT NULL,
  `LOGIN_ADMINISTRATEUR` varchar(255) NOT NULL,
  `MOT_DE_PASSE_ADMINISTRATEUR` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`ID_ADMINISTRATEUR`, `LOGIN_ADMINISTRATEUR`, `MOT_DE_PASSE_ADMINISTRATEUR`) VALUES
(1, 'root', 'tasthor7');

-- --------------------------------------------------------

--
-- Structure de la table `administrateur_article`
--

CREATE TABLE `administrateur_article` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ID_ADMINISTRATEUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur_image`
--

CREATE TABLE `administrateur_image` (
  `ID_IMAGE` int(11) NOT NULL,
  `ID_ADMINISTRATEUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur_texte`
--

CREATE TABLE `administrateur_texte` (
  `ID_TEXTE` int(11) NOT NULL,
  `ID_ADMINISTRATEUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `ID_ARTICLE` int(11) NOT NULL,
  `TITRE_ARTICLE` varchar(255) NOT NULL,
  `DATE_ARTICLE` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`ID_ARTICLE`, `TITRE_ARTICLE`, `DATE_ARTICLE`) VALUES
(1, 'Tasty Horizons débarque à Nantes', '2017-05-24'),
(2, 'Focus sur le mois mexicain', '2017-05-01'),
(3, 'Focus sur le mois local', '2017-04-01'),
(4, 'Focus sur le mois américain', '2017-03-01'),
(5, 'Focus sur le mois japonais', '2017-02-01');

-- --------------------------------------------------------

--
-- Structure de la table `article_image`
--

CREATE TABLE `article_image` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ID_IMAGE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `ID_CARTE` int(11) NOT NULL,
  `NOM_CARTE` varchar(255) NOT NULL,
  `PERIODE_CARTE` varchar(255) NOT NULL,
  `ID_ADMINISTRATEUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `carte`
--

INSERT INTO `carte` (`ID_CARTE`, `NOM_CARTE`, `PERIODE_CARTE`, `ID_ADMINISTRATEUR`) VALUES
(1, 'Japonaise', 'Du 01/02/2017 au 28/02/2017', 1),
(2, 'Américaine', 'Du 01/03/2017 au 31/03/2017', 1),
(3, 'Locale', 'Du 01/04/2017 au 30/04/2017', 1),
(4, 'Mexicaine', 'Du 01/05/2017 au 31/05/2017', 1);

-- --------------------------------------------------------

--
-- Structure de la table `carte_produit`
--

CREATE TABLE `carte_produit` (
  `ID_CARTE` int(11) NOT NULL,
  `ID_PRODUIT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `ID_COMMENTAIRE` int(11) NOT NULL,
  `DATE_COMMENTAIRE` date NOT NULL,
  `CONTENU_COMMENTAIRE` text NOT NULL,
  `AUTEUR_COMMENTAIRE` varchar(255) NOT NULL,
  `ID_ADMINISTRATEUR` int(11) DEFAULT NULL,
  `ID_ARTICLE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`ID_COMMENTAIRE`, `DATE_COMMENTAIRE`, `CONTENU_COMMENTAIRE`, `AUTEUR_COMMENTAIRE`, `ID_ADMINISTRATEUR`, `ID_ARTICLE`) VALUES
(1, '2017-05-23', 'Salut, très bon article qui explique bien votre concept ', 'Un auteur x', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `ID_CONTACT` int(11) NOT NULL,
  `NOM_CONTACT` varchar(255) NOT NULL,
  `PRENOM_CONTACT` varchar(255) NOT NULL,
  `MAIL_CONTACT` varchar(255) NOT NULL,
  `TELEPHONE_CONTACT` int(11) NOT NULL,
  `OBJET_CONTACT` varchar(255) NOT NULL,
  `MESSAGE_CONTACT` text NOT NULL,
  `DATE_CONTACT` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `ID_EVENEMENT` int(11) NOT NULL,
  `NOM_EVENEMENT` varchar(255) NOT NULL,
  `DATE_EVENEMENT` date NOT NULL,
  `ID_ADMINISTRATEUR` int(11) NOT NULL,
  `ID_CONTACT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `evenement_image`
--

CREATE TABLE `evenement_image` (
  `ID_EVENEMENT` int(11) NOT NULL,
  `ID_IMAGE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formule`
--

CREATE TABLE `formule` (
  `ID_FORMULE` int(11) NOT NULL,
  `NOM_FORMULE` varchar(255) NOT NULL,
  `PRIX_FORMULE` int(11) NOT NULL,
  `ENTREE` tinyint(1) DEFAULT NULL,
  `PLAT` tinyint(1) DEFAULT NULL,
  `DESSERT` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `formule`
--

INSERT INTO `formule` (`ID_FORMULE`, `NOM_FORMULE`, `PRIX_FORMULE`, `ENTREE`, `PLAT`, `DESSERT`) VALUES
(1, 'La Gourmande', 15, 1, 1, 1),
(2, 'La Rapide', 11, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `formule_produit`
--

CREATE TABLE `formule_produit` (
  `ID_FORMULE` int(11) NOT NULL,
  `ID_PRODUIT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `ID_IMAGE` int(11) NOT NULL,
  `TITRE_IMAGE` varchar(255) NOT NULL,
  `ALT_IMAGE` varchar(255) NOT NULL,
  `SRC_IMAGE` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `ID_LOCALISATION` int(11) NOT NULL,
  `LATITUDE_LOCALISATION` double NOT NULL,
  `LONGITUDE_LOCALISATION` double NOT NULL,
  `CP_LOCALISATION` int(11) NOT NULL,
  `VILLE_LOCALISATION` varchar(255) NOT NULL,
  `RUE_LOCALISATION` varchar(255) NOT NULL,
  `DATE_LOCALISATION` varchar(15) NOT NULL,
  `ID_ADMINISTRATEUR` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `localisation`
--

INSERT INTO `localisation` (`ID_LOCALISATION`, `LATITUDE_LOCALISATION`, `LONGITUDE_LOCALISATION`, `CP_LOCALISATION`, `VILLE_LOCALISATION`, `RUE_LOCALISATION`, `DATE_LOCALISATION`, `ID_ADMINISTRATEUR`) VALUES
(1, 47.207507, -1.565393, 44200, 'Nantes', 'Boulevard Léon Bureau', 'Lundi', 1),
(2, 47.213098, -1.562263, 44000, 'Nantes', 'Place Graslin', 'Mardi', 1),
(3, 47.213007, -1.544862, 44000, 'Nantes', 'Jemmapes', 'Mercredi', 1),
(4, 47.217404, -1.559166, 44000, 'Nantes', 'Pont Sauvetout', 'Jeudi', 1),
(5, 47.248988, -1.61266, 44700, 'Saint-Herblain', 'Allée Paul Passard', 'Vendredi', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ID_PRODUIT` int(11) NOT NULL,
  `NOM_PRODUIT` varchar(255) NOT NULL,
  `PRIX_PRODUIT` float NOT NULL,
  `INGREDIENTS` text NOT NULL,
  `TYPE_PRODUIT` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ID_PRODUIT`, `NOM_PRODUIT`, `PRIX_PRODUIT`, `INGREDIENTS`, `TYPE_PRODUIT`) VALUES
(1, 'Bagel Bacon', 2.5, 'pain bagel, salade, bacon, cheddar, cornichons, tomates, oeufs, sauce au choix', 'Plat'),
(2, 'Bagel Saumon', 2.7, 'pain bagel, saumon, ognons rouges, tomates, sauce beurre blanc', 'Plat'),
(3, 'Le Classique Burger', 3, 'pain, cheddar, salade, tomates, steak hachée 200g', 'Plat'),
(4, 'Le Cheese Burger', 3.3, 'pain, cheddar, bleu, camembert fondu , 2 steaks 100g, salade, tomates, ognons rouges', 'Plat'),
(5, 'Le Chicken Burger', 3.2, 'pain, steak de poulet pané, galette de pomme de terre, salade, tomates, ognons rouges', 'Plat'),
(6, 'Le Végétarien', 2.9, 'steak de tofu, ognons, avocat, salade, tomates', 'Plat'),
(7, 'L\'original', 2.7, 'Merguez / Saucisse au choix\r\nSauce au choix, ognons rouges, salade, emmental\r\n', 'Plat'),
(8, 'Petite Frite 250g', 2, 'pommes de terre', 'Accompagnement'),
(9, 'Grande Frite 375g', 3.3, 'pommes de terre', 'Accompagnement'),
(10, 'Donuts chocolat', 2, 'chocolat, pâte à beignet', 'Dessert'),
(11, 'Donuts sucre', 2, 'sucre, pâte à beignet', 'Dessert'),
(12, 'Beignet chocolat', 2, 'chocolat, pâte à beignet', 'Dessert'),
(13, 'Beignet sucre', 2, 'sucre, pâte à beignet', 'Dessert'),
(14, 'Beignet fraise', 2, 'confiture fraise, pâte à beignet', 'Dessert'),
(15, 'Pancake chocolat', 2, 'chocolat, pâte à crêpe', 'Dessert'),
(16, 'Pancake confiture de myrtilles', 2, 'confiture de myrtilles, pâte à crêpe', 'Dessert'),
(17, 'Pancake confiture de fraises', 2, 'confiture de fraises, pâte à crêpe', 'Dessert'),
(18, 'Pancake confiture d\'abricots', 2, 'confiture d\'abricots, pâte à crêpe', 'Dessert'),
(19, 'Pancake confiture de pommes', 2, 'confiture de pommes, pâte à crêpe', 'Dessert'),
(20, 'Pancake sirop d\'érable', 2, 'sirop d\'érable, pâte à crêpe', 'Dessert'),
(21, 'Mayonnaise', 0, 'Mayonnaise', 'Sauce'),
(22, 'Ketchup', 0, 'Ketchup', 'Sauce'),
(23, 'Sauce rocquefort', 0, 'Rocquefort', 'Sauce'),
(24, 'Sauce samouraï', 0, 'mayonnaise, ketchup, harissa', 'Sauce'),
(25, 'Sauce poivre', 0, 'Beurre, farine, poivre', 'Sauce');

-- --------------------------------------------------------

--
-- Structure de la table `texte`
--

CREATE TABLE `texte` (
  `ID_TEXTE` int(11) NOT NULL,
  `CONTENU_TEXTE` text NOT NULL,
  `ID_EVENEMENT` int(11) NOT NULL,
  `ID_ARTICLE` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`ID_ADMINISTRATEUR`);

--
-- Index pour la table `administrateur_article`
--
ALTER TABLE `administrateur_article`
  ADD PRIMARY KEY (`ID_ARTICLE`,`ID_ADMINISTRATEUR`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`);

--
-- Index pour la table `administrateur_image`
--
ALTER TABLE `administrateur_image`
  ADD PRIMARY KEY (`ID_IMAGE`,`ID_ADMINISTRATEUR`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`);

--
-- Index pour la table `administrateur_texte`
--
ALTER TABLE `administrateur_texte`
  ADD PRIMARY KEY (`ID_TEXTE`,`ID_ADMINISTRATEUR`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `article_image`
--
ALTER TABLE `article_image`
  ADD PRIMARY KEY (`ID_ARTICLE`,`ID_IMAGE`),
  ADD KEY `ID_IMAGE` (`ID_IMAGE`);

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`ID_CARTE`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`);

--
-- Index pour la table `carte_produit`
--
ALTER TABLE `carte_produit`
  ADD PRIMARY KEY (`ID_CARTE`,`ID_PRODUIT`),
  ADD KEY `ID_PRODUIT` (`ID_PRODUIT`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`ID_COMMENTAIRE`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`),
  ADD KEY `ID_ARTICLE` (`ID_ARTICLE`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID_CONTACT`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`ID_EVENEMENT`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`,`ID_CONTACT`);

--
-- Index pour la table `evenement_image`
--
ALTER TABLE `evenement_image`
  ADD PRIMARY KEY (`ID_EVENEMENT`,`ID_IMAGE`),
  ADD KEY `ID_IMAGE` (`ID_IMAGE`);

--
-- Index pour la table `formule`
--
ALTER TABLE `formule`
  ADD PRIMARY KEY (`ID_FORMULE`);

--
-- Index pour la table `formule_produit`
--
ALTER TABLE `formule_produit`
  ADD PRIMARY KEY (`ID_FORMULE`,`ID_PRODUIT`),
  ADD KEY `ID_PRODUIT` (`ID_PRODUIT`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ID_IMAGE`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`ID_LOCALISATION`),
  ADD KEY `ID_ADMINISTRATEUR` (`ID_ADMINISTRATEUR`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ID_PRODUIT`);

--
-- Index pour la table `texte`
--
ALTER TABLE `texte`
  ADD PRIMARY KEY (`ID_TEXTE`),
  ADD KEY `ID_EVENEMENT` (`ID_EVENEMENT`,`ID_ARTICLE`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `ID_ADMINISTRATEUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `administrateur_article`
--
ALTER TABLE `administrateur_article`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `administrateur_image`
--
ALTER TABLE `administrateur_image`
  MODIFY `ID_IMAGE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `administrateur_texte`
--
ALTER TABLE `administrateur_texte`
  MODIFY `ID_TEXTE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `article_image`
--
ALTER TABLE `article_image`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `ID_CARTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `ID_COMMENTAIRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID_CONTACT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `ID_EVENEMENT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `evenement_image`
--
ALTER TABLE `evenement_image`
  MODIFY `ID_EVENEMENT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `formule`
--
ALTER TABLE `formule`
  MODIFY `ID_FORMULE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `formule_produit`
--
ALTER TABLE `formule_produit`
  MODIFY `ID_FORMULE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `ID_IMAGE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `localisation`
--
ALTER TABLE `localisation`
  MODIFY `ID_LOCALISATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `ID_PRODUIT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `texte`
--
ALTER TABLE `texte`
  MODIFY `ID_TEXTE` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
