-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 24, 2022 at 04:00 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eLibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bibliotheque`
--

CREATE TABLE `Bibliotheque` (
    `id` int(11) NOT NULL,
    `nom` varchar(45) NOT NULL,
    `Livre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Bibliotheque_Membre`
--

CREATE TABLE `Bibliotheque_Membre` (
    `Bibliotheque_id` int(11) NOT NULL,
    `Bibliotheque_Livre_id` int(11) NOT NULL,
    `Membre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Etudiant`
--

CREATE TABLE `Etudiant` (
    `id` int(11) NOT NULL,
    `code_permanent` varchar(45) NOT NULL,
    `Membre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Libraire`
--

CREATE TABLE `Libraire` (
    `id` int(11) NOT NULL,
    `Bibliotheque_id` int(11) NOT NULL,
    `Membre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Livre`
--

CREATE TABLE `Livre` (
    `id` int(11) NOT NULL,
    `titre` varchar(45) NOT NULL,
    `auteur` varchar(45) NOT NULL,
    `maison_edition` varchar(45) NOT NULL,
    `prix` varchar(15) DEFAULT NULL,
    `Membre_id` int(11) NOT NULL,
    `Libraire_id` int(11) NOT NULL,
    `Libraire_Bibliotheque_id` int(11) NOT NULL,
    `Libraire_Membre_id` int(11) NOT NULL,
    `Bibliotheque_id` int(11) NOT NULL,
    `Bibliotheque_Livre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Membre`
--

CREATE TABLE `Membre` (
    `id` int(11) NOT NULL,
    `nom` varchar(25) NOT NULL,
    `prenom` varchar(25) NOT NULL,
    `adresse` varchar(50) NOT NULL,
    `code_postal` varchar(10) NOT NULL,
    `telephone` varchar(25) NOT NULL,
    `courriel` varchar(50) NOT NULL,
    `num_livre_loue` int(11) NOT NULL,
    `type_membre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Membre`
--

INSERT INTO `Membre` (`id`, `nom`, `prenom`, `adresse`, `code_postal`, `telephone`, `courriel`, `num_livre_loue`, `type_membre`) VALUES
(1, 'Tremblay', 'Nicolas', '3345 rue Saint-Urbain', 'G7T 3H9', '514-987-6755', 'nictremblay@gmail.com', 1, 'Or'),
(2, 'Boulay', 'Simon', '2377 rue Piché', 'H8Y 1V9', '514-897-8877', 'simboulay@gmail.com', 2, 'Argent'),
(3, 'Côté', 'Annie', '23 rue Henri', 'G3I 3N0', '514-234-4322', 'anncote@gmail.com', 1, 'Argent'),
(4, 'Trudel', 'Céline', '4411 rue Patrick', 'G7Y 0K8', '514-999-2434', 'celtrudel@gmail.com', 2, 'Or'),
(5, 'Lebel', 'Diane', '12 rue Saint-Elizabeth', 'H6H 7G6', '514-786-9087', 'dialebel@gmail.com', 3, 'Bronze'),
(6, 'Prévost', 'Caroline', '454 rue Laurier', 'H4Y 7U8', '514-966-3452', 'carprevost@gmail.com', 1, 'Argent'),
(12, 'Moisan', 'Pierre-Luc', '6030 rue Saint-Urbain', 'H2T 2X5', '15148857454', 'pierreluc.moisan.studio@gmail.com', 3, 'Argent'),
(14, 'Moisan', 'Richard', '68 rue Saint-Urbain', 'H4E 2N5', '15148857454', 'richmoi@gmail.com', 5, 'or'),
(19, 'Pontier', 'Paulette', '133, rue André', 'G3L2A1', '5142254185', 'paupontier@gmail.com', 4, 'Argent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bibliotheque`
--
ALTER TABLE `Bibliotheque`
    ADD PRIMARY KEY (`id`,`Livre_id`);

