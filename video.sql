--
-- Table structure for table `Realisateur`
--

DROP TABLE IF EXISTS `Realisateur`;

CREATE TABLE `Realisateur` (
  `idrealisateur` int(11) NOT NULL auto_increment,
  `nom` varchar(100) NOT NULL default '',
  `prenom` varchar(50) NOT NULL default '',
  `date_naissance` date NOT NULL default '0000-0-0',
  `nation` varchar(50) NOT NULL default '',
   PRIMARY KEY  (`idrealisateur`)
) ;


--
--  data for table `Realisateur`
--
INSERT INTO `Realisateur` VALUES (1,'Cameron','James','1954-08-16','USA'),
(2,'Yates','David','1963-11-30','Angleterre'),
(3,'Jackson','Peter','1961-10-31','Nouvelle Zélande'),
(4,'Bay','Michael','1965-02-17','USA'),
(5,'Verbinski','Gore','1964-03-16','USA'),
(6,'Weitz','Chris','1969-11-30','USA'),
(7,'Slade','David','1969-09-26','Angleterre'),
(8,'Zemeckis','Robert','1951-05-14','USA'),
(9,'Shyamalan','Night','1970-08-6','USA'),
(10,'Saldanha','Carlos','1965-07-24','Brésil'),
(11,'Unkrich','Lee','1967-08-08','USA'),
(12,'Marshall','Rob','1960-10-17','USA'),
(13,'Burton','Tim','1958-08-25','USA'),
(14,'Nolan','Christopher','1970-07-30','Angleterre'),
(15,'Columbus','Chris','1958-09-10','USA'),
(16,'Howard','Ron','1954-03-01','USA'),
(17,'Mitchell','Mike','1970-10-20','USA'),
(18,'Adamson','Andrew','1966-12-01','Nouvelle Zélande'),
(19,'Wachowski','Larry','1967-12-29','USA'),
(20,'Peterson','Bob','1961-01-05','USA'),
(21,'Lucas','Ceorge','1944-05-14','USA'),
(22,'Miller','Chris','1975-09-23','USA'),
(23,'Cuarón','Alfonso','1961-11-28','Mexique'),
(24,'Spielberg','Steven','1946-12-18','USA'),
(25,'Allers','Roger','1949-10-02','USA'),
(26,'Raimi','Sam','1959-10-23','USA'),
(27,'Emmerich','Roland','1955-11-10','Allemagne'),
(28,'Stanton','Andrew','1965-12-03','USA'),
(29,'Newell','Mike','1942-03-28','Angleterre'),
(30,'Hitchcok','Alfred','1899-08-13','Angleterre'),
(31,'Besson','Luc','1959-03-18','France')

;


--
-- Table structure for table `Acteur`
--

DROP TABLE IF EXISTS `Acteur`;

CREATE TABLE `Acteur` (
  `idacteur` int(11) NOT NULL auto_increment,
  `nom` varchar(100) NOT NULL default '',
  `prenom` varchar(50) NOT NULL default '',
  `date_naissance` date NOT NULL default '0000-0-0',
  `nation` varchar(50) NOT NULL default '',
   PRIMARY KEY  (`idacteur`)
) ;


