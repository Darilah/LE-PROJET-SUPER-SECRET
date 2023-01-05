-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2023 at 05:58 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL COMMENT 'Identifiant unique de l''utilisateur',
  `email` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'Identifiant de connexion',
  `password` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'Mot de passe',
  `firstName` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'Prénom de l''utilisateur',
  `lastName` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'Nom de l''utilisateur',
  `role` int(11) NOT NULL COMMENT '1 : admin\r\n2 : gestionnaire\r\n3 : utilisateur\r\n4 : artiste',
  `img` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `email`, `password`, `firstName`, `lastName`, `role`, `img`) VALUES
(1, 'lucie.potez@gmail.com', '1234', 'Lucie', 'Potez', 1, './images_users/user_icon.jpg'),
(2, 'dahbia.kt@gmail.com', '1234', 'Dahbia', 'Keteb', 1, './images_users/user_dahbia.jpg'),
(3, 'margaux.oste@gmail.com', '1234', 'Margaux', 'Oste', 1, './images_users/user_margaux.png'),
(4, 'utilisateur@gmail.com', '1234', '', '', 3, './images_users/user_icon.jpg'),
(5, 'gestionnaire@gmail.com', '1234', '', '', 2, './images_users/user_icon.jpg'),
(6, 'artiste@gmail.com', '1234', '', '', 4, './images_users/user_icon.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant unique de l''utilisateur', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
