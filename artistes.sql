-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2022 at 03:20 PM
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
  `genre` varchar(255) COLLATE utf8_bin NOT NULL,
  `tour` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `id_picture` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `way_img` varchar(1000) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `artistes`
--

INSERT INTO `artistes` (`idArtist`, `name`, `genre`, `tour`, `description`, `id_picture`, `active`, `way_img`) VALUES
(1, 'Alt-J', 'Rock', 'The Dream Tour', 'Alt-j est un groupe de rock alternatif formé en 2007. Il est composé de trois musiciens et est originaire de Grande Bretagne. En plus du rock, ils mélangent interludes folks, rythmes hip-hop et harmonies vocales. Le groupe, d abord connu sous le nom de Daljit Dhaliwal, puis de Films, est composé de Joe Newman (guitariste/voix), Gus Unger-Hamilton (claviériste/voix), et Thom Green (batteur/samples). Le bassiste Gwil Sainsbury ayant quitté le groupe après leur premier album, Cameron Knight le remplace lors des concerts. Le groupe tient son nom du raccourci qui donne le symbole Δ sur un Macintosh à clavier QWERTY5.', 2, 1, './images/alt-j.jpg'),
(2, 'Angèle', 'Pop', 'Nonante-Cinq Tour', 'Angèle Van Laeken, dite Angèle, née le 3 décembre 1995 à Uccle (Bruxelles-Capitale), est une auteure-compositrice-interprète, musicienne, productrice, actrice et mannequin belge.\r\nSon premier album, Brol, sorti en octobre 2018 et certifié double disque de diamant, s\'est vendu à plus de 500 000 exemplaires onze mois après sa sortie, atteignant ainsi la première place des ventes d\'album en France pour l\'année 2019. Elle sort ensuite son album Nonante-Cinq, en 2021 qui connaît un énorme succès.', 2, 1, './images/angele.jpg'),
(3, 'Beabadoobee ', 'Rock', 'Beatopia Tour', 'Née aux Philippines et élevée à Londres, Bea Kristi a commencé à enregistrer de la musique sous le nom de Beabadoobee en 2017. À seulement 20 ans, Beabadoobee a construit sa fanbase dévouée de la génération Z avec sa production sans faille de chansons pop confessionnelles et d\'esthétique DIY. Son premier morceau, \"Coffee\", a rassemblé des centaines de milliers d’écoutes en quelques jours, grâce à une vidéo mise en ligne par des fans. Dès lors, ses chansons ont amassé des millions d’écoutes entre ses propres enregistrements auto-publiés et ses trois EP sur le label indépendant londonien Dirty Hit, Patched Up, Loveworm et Space Cadet. Elle a été défendue par BBC Radio 1, Rolling Stone, Vogue, Dazed, The Fader, i-D, Pigeons and Planes, Noisey, NME, Time Out, Paper, Nylon, Time Out, The New Yorker et The Guardian, entre autres. En 2019, Bea a été nominée pour les prix BRITs Rising Star et BBC Sound Of 2020. Son premier album Fake It Flowers est sorti en 2020. Éloge de Beabadoobee \"Phénoménal\" - Vogue \"Un classique de la chambre à coucher... construit pour résonner à l\'infini\" - New Yorker \"pop évanouie aux yeux étoilés de classe galaxie\" - The Guardian \"Beabadoobee fournit une partition au la vie de ses fans adolescents… elle donne au rock alternatif des années 90 un éclat cinématographique » - The FADER « Des voix confessionnelles intimes et proches associées à des guitares stargazy… un sentiment chaleureux, non affecté par les conneries de l\'industrie ou les inquiétudes concernant les algorithmes de streaming » - i-D « Elle est née auteur-compositeur… une voix pour les adolescents agités du monde entier » - Pigeons and Planes', 3, 1, './images/beabadoobee.jpg'),
(4, 'Harry Styles', 'Pop', 'Love On tour', 'Harry Styles est né en Angleterre, à Redditch, le 1er février 1994. Chanteur au sein du groupe One Direction, il mène aussi une carrière en solo.\r\nAu collège, Harry Styles, adolescent, participa au groupe White Eskimo et remporta le concours du meilleur groupe de son école. En 2010, il passe les auditions pour la septième saison du concours télévisé The X Factor, et participe au radio crochet dans la catégorie groupe avec quatre\r\nautres garçons (Niall Horan, Zayn Malik, Liam Payne et Louis Tomlinson). La bande prend le nom de One Direction, termine troisième du concours et commence à gagner une popularité nationale.\r\nDe 2011 à 2015, Harry Styles participe aux cinq albums de One Direction et prend part à des tournées mondiales dans des salles toujours plus grandes. Le groupe se produit notamment au Stade de France les 20 et 21 juin 2014.\r\nLe groupe met ensuite ses activités en pause pour que ses membres puissent travailler sur leurs projets personnels. Harry Styles signe un contrat avec Columbia Records.\r\nSon premier single en solo, « Sign of the times », sort le 7 avril 2017, suivi de l’album « Harry Styles » le 12 mai 2017. Des premières dates de concerts sont immédiatement annoncées à l’occasion d’une tournée de dates intimistes. En France, les billets pour le concert à L’Olympia, à Paris, le 25 octobre 2017, sont écoulées en quelques minutes.\r\nDébut 2022, il sort \"As it Was\" sur les différentes plateformes de streaming. Très rapidement, le morceau est devenu la deuxième chanson la plus streamée en moins de 24H sur Spotify. Avec un clip vidéo puissant et chargé en émotion, il est différent de ce qu’a pu produire l\'artiste par le passé. Si bien que ce morceau est certifié double disque de platine aux USA.\r\nEn décembre 2020, il apparaît sur la couverture de Vogue US. Un événement unique car il s\'agit de la toute première fois depuis les 127 ans de création du magazine qu\'un homme est en couverture solo.\r\nSuite à quoi, il sort en mai 2022 son troisième album \"Harry\'s House\". Encensé par la critique, il gagne très rapidement les top 10 des albums les plus écoutés dans les charts internationaux et est nominé en tant que meilleur album de l\'année lors des MTV Video Music Awards. De plus, il reste 6 semaines d\'affilés en tête des charts britanniques et australiens et il devient le premier album en 2022 certifié disque de platine, un véritable exploit !\r\nVéritable phénomène générationnel et icône pop, la star est classée en 2020 parmi les 100 artistes les plus riches du monde par le magazine Forbes.\r\nEn août 2022 il fait la une du magazine \"The Rolling Stones\". Surnommé \"l\'homme le plus désiré du monde\", Harry Styles a l\'honneur d\'être sur la couverture des 14 éditions du magazine d\'anthologie, un privilège qu’aucune personnalité à ce jour a eu droit.\r\nEn dehors de sa carrière musicale unique, Harry Styles est une personnalité très active dans de nombreux milieux.\r\nHarry Styles fait ses débuts au cinéma dans un rôle de soldat dans le film « Dunkerque » de Christopher Nolan (2017). Il est également au casting de Don\'t Worry Darling (2022) accompagné de Florence Pugh ou encore My policeman (2022).\r\n', 4, 1, './images/Harry_Styles.jpg'),
(5, 'Lomepal', 'Rap', 'MAUVAIS ORDRE', 'Antoine Valentinelli, dit Lomepal, est un rappeur et chanteur français, né le 4 décembre 1991 dans le 13e arrondissement de Paris.\r\nAprès ses débuts dans le rap en 2011, Lomepal publie cinq EP: Le Singe Fume Sa Cigarette en 2013, en collaboration avec Caballero et Hologram Lo’ , Cette foutue perle en 2013, Seigneur en 2014, Majesté en 2015 et ODSL en 2016 ; puis trois albums studio : FLIP, sorti en juin 2017 et certifié triple disque de platine, Jeannine, sorti en décembre 2018 est certifié disque de diamant (la réédition sort en 2019 sous le titre Amina), et Mauvais ordre, sorti en septembre 2022.\r\n', 5, 1, './images/lomepal.jpg'),
(6, 'The 1975', 'Rock', 'Being funny in a foreign language', 'The 1975 est un groupe de rock britannique, originaire de Wilmslow, Cheshire, en Angleterre. Formé en 2002, le groupe est composé de Matthew Healy (chant), Adam Hann (guitare), Ross MacDonald (basse), George Daniel (percussions) et John Waugh (saxophone). Les membres du groupe étudiaient à la Wilmslow High School, et ont commencé à jouer ensemble.\r\n\r\nLe groupe compte cinq albums. Le premier album, The 1975 sorti en 2013, culmine à la première place des albums vendus au Royaume-Uni le 8 septembre 2013. Le deuxième album, I Like It When You Sleep, for You Are So Beautiful yet So Unaware of It sort en février 2016, et se place en tête des ventes d’albums au Royaume-Uni à sa sortie, ainsi que Billboard 200 américain. \r\nEn 2018, le groupe sort son troisième album intitulé A Brief Inquiry Into Online Relationships, débutant à la quatrième place du Billboard 200 le jour de sa sortie. Leur quatrième album sort en 2020 et s’appelle Notes on a Conditional Form. Ce dernier est notable pour sa diversité musicale et a fait diverger les avis. Leur dernier album, Being Funny in a Foreign Language, est sorti en octobre 2022.', 6, 1, './images/the 1975.jpg');

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