--
--  data for table `Realisateur`
--
INSERT INTO `Acteur` VALUES (1,'Worthington','Sam','1976-08-02','Australie'),
(2,'Saldana','Zoe','1978-06-19','USA'),
(3,'Weaver','Sigourney','1949-10-08','USA'),
(4,'Lang','Stephen','1952-07-11','USA'),
(5,'Dicaprio','Leonardo','1974-11-11','USA'),
(6,'Winslet','Kate','1975-10-05','Angleterre'),
(7,'Radcliffe','Daniel','1989-07-23','Angleterre'),
(8,'Grint','Rupert','1988-08-24','Angleterre'),
(9,'Watson','Emma','1990-04-15','Angleterre'),
(10,'Wood','Elijah','1981-01-28','USA'),
(11,'Mortensen','Viggo','1958-10-20','USA'),
(12,'Lee','Christopher','1922-05-27','Angleterre'),
(13,'Duhamel','Josh','1972-11-14','USA'),
(14,'Fox','Megan','1986-05-16','USA'),
(15,'LaBeouf','Shia','1986-06-11','USA'),
(16,'Depp','Johnny','1963-06-09','USA'),
(17,'Knightley','Keira','1985-03-26','Angleterre'),
(18,'Rush','Geoffrey','1951-07-06','Australie'),
(19,'Cotillard','Marion','1975-09-30','France'),
(20,'Bonham','Helena','1966-05-26','Angleterre'),
(21,'Ford','Harrison','1942-07-13','USA'),
(22,'Portman','Natalie','1981-06-09','USA'),
(23,'McGregor','Ewan','1971-03-31','Ecosse'),
(24,'Maguire','Tobey','1975-06-27','USA'),
(25,'Reeves','Keanu','1964-09-02','USA'),
(26,'Cusak','John','1966-06-26','USA'),
(27,'Peet','Amanda','1972-01-11','USA'),
(28,'Goldblum','Jeffrey','1952-10-22','USA'),
(29,'Smith','Will','1968-09-25','USA'),
(30,'Hanks','Tom','1956-07-09','USA'),
(31,'Tautou','Audrey','1976-08-09','France'),
(32,'Reno','Jean','1948-07-30','France'),
(33,'Stewart','Kristen','1990-04-09','USA'),
(34,'Pattinson','Thomas','1986-05-13','Angleterre'),
(35,'Lautner','Taylor','1992-02-11','USA'),
(36,'Connery','Sean','1930-08-25','Ecosse'),
(37,'Willis','Bruce','1955-03-19','USA'),
(38,'Williams','Olivia','1968-07-26','Angleterre'),
(39,'Bale','Christian','1974-01-30','Angleterre'),
(40,'Freeman','Morgan','1937-06-01','USA')
;





--
-- Table structure for table `Film`
--

DROP TABLE IF EXISTS `Film`;

CREATE TABLE `Film` (
  `idfilm` int(11) NOT NULL auto_increment,
  `titre` varchar(100) NOT NULL default '',
  `genre` varchar(50) NOT NULL default '',
  `sortie` date NOT NULL default '0000-0-0',
  `recettes` int(20) NOT NULL default '0',
  `idrealisateur` int(100) not null default '0',
  PRIMARY KEY  (`idfilm`),
  FOREIGN KEY (`idrealisateur`) REFERENCES `Realisateur`(`idrealisateur`)
) ;


--
--  data for table `Film`
--


