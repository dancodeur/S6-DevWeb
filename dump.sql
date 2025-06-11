-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql-projetb.alwaysdata.net
-- Generation Time: Jun 11, 2025 at 08:53 PM
-- Server version: 10.11.13-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetb_sae601`
--

-- --------------------------------------------------------

--
-- Table structure for table `jaquette`
--

CREATE TABLE `jaquette` (
  `id` int(11) NOT NULL,
  `nom_jeu` varchar(30) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jaquette`
--

INSERT INTO `jaquette` (`id`, `nom_jeu`, `image`) VALUES
(3, 'Pokémon Bleue', 'pokemon-bleue.png'),
(4, 'Pokémon Jaune', 'pokemon-jaune.png'),
(5, 'Pokémon Or', 'pokemon-or.png'),
(6, 'Pokémon Argent', 'pokemon-argent.png'),
(7, 'Pokémon Crystal', 'pokemon-crystal.png'),
(8, 'Pokémon Saphir', 'pokemon-saphir.avif'),
(9, 'Pokémon Rubis', 'pokemon-rubis.avif'),
(10, 'Pokémon Émeraude', 'pokemon-emeraude.avif'),
(11, 'Pokémon Rouge feu', 'pokemon-rouge-feu.avif'),
(12, 'Pokémon Rouge', 'pokemon-rouge.png'),
(13, 'Pokémon Vert feuille', 'pokemon-vert-feuille.avif'),
(14, 'Pokémon Diamant', 'pokemon-diamant.jpg'),
(15, 'Pokémon Perle', 'pokemon-perle.jpg'),
(16, 'Pokémon Platine', 'pokemon-platine.png'),
(17, 'Pokémon Or HeartGold', 'pokemon-or-heartgold.png'),
(18, 'Pokémon Argent SoulSilver', 'pokemon-argent-soulsilver.png'),
(19, 'Pokémon Blanche', 'pokemon-blanche.png'),
(20, 'Pokémon Noire', 'pokemon-noire.avif'),
(21, 'Pokémon Noire 2', 'pokemon-noire-2.jpg'),
(22, 'Pokémon Blanche 2', 'pokemon-blanche-2.jpg'),
(24, 'Pokémon X', 'pokemon-x.png'),
(25, 'Pokémon Y', 'pokemon-y.png'),
(26, 'Pokémon Rubis Oméga', 'pokemon-rubis-omega.avif'),
(27, 'Pokémon Ultra-Soleil', 'pokemon-ultra-soleil.jpg'),
(28, 'Pokémon Soleil', 'pokemon-soleil.jpg'),
(29, 'Pokémon Ultra-Lune', 'pokemon-ultra-lune.jpg'),
(30, 'Pokémon Épée', 'pokemon-epee.png'),
(31, 'Pokémon Saphir Alpha', 'pokemon-saphir-alpha.avif'),
(32, 'Pokémon Bouclier', 'pokemon-bouclier.png'),
(33, 'Pokémon Violet', 'pokemon-violet.avif'),
(36, 'Pokémon Écarlate', 'pokemon-ecarlate.avif'),
(37, 'Pokémon Let\'s Go, Évoli', 'pokemon-let-s-go-evoli.avif'),
(38, 'Pokémon Let\'s Go, Pikachu', 'pokemon-let-s-go-pikachu.avif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jaquette`
--
ALTER TABLE `jaquette`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jaquette`
--
ALTER TABLE `jaquette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