--
-- Indexes for table `Bibliotheque_Membre`
--
ALTER TABLE `Bibliotheque_Membre`
    ADD PRIMARY KEY (`Bibliotheque_id`,`Bibliotheque_Livre_id`,`Membre_id`),
    ADD KEY `fk_Bibliotheque_Membre_Membre1_idx` (`Membre_id`),
    ADD KEY `fk_Bibliotheque_Membre_Bibliotheque1_idx` (`Bibliotheque_id`,`Bibliotheque_Livre_id`);

--
-- Indexes for table `Etudiant`
--
ALTER TABLE `Etudiant`
    ADD PRIMARY KEY (`id`,`Membre_id`),
    ADD UNIQUE KEY `Membre_id_UNIQUE` (`Membre_id`),
    ADD KEY `fk_Etudiant_Membre1_idx` (`Membre_id`);

--
-- Indexes for table `Libraire`
--
ALTER TABLE `Libraire`
    ADD PRIMARY KEY (`id`,`Bibliotheque_id`,`Membre_id`),
    ADD UNIQUE KEY `Bibliotheque_id_UNIQUE` (`Bibliotheque_id`),
    ADD UNIQUE KEY `Membre_id_UNIQUE` (`Membre_id`),
    ADD KEY `fk_Libraire_Bibliotheque1_idx` (`Bibliotheque_id`),
    ADD KEY `fk_Libraire_Membre1_idx` (`Membre_id`);

--
-- Indexes for table `Livre`
--
ALTER TABLE `Livre`
    ADD PRIMARY KEY (`id`,`Membre_id`,`Libraire_id`,`Libraire_Bibliotheque_id`,`Libraire_Membre_id`,`Bibliotheque_id`,`Bibliotheque_Livre_id`),
    ADD KEY `fk_Livre_Membre1_idx` (`Membre_id`),
    ADD KEY `fk_Livre_Libraire1_idx` (`Libraire_id`,`Libraire_Bibliotheque_id`,`Libraire_Membre_id`),
    ADD KEY `fk_Livre_Bibliotheque1_idx` (`Bibliotheque_id`,`Bibliotheque_Livre_id`);

--
-- Indexes for table `Membre`
--
ALTER TABLE `Membre`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bibliotheque`
--
ALTER TABLE `Bibliotheque`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Etudiant`
--
ALTER TABLE `Etudiant`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Libraire`
--
ALTER TABLE `Libraire`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Livre`
--
ALTER TABLE `Livre`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Membre`
--
ALTER TABLE `Membre`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bibliotheque_Membre`
--
ALTER TABLE `Bibliotheque_Membre`
    ADD CONSTRAINT `fk_Bibliotheque_Membre_Bibliotheque1` FOREIGN KEY (`Bibliotheque_id`,`Bibliotheque_Livre_id`) REFERENCES `Bibliotheque` (`id`, `Livre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_Bibliotheque_Membre_Membre1` FOREIGN KEY (`Membre_id`) REFERENCES `Membre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Etudiant`
--
ALTER TABLE `Etudiant`
    ADD CONSTRAINT `fk_Etudiant_Membre1` FOREIGN KEY (`Membre_id`) REFERENCES `Membre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Libraire`
--
ALTER TABLE `Libraire`
    ADD CONSTRAINT `fk_Libraire_Bibliotheque1` FOREIGN KEY (`Bibliotheque_id`) REFERENCES `Bibliotheque` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_Libraire_Membre1` FOREIGN KEY (`Membre_id`) REFERENCES `Membre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Livre`
--
ALTER TABLE `Livre`
    ADD CONSTRAINT `fk_Livre_Bibliotheque1` FOREIGN KEY (`Bibliotheque_id`,`Bibliotheque_Livre_id`) REFERENCES `Bibliotheque` (`id`, `Livre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_Livre_Libraire1` FOREIGN KEY (`Libraire_id`,`Libraire_Bibliotheque_id`,`Libraire_Membre_id`) REFERENCES `Libraire` (`id`, `Bibliotheque_id`, `Membre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_Livre_Membre1` FOREIGN KEY (`Membre_id`) REFERENCES `Membre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
