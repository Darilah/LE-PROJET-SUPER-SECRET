-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 27, 2022 at 07:54 PM
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
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `idVenue` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `capacity` int(100) NOT NULL,
  `town` varchar(255) COLLATE utf8_bin NOT NULL,
  `country` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`idVenue`, `name`, `capacity`, `town`, `country`, `address`) VALUES
(1, '3Arena', 13000, 'Dublin', 'Ireland', 'N Wall Quay, Dublin, Ireland'),
(2, 'Accor Arena', 20300, 'Paris', 'France', 'Accor Arena\r\n8 BOULEVARD DE BERCY, 75012 PARIS 12\r\n'),
(3, 'AFAS Live', 6000, 'Amsterdam', 'Netherlands', 'Johan Cruijff Boulevard 590, 1101 DS Amsterdam, Pays-Bas'),
(4, 'Allegiant Stadium', 65000, 'Las Vegas', 'USA', '3333 Al Davis Way, Las Vegas, NV 89118'),
(5, 'Amsterdam ArenA', 55865, 'Amsterdam', 'Netherlands', 'Johan Cruijff Boulevard 1, 1100 DL Amsterdam, Pays-Bas'),
(6, 'ANZ Stadium (Stadium Australia)', 83500, 'Sydney', 'Australia', 'Edwin Flack Ave, Sydney Olympic Park NSW 2127, Australia'),
(7, 'Arena Loire', 6500, 'Trélazé', 'France', '131 Rue Ferdinand Vest, Trélazé, France'),
(8, 'Arena Stade Couvert Liévin', 14000, 'Liévin', 'France', 'ARENA STADE COUVERT LIEVIN\r\nCHEMIN DES MANUFACTURES, 62800 LIEVIN\r\n'),
(9, 'Ariake Arena', 15000, 'Tokyo', 'Japan', '1 Chome-11-1 Ariake, Koto City, Tokyo 135-0063, Japan'),
(10, 'Arkéa Arena', 11300, 'Floirac', 'France', '48-50 avenue Jean Alfonséa, Floirac, France'),
(11, 'Armory', 8400, 'Minneapolis', 'USA', '500 S 6th St, Minneapolis, MN 55415'),
(12, 'AT&T Stadium', 80000, 'Arlington', 'USA', 'One AT&T Way, Arlington, TX 76011'),
(13, 'Bill Graham Civic Auditorium\r\n', 8500, 'San Francisco', 'USA', '99 Grove St, San Francisco, CA 94102'),
(14, 'Bournemouth International Centre', 6500, 'Bournemouth', 'UK', 'Exeter Rd, Bournemouth, United Kingdom'),
(15, 'Bürgerhaus Stollwerck', 600, 'Cologne', 'Germany', 'Dreikönigenstr. 23, Köln, Germany'),
(16, 'Cable Dahmer Arena', 5800, 'Independence', 'USA', '19100 E Valley View Pkwy, Independence, MO 64055'),
(17, 'Cal Coast Credit Union Open Air Theatre', 5000, 'San Diego', 'USA', '5500 Campanile Dr, San Diego, CA 92182'),
(18, 'Cardiff International Arena', 5000, 'Cardiff', 'UK', 'Mary Ann St, Cardiff, United Kingdom'),
(19, 'Carling Brixton Academy', 4921, 'London', 'UK', '211 Stockwell Rd, London SW9 9SL, UK'),
(20, 'CASA Arena Horsens', 10400, 'Horsens', 'Denmark', 'Langmarksvej 59, 8700 Horsens, Denmark'),
(21, 'Centre Bell', 21302, 'Montreal', 'Canada', '1909 Av. des Canadiens-de-Montréal, Montréal, QC H3B 5E8, Canada'),
(22, 'Centre Vidéotron', 20396, 'Québec', 'Canada', '250 Bd Wilfrid-Hamel, Québec, QC G1L 5A7, Canada'),
(23, 'Château De Beauregard', 110000, 'Cellettes', 'France', '12, chemin de la fontaine\r\n41120 CELLETTES – Loir-et-Cher'),
(24, 'Club Soda', 1000, 'Montreal', 'Canada', '1225 Blvd St Laurent, Montreal, Canada'),
(25, 'Commodore Ballroom', 990, 'Vancouver', 'Canada', '868 Granville St, Vancouver, Canada'),
(26, 'Coventry Building Society Arena', 32609, 'Coventry', 'UK', 'Judds Ln, Coventry CV6 6GE, UK'),
(27, 'Deutsche Bank Park', 51500, 'Frankfurt am Main', 'Germany', 'Mörfelder Landstraße 362, 60528 Frankfurt am Main, Germany'),
(28, 'Docklands Stadium', 53359, 'Melbourne', 'Australia', '740 Bourke St, Docklands VIC 3008, Australia'),
(29, 'Empire Live', 1000, 'Albany', 'USA', '93 N Pearl St, Albany, NY 12207'),
(30, 'Esprit Arena', 54600, 'Düsseldorf', 'Germany', 'Arena-Straße 1, 40474 Düsseldorf, Germany'),
(31, 'Faro De Punta Torrecilla ', 1000, 'Santo Domingo', 'Dominican Republic', 'Parque Del Faro De Sans Souci, Santo Domingo, Dominican Republic\r\n\r\n'),
(32, 'Festivalpark Werchter', 340000, 'Werchter', 'Belgium', 'Haachtsesteenweg 13/9, 3118 Rotselaar, Belgium'),
(33, 'First Avenue', 1800, 'Minneapolis', 'USA', '701 1st Ave N, Minneapolis, MN 55403'),
(34, 'Fryshuset', 3500, 'Stockholm', 'Sweden', 'Martendalsgatan 2-8, Stockholm, Sweden'),
(35, 'Galaxie Amnéville', 12200, 'Amnéville', 'France', 'PARC DE COULANGES, 57360 AMNEVILLE'),
(36, 'Gayant Expo Concerts', 32000, 'Douai', 'France', 'P. DES EXPOS RIVAGE GAYANT, 59502 DOUAI CEDEX'),
(37, 'Glasgow Green ', 50000, 'Glasgow', 'UK', 'Greendyke Street, Glasgow, United Kingdom'),
(38, 'Halle Tony Garnier', 17000, 'Lyon', 'France', '20, Place Docteurs Mérieux, 69007 LYON 07'),
(39, 'HBF Park', 20500, 'Perth', 'Australia', '310 Pier St, Perth WA 6000, Australia'),
(40, 'HBF Stadium', 4500, 'Perth', 'Australia', '100 Stephenson Ave, Perth, Australia'),
(41, 'HISTORY', 2500, 'Toronto', 'Canada', '1663 Queen St E, Toronto, Canada'),
(42, 'Hole44', 700, 'Berlin', 'Germany', 'Hermannstraße 146, Berlin, Germany'),
(43, 'Hordern Pavilion', 5500, 'Sydney', 'Australia', '1 Driver Ave, Moore Park NSW 2021, Australia'),
(44, 'KSPO Dôme', 15000, 'Seoul', 'South Korea', '424 Olympic-ro, Songpa-gu, Seoul, South Korea'),
(45, 'La Madeleine', 1400, 'Bruxelles', 'Belgium', 'Rue Duquesnoy 14, Brussels, Belgium'),
(46, 'Le Dôme', 8500, 'Marseille', 'France', '48 Avenue de Saint-Just, Marseille, France\r\n'),
(47, 'Le Liberté\r\n', 5300, 'Rennes', 'France', '1 Espl. Charles de Gaulle, Rennes, France'),
(48, 'M&S Bank Arena Liverpool', 11000, 'Liverpool', 'UK', 'Kings Dock, Liverpool, United Kingdom'),
(49, 'Magazzini Generali', 1000, 'Milan', 'Italy', '14 Via Pietrasanta, Milan, Italy'),
(50, 'Margaret Court Arena', 7500, 'Melbourne', 'Australia', 'Olympic Boulevard, Melbourne, Australia\r\n'),
(51, 'MegaCorp Pavilion', 800, 'Newport', 'USA', '101 W 4th St., Newport, KY 41071'),
(52, 'Mercedes-Benz Stadium', 71000, 'Atlanta', 'USA', '1 AMB Dr NW, Atlanta, GA 30313'),
(53, 'Metro Theatre', 21000, 'Sydney', 'Australia', '624 George St, Sydney, Australia'),
(54, 'Millennium Stadium', 74500, 'Cardiff', 'UK', 'Westgate St, Cardiff CF10 1NS, UK'),
(55, 'Mission Ballroom', 3950, 'Denver', 'USA', '4242 Wynkoop St,, Denver, CO 80216'),
(56, 'Moda Center', 19980, 'Portland', 'USA', '1 N Center Ct, Portland, OR 97227'),
(57, 'Moody Center', 15000, 'Austin', 'USA', '2001 Robert Dedman Dr, Austin, TX 78712'),
(58, 'Moore Theatre', 1800, 'Seattle', 'USA', '1932 2nd Ave, Seattle, WA 98101'),
(59, 'Motorpoint Arena', 10000, 'Nottingham', 'UK', 'Bolero Square, Nottingham, United Kingdom'),
(60, 'Mount Smart Stadium', 40000, 'Auckland', 'New Zealand', '2 Beasley Avenue, Penrose, Auckland 1061, New Zealand\r\n'),
(61, 'Municipal Auditorium', 9700, 'Nashville', 'USA', '417 4th Ave N, Nashville, TN 37201'),
(62, 'Murrayfield Stadium', 67144, 'Edinburgh', 'UK', 'Roseburn St, Edinburgh EH12 5PJ, UK'),
(63, 'Northcote Theatre', 1500, 'Melbourne', 'Australia', '216 High St, Northcote VIC 3070, Australia'),
(64, 'NRG Stadium', 72220, 'Houston', 'USA', 'NRG Pkwy, Houston, TX 77054'),
(65, 'Nuevo Recinto Mad Cool', 80000, 'Madrid', 'Spain', 'Calle Laguna Dalga, Villaverde, Madrid, Spain'),
(66, 'Observatory', 1000, 'Santa Ana', 'USA', '3503 S Harbor Blvd, Santa Ana, CA 92704'),
(67, 'OVO Hydro', 14300, 'Glasgow', 'UK', 'Exhibition Way, Glasgow, United Kingdom'),
(68, 'Palais des sports de Grenoble', 12000, 'Grenoble', 'France', '14, Boulevard Clémenceau, 38000 GRENOBLE'),
(69, 'Palais Nikaïa', 9000, 'Nice', 'France', '163 boulevard du Mercantour, Nice, France'),
(70, 'Parc Olympique de Munich (Olympiastadion)', 69250, 'Munich', 'Germany', 'Olympiapark München, Spiridon-Louis-Ring 25, 80809 München, Germany'),
(71, 'Paris la Défense Arena', 40000, 'Paris', 'France', 'Paris La Défense Arena\r\nLes Jardins de l\'Arche, 92000 NANTERRE\r\n'),
(72, 'Passeio Marítimo de Algés', 100000, 'Lisbon', 'Portugal', 'Passeio Maritimo de Alges\r\n1495 Lisbon\r\n'),
(73, 'Philippine Arena', 55000, 'Santa Maria', 'Philippines', 'Ciudad de Victoria, Santa Maria, Bulacan, Philippines'),
(74, 'Queen Elizabeth Theatre', 2929, 'Vancouver', 'Canada', '630 Hamilton St, Vancouver, BC V6B 5N6, Canada'),
(75, 'Rajamangala National Stadium', 51552, 'Bangkok', 'Thailand', '286 Soi Ramkhamhaeng 24 Yaek 18, Hua Mak, Bang Kapi District, Bangkok 10240, Thailand'),
(76, 'Raymond James Stadium', 65890, 'Tampa', 'USA', '4201 No Dale Mabry Hwy, Tampa, FL 33607\r\n\r\n'),
(77, 'RCF Arena, Campovolo Reggio Emilia', 103000, 'Reggio Emilia', 'Italy', 'Via dell\'Aeronautica, 42122 Reggio Emilia RE, Italy'),
(78, 'Reims ARENA', 9000, 'Reims', 'France', 'BOULEVARD JULES CESAR, Reims, France'),
(79, 'Resorts World Arena', 15685, 'Birmingham', 'UK', 'Resorts World Arena, Birmingham, United Kingdom'),
(80, 'Riverstage Brisbane', 9500, 'Brisbane', 'Australia', '59 Gardens Point Rd, Brisbane, Australia'),
(81, 'Riviera Theatre', 2500, 'Chicago', 'USA', '4746 N Racine Ave, Chicago, IL 60640'),
(82, 'Roadrunner', 3500, 'Boston', 'USA', '89 Guest St, Boston, MA 02135'),
(83, 'Roseland Theater', 1410, 'Portland', 'USA', '8 NW 6th Ave, Portland, OR 97209'),
(84, 'Scotiabank Arena', 19800, 'Toronto', 'Canada', '40 Bay Street, Toronto, Canada'),
(85, 'Showbox SoDo', 1150, 'Seattle', 'USA', '1700 1st Ave S, Seattle, WA 98134, USA'),
(86, 'Slane Castle', 80000, 'Slane', 'Ireland', 'Slanecastle Demesne, Slane, Co. Meath, Ireland'),
(87, 'Spark Arena', 12000, 'Auckland', 'New Zealand', 'Mahuhu Cres, Auckland, New Zealand'),
(88, 'SSE Arena', 11000, 'Belfast', 'UK', '2 Queens Quay, Belfast, United Kingdom'),
(89, 'Stade Carrara', 27500, 'Gold Coast', 'Australia', 'Nerang Broadbeach Rd, Carrara QLD 4211, Australia'),
(90, 'Stade de France', 81338, 'Paris', 'France', 'Zac Cornillon la Plaine St Denis\r\n93210 St Denis\r\n'),
(91, 'Stade Ernst-Happel', 50865, 'Vienna', 'Austria', 'Meiereistraße 7, 1020 Wien, Austria'),
(92, 'Stade national de Singapour', 55000, 'Singapore', 'Singapore', '1 Stadium Dr, Singapour 397629'),
(93, 'Stade national de Varsovie (PGE Narodowy)', 58580, 'Warsaw', 'Poland', 'al. Księcia Józefa Poniatowskiego 1, 03-901 Warszawa, Poland\r\n'),
(94, 'Stade olympique Lluís-Companys', 55926, 'Barcelona', 'Spain', 'Passeig Olímpic, 15-17, 08038 Barcelona, Spain'),
(95, 'Stade Pierre Mauroy', 50186, 'Villeneuve d\'Ascq', 'France', 'Stade Pierre Mauroy\r\n261, boulevard de Tournai, 59650 VILLENEUVE D ASCQ\r\n'),
(96, 'Sud de France Arena', 14800, 'Pérols', 'France', 'Rte de la Foire, 34470 Pérols'),
(97, 'Summit Music Hall', 1100, 'Denver', 'USA', '1902 Blake St, Denver, CO 80202'),
(98, 'Technikum', 600, 'Munich', 'Germany', 'Speicherstraße 26, München, Germany'),
(99, 'Terminal 5', 3000, 'New York', 'USA', '610 W 56th St, New York, NY 10019, USA'),
(100, 'Texas Trust CU Theatre', 6350, 'Grand Prairie', 'USA', '1001 Performance Place, Grand Prairie, TX 75050'),
(101, 'The Brighton Centre', 4500, 'Brighton', 'UK', 'Kings Rd, Brighton, United Kingdom'),
(102, 'The Depot', 1200, 'Salt Lake City', 'USA', '400 WS Temple, Salt Lake City, UT 84101'),
(103, 'The Kia Forum', 17505, 'Inglewood', 'USA', '3900 W Manchester Blvd, Inglewood, CA 90305'),
(104, 'The O2', 20000, 'London', 'UK', 'Peninsula Square, London, United Kingdom'),
(105, 'The Regency Ballroom', 1400, 'San Francisco', 'USA', '1300 Van Ness Ave, San Francisco, CA 94109-5519'),
(106, 'Trabendo', 700, 'Paris', 'France', 'Av J.Jaures /Metro Pte de Pantin, Paris, France'),
(107, 'TSB Arena', 5655, 'Wellington', 'New Zealand', '4 Queens Wharf, Wellington, New Zealand'),
(108, 'Uebel & Gefährlich', 1000, 'Hambourg', 'Germany', 'Feldstrasse 66, Hamburg, Germany'),
(109, 'UPMC Events Center', 4000, 'Moon Township', 'USA', '6001 University Blvd, Moon Township, PA 15108'),
(110, 'VEGA - Musikkens Hus, Lille VEGA', 500, 'Copenhagen', 'Denmark', 'Enghavevej 40, Copenhagen, Denmark'),
(111, 'Virgin Hotels Las Vegas, Curio Collection by Hilton', 4500, 'Las Vegas', 'USA', '4455 Paradise Rd, Las Vegas, NV 89169'),
(112, 'Vive Latino 2023', 26000, 'Mexico', 'Mexico', 'Av Viaducto Rio de la Piedad S/N, Mexico, Mexico'),
(113, 'Vulkan Arena', 950, 'Oslo', 'Norway', 'Vulkan 26, Oslo, Norway'),
(114, 'WAMU Theater', 9000, 'Seattle', 'USA', '800 Occidental Ave S, Seattle, WA 98134'),
(115, 'Wembley Stadium', 90000, 'London', 'UK', 'London HA9 0WS, UK'),
(116, 'Westpoint Arena', 7500, 'Exeter', 'UK', 'Clyst St. Mary, Exeter, United Kingdom'),
(117, 'Zénith d’Amiens', 6000, 'Amiens', 'France', 'ZENITH AMIENS\r\nAVENUE DE L\'HIPPODROME, 80000 AMIENS\r\n'),
(118, 'Zénith d’Auvergne\r\n', 9400, 'Cournon-d\'Auvergne\r\n', 'France', 'PLAINE DE SARLIEVE, 63800 COURNON D AUVERGNE'),
(119, 'Zénith d’Orléans', 6900, 'Orléans', 'France', '1, rue Robert Schuman, 45100 ORLEANS'),
(120, 'Zénith de Caen', 6990, 'Caen', 'France', 'RUE JOSEPH PHILIPPON, 14000 CAEN'),
(121, 'Zénith de Dijon', 9000, 'Dijon', 'France', 'Rue de Colchide, 21000 DIJON'),
(122, 'Zénith de Lille', 7000, 'Lille', 'France', 'Zenith Arena\r\n1 BLD DES CITÉS UNIES, 59000 LILLE\r\n'),
(123, 'Zénith de Nantes Métropole', 9000, 'St Herblain', 'France', 'ZAC D\'AR MOR, 44800 ST HERBLAIN'),
(124, 'Zénith de Paris', 6804, 'Paris', 'France', 'Zenith Paris\r\nParking Pte de la Villette 30, avenue Corentin Cariou, 75019 PARIS 19\r\n'),
(125, 'Zénith de Pau', 7500, 'Pau', 'France', 'Rue Suzanne Bacarisse, 64000 PAU'),
(126, 'Zénith de Rouen', 8000, 'Quevilly', 'France', 'AVENUE DES CANADIENS, 76120 LE GRAND QUEVILLY'),
(127, 'Zénith de Saint-Etienne', 7200, 'Saint-Etienne', 'France', 'RUE SCHEURER KESTNER, 42000 ST ETIENNE'),
(128, 'Zénith de Toulon', 8875, 'Toulon', 'France', 'Bd du Commandant Nicolas, 83000 TOULON'),
(129, 'Zénith de Toulouse Métropole', 12000, 'Toulouse', 'France', '11, AVENUE RAYMOND BADIOU, 31300 TOULOUSE'),
(130, 'Zénith du Grand Nancy', 8000, 'Maxeville', 'France', 'rue du Zénith, 54320 MAXEVILLE'),
(131, 'Zénith Limoges Métropole', 6047, 'Limoges', 'France', '16, AVENUE JEAN MONNET, 87000 LIMOGES'),
(132, 'Zénith Strasbourg Europe', 12079, 'Eckbolsheim', 'France', '1 Allée du Zénith, 67201 ECKBOLSHEIM '),
(133, 'Zénith Sud (Montpellier)', 14000, 'Montpellier', 'France', 'DOMAINE DE GRAMMONT, 34000 MONTPELLIER'),
(134, 'Zoom', 1000, 'Frankfurt am Main', 'Germany', 'Carl-Benz-Straße 21, Frankfurt Am Main, Germany'),
(135, 'Forest National', 8400, 'Brussels', 'Belgium', 'Av. Victor Rousseau 208, 1190 Forest, Belgium'),
(136, 'Brest Arena', 2700, 'Brest', 'France', '140 Bd de Plymouth, 29200 Brest'),
(137, 'State Farm Stadium', 63400, 'Glendale', 'USA', '1 Cardinals Dr, Glendale, AZ 85305, USA'),
(138, 'Nissan Stadium', 69143, 'Nashville', 'USA', '1 Titans Way, Nashville, TN 37213, USA'),
(139, 'Lincoln Financial Field', 67594, 'Philadelphia', 'USA', 'One Lincoln Financial Field Way, Philadelphia, PA 19148, USA'),
(140, 'Gillette Stadium', 65878, 'Foxborough', 'USA', '1 Patriot Pl, Foxborough, MA 02035, USA'),
(141, 'Metlife Stadium', 82500, 'East Rutherford', 'USA', '1 MetLife Stadium Dr, East Rutherford, NJ 07073, USA'),
(142, 'Soldier Field', 61500, 'Chicago', 'USA', '1410 Special Olympics Dr, Chicago, IL 60605, USA'),
(143, 'Ford Field', 65000, 'Detroit', 'USA', '2000 Brush St, Detroit, MI 48226, USA'),
(144, 'Acrisure Stadium', 68400, 'Pittsburgh', 'USA', '100 Art Rooney Ave, Pittsburgh, PA 15212, USA'),
(145, 'U.S. Bank Stadium', 73000, 'Minneapolis', 'USA', '401 Chicago Avenue, Minneapolis, MN 55415\r\nUSA\r\n'),
(146, 'Paycor Stadium', 65535, 'Cincinnati', 'USA', '1 Paycor Stadium, Cincinnati, OH 45202, USA'),
(147, 'Arrowhead Stadium', 76416, 'Kansas City', 'USA', '1 Arrowhead Dr, Kansas City, MO 64129, USA'),
(148, 'Empower Field At Mile High', 76125, 'Denver', 'USA', '1701 Mile High Sdium Circle Denvetar, Colorado, USA'),
(149, 'Lumen Field', 72000, 'Seattle', 'USA', '800 Occidental Avenue South,Seattle, Washington, USA'),
(150, 'Levis Stadium', 68500, 'Santa Clara', 'USA', '4900 Marie P DeBartolo Way,Santa Clara, California,USA'),
(151, 'Sofi Stadium', 70000, 'Inglewood', 'USA', '1001 Stadium Dr, Inglewood, CA 90301, USA'),
(152, 'La Nuit de l’Erdre', 54000, 'Nort-sur-Erdre', 'France', '1 Rue de Rocheflour, 44390 Nort-sur-Erdre'),
(153, 'Les Eurockéennes de Belfort', 130000, 'Belfort', 'France', 'Parc Les Eurockéennes 90000 Belfort'),
(154, 'Festival Beauregard', 147000, 'Colombelles', 'France', 'Avenue des Canadiens, 14460 COLOMBELLES'),
(155, 'Festival Musilac', 30000, 'Aix-les-Bains', 'France', 'Bd Robert Barrier, 73100 Aix-les-Bains'),
(156, 'Les Déferlantes Sud de France', 70000, 'Céret', 'France', 'CHATEAU D AUBIRY, CC d\'Aubiry 20, 66400 Céret'),
(157, 'Festival Pause Guitare', 90000, 'Albi', 'France', '2 bis Boulevard Montebello, 81000 Albi, France'),
(158, 'Ronquières Festival ', 65000, 'Braine-le-Comte', 'Belgium', 'Rte Baccara, 7090 Braine-le-Comte, Belgium'),
(159, 'Allianz Parque', 45000, 'São Paulo', 'Brazil', 'Av. Francisco Matarazzo, 1705 - Água Branca, São Paulo - SP, 05001-200, Brazil'),
(160, 'Estadio Couto Pereira', 40502, 'Curitiba', 'Brazil', 'R. Ubaldino do Amaral, 63 - Alto da Glória, Curitiba - PR, 80060-195, Brazil'),
(161, 'Estádio Nilton Santos Engenhão', 46831, 'Rio de Janeiro', 'Brazil', 'R. José dos Reis, 425 - Engenho de Dentro, Rio de Janeiro - RJ, 20770-001, Brazil'),
(162, 'Estádio Cidade de Coimbra', 29744, 'Coimbra', 'Portugal', 'R. Dom Manuel I 3, 3030-320 Coimbra, Portugal'),
(163, 'Etihad Stadium', 53400, 'Manchester', 'UK', 'Ashton New Rd, Manchester M11 3FF, UK'),
(164, 'Diego Armando Maradona Stadium', 54726, 'Naples', 'Italy', 'Piazzale Vincenzo Tecchio, 80125 Napoli NA, Italy'),
(165, 'Stadio San Siro', 80018, 'Milan', 'Italy', 'Piazzale Angelo Moratti, 20151 Milano MI, Italy\r\n'),
(166, 'Stadion Letzigrund', 30930, 'Zürich', 'Switzerland', 'Badenerstrasse 500, 8048 Zürich, Switzerland'),
(167, 'Parken Stadium', 38065, 'Copenhagen', 'Denmark', 'Per Henrik Lings Allé 2, 2100 København, Denmark'),
(168, 'Ullevi', 75000, 'Gothenburg', 'Sweden', 'Skånegatan 10, 411 40 Gothenburg, Sweden');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`idVenue`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `idVenue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
