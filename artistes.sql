-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2022 at 05:14 PM
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
-- Table structure for table `artistes`
--

CREATE TABLE `artistes` (
  `idArtist` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `idGenre` int(11) NOT NULL,
  `tour` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `id_picture` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `way_img` varchar(1000) COLLATE utf8_bin NOT NULL,
  `link_ticket` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `artistes`
--

INSERT INTO `artistes` (`idArtist`, `name`, `idGenre`, `tour`, `description`, `id_picture`, `active`, `way_img`, `link_ticket`) VALUES
(1, 'Alt-J', 2, 'The Dream Tour', 'Alt-j est un groupe de rock alternatif formé en 2007. Il est composé de trois musiciens et est originaire de Grande Bretagne. En plus du rock, ils mélangent interludes folks, rythmes hip-hop et harmonies vocales. Le groupe, d abord connu sous le nom de Daljit Dhaliwal, puis de Films, est composé de Joe Newman (guitariste/voix), Gus Unger-Hamilton (claviériste/voix), et Thom Green (batteur/samples). Le bassiste Gwil Sainsbury ayant quitté le groupe après leur premier album, Cameron Knight le remplace lors des concerts. Le groupe tient son nom du raccourci qui donne le symbole Δ sur un Macintosh à clavier QWERTY5.', 2, 1, './images/alt-j.jpg', 'https://www.ticketmaster.fr/fr/resultat?ipSearch=alt-j'),
(2, 'Angèle', 1, 'Nonante-Cinq Tour', 'Angèle Van Laeken, dite Angèle, née le 3 décembre 1995 à Uccle (Bruxelles-Capitale), est une auteure-compositrice-interprète, musicienne, productrice, actrice et mannequin belge.\r\nSon premier album, Brol, sorti en octobre 2018 et certifié double disque de diamant, s\'est vendu à plus de 500 000 exemplaires onze mois après sa sortie, atteignant ainsi la première place des ventes d\'album en France pour l\'année 2019. Elle sort ensuite son album Nonante-Cinq, en 2021 qui connaît un énorme succès.', 2, 1, './images/angele.jpg', 'https://www.ticketmaster.fr/fr/resultat?ipSearch=angele'),
(3, 'Beabadoobee ', 5, 'Beatopia Tour', 'Née aux Philippines et élevée à Londres, Bea Kristi a commencé à enregistrer de la musique sous le nom de Beabadoobee en 2017. À seulement 20 ans, Beabadoobee a construit sa fanbase dévouée de la génération Z avec sa production sans faille de chansons pop confessionnelles et d\'esthétique DIY. Son premier morceau, Coffee, a rassemblé des centaines de milliers d’écoutes en quelques jours, grâce à une vidéo mise en ligne par des fans. Dès lors, ses chansons ont amassé des millions d’écoutes entre ses propres enregistrements auto-publiés et ses trois EP sur le label indépendant londonien Dirty Hit, Patched Up, Loveworm et Space Cadet. Elle a été défendue par BBC Radio 1, Rolling Stone, Vogue, Dazed, The Fader, i-D, Pigeons and Planes, Noisey, NME, Time Out, Paper, Nylon, Time Out, The New Yorker et The Guardian, entre autres. En 2019, Bea a été nominée pour les prix BRITs Rising Star et BBC Sound Of 2020. Son premier album Fake It Flowers est sorti en 2020. ', 3, 1, './images/beabadoobee.jpg', 'https://www.ticketmaster.fr/fr/resultat?ipSearch=beabadoobee'),
(4, 'Harry Styles', 1, 'Love On tour', 'Harry Edward Styles, né le 1er février 1994 à Redditch, Angleterre, est un chanteur, musicien et acteur britannique.\r\n\r\nEn 2010, il participe à l\'émission de chant The X Factor et forme le boys band One Direction avec Niall Horan, Louis Tomlinson, Liam Payne et Zayn Malik. Ils font une pause en 2016 pour une durée indéterminée à la suite du départ du chanteur Zayn Malik.\r\n\r\nSon premier album, Harry Styles est publié sous le label Columbia Records en 2017. Il se classe parmi les dix meilleurs albums au Royaume-Uni et aux États-Unis. En 2019, son deuxième album, Fine Line se hisse dans les premières places des classements mondiaux. Début 2022, il annonce un single As It Was, issu de son troisième album Harry\'s House et bat des records en restant en tête des classements depuis sa sortie.\r\n\r\nLe chanteur fait également ses débuts dans le cinéma notamment avec le film Dunkerque de Christopher Nolan. Il apparaît dans les films Don\'t Worry Darling de Olivia Wilde et My Policeman de Michael Grandage. Lors de la sortie du film Les éternels produit par Marvel Studios, Styles fait un caméo à la fin, annonçant son rôle de Starfox.\r\n\r\nIl est le premier homme à poser pour le magazine Vogue en 2020. L\'année suivante, il dévoile sa marque de cosmétique non-genrée, Pleasing. Une collaboration entre le chanteur et la maison de haute couture Gucci voit le jour en novembre 2022. \r\n', 4, 1, './images/Harry_Styles.jpg', 'https://www.ticketmaster.fr/fr/resultat?ipSearch=harry+styles'),
(5, 'Lomepal', 3, 'MAUVAIS ORDRE', 'Antoine Valentinelli, dit Lomepal, est un rappeur et chanteur français, né le 4 décembre 1991 dans le 13e arrondissement de Paris.\r\nAprès ses débuts dans le rap en 2011, Lomepal publie cinq EP: Le Singe Fume Sa Cigarette en 2013, en collaboration avec Caballero et Hologram Lo’ , Cette foutue perle en 2013, Seigneur en 2014, Majesté en 2015 et ODSL en 2016 ; puis trois albums studio : FLIP, sorti en juin 2017 et certifié triple disque de platine, Jeannine, sorti en décembre 2018 est certifié disque de diamant (la réédition sort en 2019 sous le titre Amina), et Mauvais ordre, sorti en septembre 2022.\r\n', 5, 1, './images/lomepal.jpg', 'https://www.ticketmaster.fr/fr/resultat?ipSearch=lomepal'),
(6, 'The 1975', 2, 'Being funny in a foreign language', 'The 1975 est un groupe de rock britannique, originaire de Wilmslow, Cheshire, en Angleterre. Formé en 2002, le groupe est composé de Matthew Healy (chant), Adam Hann (guitare), Ross MacDonald (basse), George Daniel (percussions) et John Waugh (saxophone). Les membres du groupe étudiaient à la Wilmslow High School, et ont commencé à jouer ensemble.\r\n\r\nLe groupe compte cinq albums. Le premier album, The 1975 sorti en 2013, culmine à la première place des albums vendus au Royaume-Uni le 8 septembre 2013. Le deuxième album, I Like It When You Sleep, for You Are So Beautiful yet So Unaware of It sort en février 2016, et se place en tête des ventes d’albums au Royaume-Uni à sa sortie, ainsi que Billboard 200 américain. \r\nEn 2018, le groupe sort son troisième album intitulé A Brief Inquiry Into Online Relationships, débutant à la quatrième place du Billboard 200 le jour de sa sortie. Leur quatrième album sort en 2020 et s’appelle Notes on a Conditional Form. Ce dernier est notable pour sa diversité musicale et a fait diverger les avis. Leur dernier album, Being Funny in a Foreign Language, est sorti en octobre 2022.', 6, 1, './images/the 1975.jpg', 'https://www.ticketmaster.fr/fr/resultat?ipSearch=the+1975');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artistes`
--
ALTER TABLE `artistes`
  ADD PRIMARY KEY (`idArtist`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