INSERT INTO `Film` VALUES (1,'Twilight chapitre II : Tentation','Fantastique','2009-2-12',710,6),
(2,'Transformers','Fantastique','2007-6-6',709,4),
(3,'Twilight chapitre III : Hésitation','Fantastique','2010-1-10',698,7),
(4,'Forrest Gump','Histoire','1994-5-20',677,8),
(5,'Avatar','Fantastique','2009-2-15',2782,1),
(6,'Titanic','Drame','1997-7-23',1843,1),
(7,'Harry Potter et les Reliques de la Mort II','Fantastique','2011-12-1',1294,2),
(8,'Le Seigneur des anneaux : Le Retour du roi','Histoire','2003-5-23',1119,3),
(9,'Sixième Sens','Science fiction','1999-3-6',673,9),
(10,'L Âge de glace 2','Animation','2006-9-6',655,10),
(11,'Pirates des Caraïbes : La Malédiction du Black Pearl','Fantastique','2003-4-2',654,5),
(12,'Transformers 3 : La Face cachée de la Lune','Fantastique','2011-4-23',1106,4),
(13,'Pirates des Caraïbes : Le Secret du coffre maudit','Fantastique','2006-12-1',1066,5),
(14,'Toy Story 3','Animation','2010-7-10',1063,11),
(15,'Pirates des Caraïbes : La Fontaine de Jouvence','Fantastique','2011-3-9',1038,12),
(16,'Alice au pays des merveilles','Animation','2010-9-4',1024,13),
(17,'The Dark Knight : Le Chevalier noir','Fantastique','2008-8-6',1001,14),
(18,'Harry Potter à l école des Sorciers','Fantastique','2001-2-1',975,15),
(19,'Da Vinci Code','Policier','2006-8-2',758,16),
(20,'Shrek 4 : Il était une fin','Animation','2010-1-5',753,17),
(21,'Le Monde de Narnia','Fantastique','2005-7-4',745,18),
(22,'Matrix Reloaded','Science fiction','2003-9-21',742,19),
(23,'Là-haut','Animation','2009-11-7',731,20),
(24,'Pirates des Caraïbes : Jusqu au bout du monde','Fantastique','2007-10-23',963,5),
(25,'Harry Potter et les Reliques de la Mort I','Fantastique','2010-4-3',955,2),
(26,'Harry Potter et l Ordre du Phénix','Fantastique','2007-2-1',940,2),
(27,'Harry Potter et le Prince de Sang-Mêlé','Fantastique','2009-9-4',934,2),
(28,'Le Seigneur des anneaux : Les Deux Tours','Histoire','2002-7-12',925,3),
(29,'Star Wars I : La Menace fantôme','Science fiction','1999-6-21',924,21),
(30,'Shrek 2','Animation','2004-5-26',920,18),
(31,'Independence Day','Science fiction','1996-1-2',817,27),
(32,'Shrek le troisième','Animation','2007-8-3',798,22),
(33,'Harry Potter et le Prisonnier d Azkaban','Fantastique','2003-4-18',796,23),
(34,'E.T. l extra-terrestre','Science fiction','1982-4-4',792,24),
(35,'Indiana Jones','Aventure','2008-2-2',786,24),
(36,'Le Roi lion','Animation','1994-6-6',784,25),
(37,'Spider-Man 2','Fantastique','2004-11-23',783,26),
(38,'Star Wars  IV : Un nouvel espoir','Science fiction','1977-9-17',775,21),
(39,'2012','Science fiction','2009-4-3',769,27),
(40,'L Âge de glace 3','Animation','2009-9-1',886,10),
(41,'Harry Potter et la Chambre des Secrets','Fantastique','2002-3-26',878,15),
(42,'Le Seigneur des anneaux : La Communauté de l anneau','Histoire','2001-7-3',870,3),
(43,'Le Monde de Nemo','Animation','2003-5-1',867,28),
(44,'Star Wars III : La Revanche des Sith','Science fiction','2005-11-4',848,21),
(45,'Transformers 2 : La Revanche','Fantastique','2009-8-2',836,4),
(46,'Inception','Fantastique','2010-9-4',825,14),
(47,'Spider-Man','Fantastique','2002-6-6',821,26),
(48,'Jurassic Park','Fantastique','1993-8-12',914,24),
(49,'Harry Potter et la Coupe de Feu','Fantastique','2005-7-7',896,29),
(50,'Spider-Man 3','Fantastique','2007-9-1',890,26);


DROP TABLE IF EXISTS `FilmActeur`;
CREATE TABLE  `FilmActeur` (
  `idfilm` int(11) NOT NULL DEFAULT '0',
  `idacteur` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfilm`,`idacteur`) ,
  FOREIGN KEY (`idfilm`) REFERENCES `Film`(`idfilm`),
  FOREIGN KEY (`idacteur`) REFERENCES `Acteur`(`idacteur`)
 ) ;


INSERT INTO `FilmActeur` VALUES (5,1),
(5,2),
(5,3),
(5,4),
(6,5),
(6,6),
(7,7),
(18,7),
(25,7),
(26,7),
(27,7),
(49,7),
(41,7),
(43,7),
(33,7),
(7,8),
(18,8),
(25,8),
(26,8),
(27,8),
(49,8),
(41,8),
(43,8),
(33,8),
(7,9),
(18,9),
(25,9),
(26,9),
(27,9),
(49,9),
(41,9),
(43,9),
(33,9),
(8,10),
(28,10),
(42,10),
(8,11),
(28,11),
(42,11),
(8,12),
(28,12),
(42,12),
(12,13),
(45,13),
(2,13),
(2,14),
(45,14),
(12,15),
(45,15),
(2,15),
(13,16),
(15,16),
(24,16),
(11,16),
(13,17),
(24,17),
(11,17),
(13,18),
(15,18),
(24,18),
(11,18),
(46,5),
(46,19),
(16,20),
(16,16),
(29,21),
(44,21),
(38,21),
(29,22),
(44,22),
(38,22),
(29,23),
(44,23),
(38,23),
(50,24),
(47,24),
(37,24),
(22,25),
(39,26),
(39,27),
(31,28),
(48,28),
(31,29),
(19,30),
(19,31),
(19,32),
(4,30),
(1,33),
(3,33),
(1,34),
(3,34),
(1,35),
(3,35),
(35,36),
(35,21),
(9,37),
(9,38),
(17,39),
(17,40)
;
