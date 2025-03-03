-- Partie 0
create database Gestion_Salles_Sport;   -- creation de la Base de Donne
SHOW DATABASES;                         -- montrer les bases de donees                 
use Gestion_Salles_Sport;               -- utilise la base de donne cree

-- Partie 1
create table sportifs (                 -- Creation De La Table Sportifs
idsportif int,
nom varchar(50),
prenom varchar(50),
sexe char(1),
age int,
idsportifconseiller int,
constraint pk_sportifs primary key (idsportif),
constraint chk_sprotifs_sexe check  (sexe in ('M','F')),
constraint fk_sportifs_sportifs foreign key (idsportifconseiller) references sportifs(idsportif)
);


create table sports (                   -- Creation De La Table Sports
idsport int,
libelle varchar(50),
constraint pk_sports primary key (idsport)
);


create table gymnases (                 -- Creation De La Table Gymnases
 idgymnase int,
 nomgymnase varchar(50),
 adresse varchar(50),
 ville varchar(50),
 surface int,
 constraint pk_gymnases primary key (idgymnase)
);


create table arbitrer (                 -- Creation De La Table Arbitrer
 idsportif int,
 idsport int,
 constraint pk_arbitrer primary key (idsportif,idsport),
 constraint fk_arbitrer_sports foreign key (idsport) references sports(idsport),
 constraint fk_arbitrer_sportifs foreign key (idsportif) references sportifs(idsportif)
 );


create table entrainer (                -- Creation De La Table Entrainer
 idsportifentraineur int,
 idsport int,
 constraint pk_entrainer primary key (idsportifentraineur,idsport),
 constraint fk_entrainer_sports foreign key (idsport) references sports(idsport),
 constraint fk_entrainer_sportifs foreign key (idsportifentraineur) references sportifs(idsportif)
);


create table jouer (                    -- Creation De La Table Jouer
 idsportif int,
 idsport int,
 constraint pk_jouer primary key (idsportif,idsport),
 constraint fk_jouer_sports foreign key (idsport) references sports(idsport),
 constraint fk_jouer_sportifs foreign key (idsportif) references sportifs(idsportif)
 );


create table seances (                  -- Creation De La Table Seances
 idgymnase int,
 idsport int,
 idsportifentraineur int, 
 jour varchar(10),
 horaire decimal(4,2),
 duree int,
 constraint pk_seances primary key (idgymnase,idsport,idsportifentraineur,jour,horaire),
 constraint fk_seances_sports foreign key (idsport) references sports(idsport),
 constraint fk_seances_gymnases foreign key (idgymnase) references gymnases(idgymnase),
 constraint fk_seances_idsportifs foreign key (idsportifentraineur) references sportifs(idsportif),
 constraint chk_seances_jour check (jour in ('Dimanche','Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi'))
);


alter table gymnases add (datecreation date);   -- Ajout De L'attribut datecreation a la table gymnases

alter table add constraint nn_sportifs_age check (age is not null);    -- Ajout de la contrainte not null a l'attribut age dans la table sportifs
alter table add constraint nn_sportifs_sexe check (sexe is not null);  -- Ajout de la contrainte not null a l'attribut sexe dans la table sportifs

alter table sportifs modify prenom varchar(40);   -- reduire la taille de l'attribut prenom dans la table sportifs
alter table sportifs modify prenom varchar(60);   -- Agrandire la taille de l'attribut prenom dans la table sportifs

alter table gymnases drop column datecreation;   -- Supprimer De L'attribut datecreation a la table gymnases 
desc gymnases;                                   -- Verifie la suppression

alter table gymnases rename column adresse to adressegym;  -- Renomme L'attribut adresse par adressegym dans la table gymnases
desc gymnases;                                             -- verifie le changement

alter table sports add constraint chk_sports_libelle check (libelle in
('Basket ball','Volley ball','Hand ball','Tennis','Hockey','Badmington','Ping pong','Football','Boxe'));  -- Ajoute une contrainte check sure libelle dans la table sports


-- Partie 2
-- Insertion
-- table Sportifs
INSERT INTO Sportifs VALUES(1,'BOUTAHAR','Abderahim','M',30,NULL);
INSERT INTO Sportifs VALUES(2,'BOUROUBI','Anis','M',28,1);
INSERT INTO Sportifs VALUES(3,'BOUZIDI','Amel','F',25,1);
INSERT INTO Sportifs VALUES(4,'LACHEMI','Bouzid','M',32,1);
INSERT INTO Sportifs VALUES(5,'AAKOUB','Linda','F',22,1);
INSERT INTO Sportifs VALUES(6,'ABBAS','Sophia','F',30,3);
INSERT INTO Sportifs VALUES(7,'HADJ','Zouhir','M',25,2);
INSERT INTO Sportifs VALUES(8,'HAMADI','Hani','M',30,2);
INSERT INTO Sportifs VALUES(9,'ABDELMOUMEN','Nadia','F',23,4);
INSERT INTO Sportifs VALUES(10,'ABAD','Abdelhamid','M',23,2);
INSERT INTO Sportifs VALUES(11,'ABAYAHIA','Amine','M',24,6);
INSERT INTO Sportifs VALUES(12,'ABBACI','Riad','M',24,8);
INSERT INTO Sportifs VALUES(13,'ABBACI','Mohamed','M',22,4);
INSERT INTO Sportifs VALUES(14,'ABDELOUAHAB','Lamia','F',24,1);
INSERT INTO Sportifs VALUES(15,'ABDEMEZIANE','Majid','M',25,3);
INSERT INTO Sportifs VALUES(16,'BENOUADAH','Lamine','M',24,8);
INSERT INTO Sportifs VALUES(17,'ACHAIBOU','Rachid','M',22,7);
INSERT INTO Sportifs VALUES(18,'HOSNI','Leila','F',25,5);
INSERT INTO Sportifs VALUES(19,'ABERKANE','Adel','M',25,1);
INSERT INTO Sportifs VALUES(20,'AZOUG','Racim','M',25,2);
INSERT INTO Sportifs VALUES(21,'BABACI','Mourad','M',22,2);
INSERT INTO Sportifs VALUES(22,'BAKIR','Ayoub','M',25,3);
INSERT INTO Sportifs VALUES(23,'BEHADI','Youcef','M',24,2);
INSERT INTO Sportifs VALUES(24,'AMARA','Nassima','F',23,7);
INSERT INTO Sportifs VALUES(25,'AROUEL','Lyes','M',23,9);
INSERT INTO Sportifs VALUES(26,'BAALI','Leila','F',23,3);
INSERT INTO Sportifs VALUES(27,'BADI','Hatem','M',23,7);
INSERT INTO Sportifs VALUES(28,'RABAHI','Rabah','M',40,4);
INSERT INTO Sportifs VALUES(29,'ROUSSELI','Lamice','F',22,5);
INSERT INTO Sportifs VALUES(30,'CHIKHI','Nidal','M',24,4);
INSERT INTO Sportifs VALUES(31,'SETIHA','Moustapha','M',22,2);
INSERT INTO Sportifs VALUES(32,'COTERI','Daouad','M',23,3);
INSERT INTO Sportifs VALUES(33,'RAMELI','Sami','M',23,1);
INSERT INTO Sportifs VALUES(34,'LEHIRACHE','Oussama','M',24,3);
INSERT INTO Sportifs VALUES(35,'TERIKI','Yacine','M',24,4);
INSERT INTO Sportifs VALUES(36,'DJELOUDANE','Zinedine','M',28,1);
INSERT INTO Sportifs VALUES(37,'LAZARI','Malika','F',25,44);
INSERT INTO Sportifs VALUES(38,'MESSOUNI','Ismail','M',24,1);
INSERT INTO Sportifs VALUES(39,'MORELI','Otheman','M',24,8);
INSERT INTO Sportifs VALUES(40,'FATAHI','Majid','M',23,2);
INSERT INTO Sportifs VALUES(41,'DELHOUME','Elina','F',22,7);
INSERT INTO Sportifs VALUES(42,'BEHADI','Nadir','M',23,5);
INSERT INTO Sportifs VALUES(43,'MATI','Dalia','F',23,6);
INSERT INTO Sportifs VALUES(44,'ADIBOU','Ibrahim','M',28,21);
INSERT INTO Sportifs VALUES(45,'CHALI','Karim','M',25,NULL);
INSERT INTO Sportifs VALUES(46,'DOUDOU','Islam','M',24,4);
INSERT INTO Sportifs VALUES(47,'Grine','Célina','F',25,2);
INSERT INTO Sportifs VALUES(48,'HEDDI','Zohra','F',23,2);
INSERT INTO Sportifs VALUES(49,'JADI','Sandra','F',24,5);
INSERT INTO Sportifs VALUES(50,'KALI','Yasser','M',22,2);
INSERT INTO Sportifs VALUES(51,'LAJEL','Fouad','M',24,5);
INSERT INTO Sportifs VALUES(52,'DANDOUR','Rami','M',22,5);
INSERT INTO Sportifs VALUES(53,'DEMMERA','Houcine','M',22,1);
INSERT INTO Sportifs VALUES(54,'ELKABBADJ','Mohammed','M',23,2);
INSERT INTO Sportifs VALUES(55,'FEROLI','Omer','M',23,2);
INSERT INTO Sportifs VALUES(56,'GUERRAOUI','Zohra','F',25,1);
INSERT INTO Sportifs VALUES(57,'BOUACHA','Aziz','M',25,1);
INSERT INTO Sportifs VALUES(58,'GUITENI','Adam','M',23,4);
INSERT INTO Sportifs VALUES(59,'KACI','Samia','F',23,NULL);
INSERT INTO Sportifs VALUES(60,'TIZEGHAT','Badis','M',32,3);
INSERT INTO Sportifs VALUES(61,'LAZARRI','Jamel','M',27,7);
INSERT INTO Sportifs VALUES(62,'BAZOUDI','Jaouad','M',32,3);
INSERT INTO Sportifs VALUES(63,'AMANI','Fadi','M',30,1);
INSERT INTO Sportifs VALUES(64,'LANORI','Faiza','F',30,2);
INSERT INTO Sportifs VALUES(65,'CHAADI','Mourad','M',30,NULL);
INSERT INTO Sportifs VALUES(66,'DANDANE','Mohamed','M',30,2);
INSERT INTO Sportifs VALUES(67,'FATTIMI','Dalila','F',26,2);
INSERT INTO Sportifs VALUES(68,'REGHI','Jazia','F',30,2);
INSERT INTO Sportifs VALUES(69,'MARADI','Hadjer','F',25,7);
INSERT INTO Sportifs VALUES(70,'BELMADI','Nadji','M',30,9);
INSERT INTO Sportifs VALUES(71,'DELAROCHI','Racim','M',30,8);
INSERT INTO Sportifs VALUES(72,'MARTALI','Bouzid','M',22,8);
INSERT INTO Sportifs VALUES(73,'DALLIMI','Douad','M',30,6);
INSERT INTO Sportifs VALUES(74,'OUBACHA','Adel','M',30,5);
INSERT INTO Sportifs VALUES(75,'SAADI','Nihal','F',39,1);
INSERT INTO Sportifs VALUES(76,'HALGATTI','Camelia','F',30,21);
INSERT INTO Sportifs VALUES(77,'HIDDOUCI','Farid','M',30,1);
INSERT INTO Sportifs VALUES(78,'CHAOUAH','Jamel','M',30,NULL);
INSERT INTO Sportifs VALUES(79,'HANDI','Jaouad','M',30,2);
INSERT INTO Sportifs VALUES(80,'HOCHET','Ramezi','M',30,1);
INSERT INTO Sportifs VALUES(81,'DROULLONI','Jaouida','F',30,1);
INSERT INTO Sportifs VALUES(82,'HOULEMI','Lyes','M',40,14);
INSERT INTO Sportifs VALUES(83,'LOUATI','Ahmed','M',30,4);
INSERT INTO Sportifs VALUES(84,'SALLADj','Miloud','M',28,2);
INSERT INTO Sportifs VALUES(85,'HAMARI','Anes','M',30,2);
INSERT INTO Sportifs VALUES(86,'GALLOTI','Boualem','M',30,2);
INSERT INTO Sportifs VALUES(87,'KASBADJI','Fateh','M',30,2);
INSERT INTO Sportifs VALUES(88,'JENOURI','Rachid','M',30,8);
INSERT INTO Sportifs VALUES(89,'RIHABI','Jamel','M',30,NULL);
INSERT INTO Sportifs VALUES(90,'DERARNI','Nadir','M',30,2);
INSERT INTO Sportifs VALUES(91,'BATERAOUI','Zinedine','M',30,98);
INSERT INTO Sportifs VALUES(92,'HADJI','Jamel','M',22,5);
INSERT INTO Sportifs VALUES(93,'CAUCHARDI','Nabil','M',30,2);
INSERT INTO Sportifs VALUES(94,'LEROUDI','Moussa','M',36,4);
INSERT INTO Sportifs VALUES(95,'ESTANBOULI','Mazine','M',30,2);
INSERT INTO Sportifs VALUES(96,'JANID','Lamine','M',30,2);
INSERT INTO Sportifs VALUES(97,'BONHOMMANE','Bassim','M',30,NULL);
INSERT INTO Sportifs VALUES(98,'RIADI','Walid','M',30,2);
INSERT INTO Sportifs VALUES(99,'BONETI','Djalal','M',32,NULL);
INSERT INTO Sportifs VALUES(100,'LESOIFI','Djamil','M',30,9);
INSERT INTO Sportifs VALUES(101,'SWAMI','Esslam','M',30,5);
INSERT INTO Sportifs VALUES(102,'DAOUDI','Adel','M',30,2);
INSERT INTO Sportifs VALUES(103,'LAAMOURI','Nasssim','M',30,4);
INSERT INTO Sportifs VALUES(104,'SEHIER','Dihia','F',30,1);
INSERT INTO Sportifs VALUES(105,'STITOUAH','Fouad','M',30,3);
INSERT INTO Sportifs VALUES(106,'BAADI','Hani','M',30,1);
INSERT INTO Sportifs VALUES(107,'BOURAS','Nazim','M',30,9);
INSERT INTO Sportifs VALUES(108,'AIT AMARA','Salim','M',30,4);
INSERT INTO Sportifs VALUES(109,'SAGOU','Bassel','M',30,5);
INSERT INTO Sportifs VALUES(110,'ROULLADI','Aissa','M',30,4);
INSERT INTO Sportifs VALUES(111,'BOUTINE','Mohamed','M',30,8);
INSERT INTO Sportifs VALUES(112,'LOUATI','Islam','M',30,2);
INSERT INTO Sportifs VALUES(113,'AID','Naim','M',30,2);
INSERT INTO Sportifs VALUES(114,'MICHALIKH','Asma','F',22,5);
INSERT INTO Sportifs VALUES(115,'LEMOUSSI','Amine','M',30,1);
INSERT INTO Sportifs VALUES(116,'BELIFA','Samia','F',30,8);
INSERT INTO Sportifs VALUES(117,'FERRIRA','Manel','F',30,2);
INSERT INTO Sportifs VALUES(118,'IGHOLI','Lyes','M',30,2);
INSERT INTO Sportifs VALUES(119,'GUEMEZ','Jaouad','M',30,1);
INSERT INTO Sportifs VALUES(120,'LECOM','Aissa','M',30,6);
INSERT INTO Sportifs VALUES(121,'HOUAT','Aziz','M',30,5);
INSERT INTO Sportifs VALUES(122,'BEQUETA','Aicha','F',30,6);
INSERT INTO Sportifs VALUES(123,'RATENI','Walid','M',30,6);
INSERT INTO Sportifs VALUES(124,'TOUAT','Yasmine','F',30,2);
INSERT INTO Sportifs VALUES(125,'JALONI','Aimad','M',30,2);
INSERT INTO Sportifs VALUES(126,'DEBOUBA','yasser','M',30,5);
INSERT INTO Sportifs VALUES(127,'GASTAB','Chouaib','M',30,2);
INSERT INTO Sportifs VALUES(128,'GIRONI','Younes','M',30,1);
INSERT INTO Sportifs VALUES(129,'DABONI','Rachid','M',30,3);
INSERT INTO Sportifs VALUES(130,'LACHOUBI','Kamel','M',30,5);
INSERT INTO Sportifs VALUES(131,'GALLOI','Nadira','F',30,2);
INSERT INTO Sportifs VALUES(132,'DORONI','Yanis','M',30,1);
INSERT INTO Sportifs VALUES(133,'LENOUCHI','Youcef','M',30,2);
INSERT INTO Sportifs VALUES(134,'LERICHE','Hadi','M',30,5);
INSERT INTO Sportifs VALUES(135,'MANSOUR','Lamine','M',30,4);
INSERT INTO Sportifs VALUES(136,'LABOULAIS','Fadia','F',26,2);
INSERT INTO Sportifs VALUES(137,'DOUDOU','Faiza','F',26,2);
INSERT INTO Sportifs VALUES(138,'MAALEM','Lamia','F',26,1);
INSERT INTO Sportifs VALUES(139,'BESNARD','Salma','F',26,4);
INSERT INTO Sportifs VALUES(140,'BELHAMID','Hadjer','F',26,7);
INSERT INTO Sportifs VALUES(141,'BOUAAZA','Asma','F',26,5);
INSERT INTO Sportifs VALUES(142,'CORCHI','Melissa','F',26,1);
INSERT INTO Sportifs VALUES(143,'BELAID','Jaouida','F',26,5);
INSERT INTO Sportifs VALUES(144,'GASMI','Souad','F',26,2);
INSERT INTO Sportifs VALUES(145,'LAAMARA','Maria','F',25,2);
INSERT INTO Sportifs VALUES(146,'DABOUB','Ramezi','M',25,3);
INSERT INTO Sportifs VALUES(147,'HASSINI','Nadia','F',25,2);
INSERT INTO Sportifs VALUES(148,'KALOUNE','Maria','F',27,1);
INSERT INTO Sportifs VALUES(149,'BELHAOUA','Besma','F',27,7);
INSERT INTO Sportifs VALUES(150,'BELAID','Fouad','M',25,2);
INSERT INTO Sportifs VALUES(151,'HENDI','Mouad','M',25,2);

-- table Sports
INSERT INTO Sports VALUES(1,'Basket ball');
INSERT INTO Sports VALUES(2,'Volley ball');
INSERT INTO Sports VALUES(3,'Hand ball');
INSERT INTO Sports VALUES(4,'Tennis');
INSERT INTO Sports VALUES(5,'Hockey');
INSERT INTO Sports VALUES(6,'Badmington');
INSERT INTO Sports VALUES(7,'Ping pong');
INSERT INTO Sports VALUES(8,'Football');
INSERT INTO Sports VALUES(9,'Boxe');

-- table Gymnases
INSERT INTO Gymnases VALUES(1,'Five Gym Club','Boulevard Mohamed 5','Alger centre',200);
INSERT INTO Gymnases VALUES(2,'Mina Sport','28 impasse musette les sources','Les sources',450);
INSERT INTO Gymnases VALUES(3,'Aït Saada','Belouizdad','Belouizdad',400);
INSERT INTO Gymnases VALUES(4,'Bahri Gym','Rue Mohamed Benzineb','Sidi Mhamed',500);
INSERT INTO Gymnases VALUES(5,'Ladies First','3 Rue Diar Naama N° 03','El Biar',620);
INSERT INTO Gymnases VALUES(6,'C.T.F Club','Rue Sylvain FOURASTIER', 'El Mouradia',400);
INSERT INTO Gymnases VALUES(7,'Body Fitness Center','Rue Rabah Takdjourt','Alger centre',360);
INSERT INTO Gymnases VALUES(8,'Club Hydra Forme','Rue de l''Oasis', 'Hydra',420);
INSERT INTO Gymnases VALUES(9,'Profitness Dely Brahim','26 Bois des Cars 3', 'Dely Brahim', 620);
INSERT INTO Gymnases VALUES(10,'CLUB SIFAKS','Rue Ben Omar 31', 'Kouba',400);
INSERT INTO Gymnases VALUES(11,'Gym ZAAF Club','19 Ave Merabet Athmane', 'El Mouradia', 300);
INSERT INTO Gymnases VALUES(12,'GYM power','villa N°2, Chemin Said Hamdine', 'Bir Mourad Raïs', 480);
INSERT INTO Gymnases VALUES(13,'Icosium sport','Rue ICOSUM', 'Hydra',200);
INSERT INTO Gymnases VALUES(14,'GIGA Fitness','res, Rue Hamoum Tahar', 'Birkhadem', 500);
INSERT INTO Gymnases VALUES(15,'AC Fitness Et Aqua','Lotissement FAHS lot A n 12 parcelle 26', 'Birkhadem',400);
INSERT INTO Gymnases VALUES(16,'MELIA GYM','Résidence les deux bassins Sahraoui local N° 03', 'El Achour', 600);
INSERT INTO Gymnases VALUES(17,'Sam Gym Power','Rue Mahdoud BENKHOUDJA', 'Kouba', 400);
INSERT INTO Gymnases VALUES(18,'AQUAFORTLAND SPA','Bordj el kiffan','Bordj el kiffan',450);
INSERT INTO Gymnases VALUES(19,'GoFitness','Lotissement el louz n°264', 'Baba hassen', 500);
INSERT INTO Gymnases VALUES(20,'Best Body Gym','Cité Alioua Fodil', 'Chéraga', 400);
INSERT INTO Gymnases VALUES(21,'Power house gym','Cooperative Amina 02 Lot 15', 'Alger',400);
INSERT INTO Gymnases VALUES(22,'POWER ZONE GYM','Chemin Fernane Hanafi', 'Hussein Dey', 500);
INSERT INTO Gymnases VALUES(23,'World Gym','14 Boulevard Ibrahim Hadjress', 'Béni Messous',520);
INSERT INTO Gymnases VALUES(24,'Moving Club','Bordj El Bahri','Bordj El Bahri',450);
INSERT INTO Gymnases VALUES(25,'Tiger gym','Route de Bouchaoui', 'Chéraga', 620);
INSERT INTO Gymnases VALUES(26,'Lion CrossFit','Centre commercial-Mohamadia mall',
'Mohammadia',600);
INSERT INTO Gymnases VALUES(27,'Étoile sportive','Saoula','Saoula',350);
INSERT INTO Gymnases VALUES(28,'Fitness life gym','El Harrach','El Harrach',400);

-- table Arbitrer
INSERT INTO Arbitrer VALUES(1,1);
INSERT INTO Arbitrer VALUES(1,2);
INSERT INTO Arbitrer VALUES(1,5);
INSERT INTO Arbitrer VALUES(2,5);
INSERT INTO Arbitrer VALUES(2,8);
INSERT INTO Arbitrer VALUES(3,2);
INSERT INTO Arbitrer VALUES(3,6);
INSERT INTO Arbitrer VALUES(3,7);
INSERT INTO Arbitrer VALUES(4,1);
INSERT INTO Arbitrer VALUES(4,2);
INSERT INTO Arbitrer VALUES(4,7);
INSERT INTO Arbitrer VALUES(4,9);
INSERT INTO Arbitrer VALUES(5,7);
INSERT INTO Arbitrer VALUES(6,1);
INSERT INTO Arbitrer VALUES(6,5);
INSERT INTO Arbitrer VALUES(6,7);
INSERT INTO Arbitrer VALUES(7,2);
INSERT INTO Arbitrer VALUES(7,3);
INSERT INTO Arbitrer VALUES(7,5);
INSERT INTO Arbitrer VALUES(19,2);
INSERT INTO Arbitrer VALUES(20,2);
INSERT INTO Arbitrer VALUES(29,7);
INSERT INTO Arbitrer VALUES(32,7);
INSERT INTO Arbitrer VALUES(35,6);
INSERT INTO Arbitrer VALUES(59,4);
INSERT INTO Arbitrer VALUES(60,2);
INSERT INTO Arbitrer VALUES(94,1);
INSERT INTO Arbitrer VALUES(98,1);
INSERT INTO Arbitrer VALUES(105,1);
INSERT INTO Arbitrer VALUES(149,1);
INSERT INTO Arbitrer VALUES(151,1);
INSERT INTO Arbitrer VALUES(151,3);

-- table Entrainer
INSERT INTO Entrainer VALUES(1,1);
INSERT INTO Entrainer VALUES(1,2);
INSERT INTO Entrainer VALUES(1,3);
INSERT INTO Entrainer VALUES(1,5);
INSERT INTO Entrainer VALUES(1,6);
INSERT INTO Entrainer VALUES(2,1);
INSERT INTO Entrainer VALUES(2,2);
INSERT INTO Entrainer VALUES(2,3);
INSERT INTO Entrainer VALUES(2,4);
INSERT INTO Entrainer VALUES(2,5);
INSERT INTO Entrainer VALUES(2,6);
INSERT INTO Entrainer VALUES(2,7);
INSERT INTO Entrainer VALUES(2,9);
INSERT INTO Entrainer VALUES(3,1);
INSERT INTO Entrainer VALUES(3,2);
INSERT INTO Entrainer VALUES(3,3);
INSERT INTO Entrainer VALUES(3,6);
INSERT INTO Entrainer VALUES(4,1);
INSERT INTO Entrainer VALUES(4,7);
INSERT INTO Entrainer VALUES(4,9);
INSERT INTO Entrainer VALUES(6,5);
INSERT INTO Entrainer VALUES(6,7);
INSERT INTO Entrainer VALUES(6,9);
INSERT INTO Entrainer VALUES(7,2);
INSERT INTO Entrainer VALUES(7,3);
INSERT INTO Entrainer VALUES(7,5);
INSERT INTO Entrainer VALUES(7,6);
INSERT INTO Entrainer VALUES(29,7);
INSERT INTO Entrainer VALUES(30,7);
INSERT INTO Entrainer VALUES(31,7);
INSERT INTO Entrainer VALUES(32,7);
INSERT INTO Entrainer VALUES(35,6);
INSERT INTO Entrainer VALUES(35,7);
INSERT INTO Entrainer VALUES(36,6);
INSERT INTO Entrainer VALUES(38,7);
INSERT INTO Entrainer VALUES(40,6);
INSERT INTO Entrainer VALUES(40,7);
INSERT INTO Entrainer VALUES(48,6);
INSERT INTO Entrainer VALUES(50,6);
INSERT INTO Entrainer VALUES(56,6);
INSERT INTO Entrainer VALUES(57,2);
INSERT INTO Entrainer VALUES(57,4);
INSERT INTO Entrainer VALUES(58,2);
INSERT INTO Entrainer VALUES(58,4);
INSERT INTO Entrainer VALUES(59,2);
INSERT INTO Entrainer VALUES(59,4);
INSERT INTO Entrainer VALUES(60,2);
INSERT INTO Entrainer VALUES(60,4);
INSERT INTO Entrainer VALUES(60,7);
INSERT INTO Entrainer VALUES(61,2);
INSERT INTO Entrainer VALUES(61,4);
INSERT INTO Entrainer VALUES(149,1);
INSERT INTO Entrainer VALUES(151,1);
INSERT INTO Entrainer VALUES(151,3);

-- table Jouer
INSERT INTO Jouer VALUES(1,2);
INSERT INTO Jouer VALUES(1,4);
INSERT INTO Jouer VALUES(1,8);
INSERT INTO Jouer VALUES(2,1);
INSERT INTO Jouer VALUES(2,2);
INSERT INTO Jouer VALUES(2,7);
INSERT INTO Jouer VALUES(2,8);
INSERT INTO Jouer VALUES(3,2);
INSERT INTO Jouer VALUES(3,7);
INSERT INTO Jouer VALUES(4,2);
INSERT INTO Jouer VALUES(4,8);
INSERT INTO Jouer VALUES(5,1);
INSERT INTO Jouer VALUES(5,2);
INSERT INTO Jouer VALUES(5,6);
INSERT INTO Jouer VALUES(5,7);
INSERT INTO Jouer VALUES(6,1);
INSERT INTO Jouer VALUES(6,2);
INSERT INTO Jouer VALUES(6,3);
INSERT INTO Jouer VALUES(6,7);
INSERT INTO Jouer VALUES(7,2);
INSERT INTO Jouer VALUES(7,4);
INSERT INTO Jouer VALUES(7,8);
INSERT INTO Jouer VALUES(9,2);
INSERT INTO Jouer VALUES(9,4);
INSERT INTO Jouer VALUES(9,6);
INSERT INTO Jouer VALUES(10,2);
INSERT INTO Jouer VALUES(10,4);
INSERT INTO Jouer VALUES(10,6);
INSERT INTO Jouer VALUES(10,8);
INSERT INTO Jouer VALUES(11,2);
INSERT INTO Jouer VALUES(11,4);
INSERT INTO Jouer VALUES(11,8);
INSERT INTO Jouer VALUES(12,2);
INSERT INTO Jouer VALUES(12,4);
INSERT INTO Jouer VALUES(12,8);
INSERT INTO Jouer VALUES(13,2);
INSERT INTO Jouer VALUES(13,6);
INSERT INTO Jouer VALUES(13,8);
INSERT INTO Jouer VALUES(14,1);
INSERT INTO Jouer VALUES(14,2);
INSERT INTO Jouer VALUES(14,7);
INSERT INTO Jouer VALUES(15,2);
INSERT INTO Jouer VALUES(15,4);
INSERT INTO Jouer VALUES(15,8);
INSERT INTO Jouer VALUES(16,2);
INSERT INTO Jouer VALUES(16,8);
INSERT INTO Jouer VALUES(17,2);
INSERT INTO Jouer VALUES(17,6);
INSERT INTO Jouer VALUES(17,8);
INSERT INTO Jouer VALUES(18,2);
INSERT INTO Jouer VALUES(19,2);
INSERT INTO Jouer VALUES(19,3);
INSERT INTO Jouer VALUES(19,8);
INSERT INTO Jouer VALUES(20,1);
INSERT INTO Jouer VALUES(20,2);
INSERT INTO Jouer VALUES(20,3);
INSERT INTO Jouer VALUES(20,7);
INSERT INTO Jouer VALUES(20,8);
INSERT INTO Jouer VALUES(21,2);
INSERT INTO Jouer VALUES(21,4);
INSERT INTO Jouer VALUES(21,6);
INSERT INTO Jouer VALUES(21,8);
INSERT INTO Jouer VALUES(22,1);
INSERT INTO Jouer VALUES(22,2);
INSERT INTO Jouer VALUES(22,7);
INSERT INTO Jouer VALUES(22,8);
INSERT INTO Jouer VALUES(23,2);
INSERT INTO Jouer VALUES(23,4);
INSERT INTO Jouer VALUES(23,8);
INSERT INTO Jouer VALUES(24,1);
INSERT INTO Jouer VALUES(24,2);
INSERT INTO Jouer VALUES(24,6);
INSERT INTO Jouer VALUES(24,7);
INSERT INTO Jouer VALUES(25,2);
INSERT INTO Jouer VALUES(25,3);
INSERT INTO Jouer VALUES(25,4);
INSERT INTO Jouer VALUES(25,6);
INSERT INTO Jouer VALUES(25,8);
INSERT INTO Jouer VALUES(26,2);
INSERT INTO Jouer VALUES(26,3);
INSERT INTO Jouer VALUES(26,4);
INSERT INTO Jouer VALUES(26,6);
INSERT INTO Jouer VALUES(27,2);
INSERT INTO Jouer VALUES(27,3);
INSERT INTO Jouer VALUES(27,4);
INSERT INTO Jouer VALUES(27,6);
INSERT INTO Jouer VALUES(27,8);
INSERT INTO Jouer VALUES(28,1);
INSERT INTO Jouer VALUES(28,2);
INSERT INTO Jouer VALUES(28,3);
INSERT INTO Jouer VALUES(28,7);
INSERT INTO Jouer VALUES(28,8);
INSERT INTO Jouer VALUES(29,2);
INSERT INTO Jouer VALUES(29,3);
INSERT INTO Jouer VALUES(29,6);
INSERT INTO Jouer VALUES(29,7);
INSERT INTO Jouer VALUES(30,2);
INSERT INTO Jouer VALUES(30,3);
INSERT INTO Jouer VALUES(30,7);
INSERT INTO Jouer VALUES(30,8);
INSERT INTO Jouer VALUES(31,2);
INSERT INTO Jouer VALUES(31,3);
INSERT INTO Jouer VALUES(31,6);
INSERT INTO Jouer VALUES(31,8);
INSERT INTO Jouer VALUES(32,1);
INSERT INTO Jouer VALUES(32,2);
INSERT INTO Jouer VALUES(32,3);
INSERT INTO Jouer VALUES(32,6);
INSERT INTO Jouer VALUES(32,7);
INSERT INTO Jouer VALUES(32,8);
INSERT INTO Jouer VALUES(33,2);
INSERT INTO Jouer VALUES(33,3);
INSERT INTO Jouer VALUES(33,6);
INSERT INTO Jouer VALUES(33,8);
INSERT INTO Jouer VALUES(34,2);
INSERT INTO Jouer VALUES(34,3);
INSERT INTO Jouer VALUES(34,7);
INSERT INTO Jouer VALUES(34,8);
INSERT INTO Jouer VALUES(35,1);
INSERT INTO Jouer VALUES(35,2);
INSERT INTO Jouer VALUES(35,3);
INSERT INTO Jouer VALUES(35,7);
INSERT INTO Jouer VALUES(35,8);
INSERT INTO Jouer VALUES(36,1);
INSERT INTO Jouer VALUES(36,2);
INSERT INTO Jouer VALUES(36,7);
INSERT INTO Jouer VALUES(36,8);
INSERT INTO Jouer VALUES(37,2);
INSERT INTO Jouer VALUES(38,3);
INSERT INTO Jouer VALUES(38,6);
INSERT INTO Jouer VALUES(38,8);
INSERT INTO Jouer VALUES(39,3);
INSERT INTO Jouer VALUES(39,8);
INSERT INTO Jouer VALUES(40,1);
INSERT INTO Jouer VALUES(40,3);
INSERT INTO Jouer VALUES(40,6);
INSERT INTO Jouer VALUES(40,7);
INSERT INTO Jouer VALUES(40,8);
INSERT INTO Jouer VALUES(41,4);
INSERT INTO Jouer VALUES(41,6);
INSERT INTO Jouer VALUES(42,4);
INSERT INTO Jouer VALUES(42,6);
INSERT INTO Jouer VALUES(42,8);
INSERT INTO Jouer VALUES(43,3);
INSERT INTO Jouer VALUES(43,4);
INSERT INTO Jouer VALUES(43,6);
INSERT INTO Jouer VALUES(44,1);
INSERT INTO Jouer VALUES(44,7);
INSERT INTO Jouer VALUES(44,8);
INSERT INTO Jouer VALUES(45,4);
INSERT INTO Jouer VALUES(45,8);
INSERT INTO Jouer VALUES(46,4);
INSERT INTO Jouer VALUES(46,8);
INSERT INTO Jouer VALUES(47,4);
INSERT INTO Jouer VALUES(48,1);
INSERT INTO Jouer VALUES(48,6);
INSERT INTO Jouer VALUES(48,7);
INSERT INTO Jouer VALUES(49,1);
INSERT INTO Jouer VALUES(49,7);
INSERT INTO Jouer VALUES(50,1);
INSERT INTO Jouer VALUES(50,6);
INSERT INTO Jouer VALUES(50,7);
INSERT INTO Jouer VALUES(50,8);
INSERT INTO Jouer VALUES(51,1);
INSERT INTO Jouer VALUES(51,3);
INSERT INTO Jouer VALUES(51,7);
INSERT INTO Jouer VALUES(51,8);
INSERT INTO Jouer VALUES(52,1);
INSERT INTO Jouer VALUES(52,6);
INSERT INTO Jouer VALUES(52,7);
INSERT INTO Jouer VALUES(52,8);
INSERT INTO Jouer VALUES(53,1);
INSERT INTO Jouer VALUES(53,6);
INSERT INTO Jouer VALUES(53,7);
INSERT INTO Jouer VALUES(53,8);
INSERT INTO Jouer VALUES(54,6);
INSERT INTO Jouer VALUES(54,7);
INSERT INTO Jouer VALUES(54,8);
INSERT INTO Jouer VALUES(55,6);
INSERT INTO Jouer VALUES(55,7);
INSERT INTO Jouer VALUES(55,8);
INSERT INTO Jouer VALUES(56,1);
INSERT INTO Jouer VALUES(56,7);
INSERT INTO Jouer VALUES(57,4);
INSERT INTO Jouer VALUES(57,8);
INSERT INTO Jouer VALUES(58,1);
INSERT INTO Jouer VALUES(58,6);
INSERT INTO Jouer VALUES(58,7);
INSERT INTO Jouer VALUES(58,8);
INSERT INTO Jouer VALUES(59,1);
INSERT INTO Jouer VALUES(59,6);
INSERT INTO Jouer VALUES(59,7);
INSERT INTO Jouer VALUES(60,3);
INSERT INTO Jouer VALUES(60,4);
INSERT INTO Jouer VALUES(60,8);
INSERT INTO Jouer VALUES(61,8);
INSERT INTO Jouer VALUES(62,8);
INSERT INTO Jouer VALUES(63,1);
INSERT INTO Jouer VALUES(63,7);
INSERT INTO Jouer VALUES(63,8);
INSERT INTO Jouer VALUES(64,4);
INSERT INTO Jouer VALUES(65,8);
INSERT INTO Jouer VALUES(66,8);
INSERT INTO Jouer VALUES(67,3);
INSERT INTO Jouer VALUES(67,4);
INSERT INTO Jouer VALUES(68,3);
INSERT INTO Jouer VALUES(69,1);
INSERT INTO Jouer VALUES(69,3);
INSERT INTO Jouer VALUES(69,7);
INSERT INTO Jouer VALUES(70,7);
INSERT INTO Jouer VALUES(70,8);
INSERT INTO Jouer VALUES(71,4);
INSERT INTO Jouer VALUES(71,8);
INSERT INTO Jouer VALUES(72,3);
INSERT INTO Jouer VALUES(72,4);
INSERT INTO Jouer VALUES(72,6);
INSERT INTO Jouer VALUES(72,8);
INSERT INTO Jouer VALUES(73,4);
INSERT INTO Jouer VALUES(73,8);
INSERT INTO Jouer VALUES(74,4);
INSERT INTO Jouer VALUES(74,8);
INSERT INTO Jouer VALUES(75,3);
INSERT INTO Jouer VALUES(75,7);
INSERT INTO Jouer VALUES(76,4);
INSERT INTO Jouer VALUES(77,1);
INSERT INTO Jouer VALUES(77,7);
INSERT INTO Jouer VALUES(77,8);
INSERT INTO Jouer VALUES(78,8);
INSERT INTO Jouer VALUES(79,8);
INSERT INTO Jouer VALUES(80,1);
INSERT INTO Jouer VALUES(80,7);
INSERT INTO Jouer VALUES(80,8);
INSERT INTO Jouer VALUES(82,8);
INSERT INTO Jouer VALUES(83,3);
INSERT INTO Jouer VALUES(83,4);
INSERT INTO Jouer VALUES(83,8);
INSERT INTO Jouer VALUES(84,3);
INSERT INTO Jouer VALUES(84,8);
INSERT INTO Jouer VALUES(85,1);
INSERT INTO Jouer VALUES(85,7);
INSERT INTO Jouer VALUES(85,8);
INSERT INTO Jouer VALUES(86,4);
INSERT INTO Jouer VALUES(86,8);
INSERT INTO Jouer VALUES(87,4);
INSERT INTO Jouer VALUES(87,8);
INSERT INTO Jouer VALUES(88,1);
INSERT INTO Jouer VALUES(88,7);
INSERT INTO Jouer VALUES(88,8);
INSERT INTO Jouer VALUES(89,3);
INSERT INTO Jouer VALUES(89,8);
INSERT INTO Jouer VALUES(90,4);
INSERT INTO Jouer VALUES(90,8);
INSERT INTO Jouer VALUES(91,1);
INSERT INTO Jouer VALUES(91,7);
INSERT INTO Jouer VALUES(91,8);
INSERT INTO Jouer VALUES(92,6);
INSERT INTO Jouer VALUES(92,8);
INSERT INTO Jouer VALUES(93,8);
INSERT INTO Jouer VALUES(94,1);
INSERT INTO Jouer VALUES(94,3);
INSERT INTO Jouer VALUES(94,7);
INSERT INTO Jouer VALUES(94,8);
INSERT INTO Jouer VALUES(95,8);
INSERT INTO Jouer VALUES(96,4);
INSERT INTO Jouer VALUES(96,8);
INSERT INTO Jouer VALUES(97,4);
INSERT INTO Jouer VALUES(97,8);
INSERT INTO Jouer VALUES(98,1);
INSERT INTO Jouer VALUES(98,3);
INSERT INTO Jouer VALUES(98,7);
INSERT INTO Jouer VALUES(98,8);
INSERT INTO Jouer VALUES(99,8);
INSERT INTO Jouer VALUES(100,3);
INSERT INTO Jouer VALUES(100,8);
INSERT INTO Jouer VALUES(101,3);
INSERT INTO Jouer VALUES(101,4);
INSERT INTO Jouer VALUES(101,8);
INSERT INTO Jouer VALUES(102,4);
INSERT INTO Jouer VALUES(102,8);
INSERT INTO Jouer VALUES(103,4);
INSERT INTO Jouer VALUES(103,8);
INSERT INTO Jouer VALUES(104,3);
INSERT INTO Jouer VALUES(104,4);
INSERT INTO Jouer VALUES(105,1);
INSERT INTO Jouer VALUES(105,3);
INSERT INTO Jouer VALUES(105,7);
INSERT INTO Jouer VALUES(105,8);
INSERT INTO Jouer VALUES(106,8);
INSERT INTO Jouer VALUES(107,8);
INSERT INTO Jouer VALUES(108,1);
INSERT INTO Jouer VALUES(108,7);
INSERT INTO Jouer VALUES(108,8);
INSERT INTO Jouer VALUES(109,1);
INSERT INTO Jouer VALUES(109,3);
INSERT INTO Jouer VALUES(109,7);
INSERT INTO Jouer VALUES(109,8);
INSERT INTO Jouer VALUES(110,3);
INSERT INTO Jouer VALUES(110,4);
INSERT INTO Jouer VALUES(110,8);
INSERT INTO Jouer VALUES(111,3);
INSERT INTO Jouer VALUES(111,8);
INSERT INTO Jouer VALUES(112,3);
INSERT INTO Jouer VALUES(112,8);
INSERT INTO Jouer VALUES(113,4);
INSERT INTO Jouer VALUES(113,8);
INSERT INTO Jouer VALUES(114,3);
INSERT INTO Jouer VALUES(114,4);
INSERT INTO Jouer VALUES(114,6);
INSERT INTO Jouer VALUES(115,8);
INSERT INTO Jouer VALUES(118,1);
INSERT INTO Jouer VALUES(118,7);
INSERT INTO Jouer VALUES(118,8);
INSERT INTO Jouer VALUES(119,8);
INSERT INTO Jouer VALUES(120,4);
INSERT INTO Jouer VALUES(120,8);
INSERT INTO Jouer VALUES(121,8);
INSERT INTO Jouer VALUES(122,4);
INSERT INTO Jouer VALUES(123,1);
INSERT INTO Jouer VALUES(123,3);
INSERT INTO Jouer VALUES(123,7);
INSERT INTO Jouer VALUES(123,8);
INSERT INTO Jouer VALUES(124,3);
INSERT INTO Jouer VALUES(125,1);
INSERT INTO Jouer VALUES(125,7);
INSERT INTO Jouer VALUES(125,8);
INSERT INTO Jouer VALUES(126,4);
INSERT INTO Jouer VALUES(126,8);
INSERT INTO Jouer VALUES(127,4);
INSERT INTO Jouer VALUES(127,8);
INSERT INTO Jouer VALUES(128,4);
INSERT INTO Jouer VALUES(128,8);
INSERT INTO Jouer VALUES(129,1);
INSERT INTO Jouer VALUES(129,7);
INSERT INTO Jouer VALUES(129,8);
INSERT INTO Jouer VALUES(130,8);
INSERT INTO Jouer VALUES(132,1);
INSERT INTO Jouer VALUES(132,7);
INSERT INTO Jouer VALUES(132,8);
INSERT INTO Jouer VALUES(133,8);
INSERT INTO Jouer VALUES(134,8);
INSERT INTO Jouer VALUES(135,3);
INSERT INTO Jouer VALUES(135,8);
INSERT INTO Jouer VALUES(136,4);
INSERT INTO Jouer VALUES(137,4);
INSERT INTO Jouer VALUES(138,3);
INSERT INTO Jouer VALUES(138,4);
INSERT INTO Jouer VALUES(139,4);
INSERT INTO Jouer VALUES(140,4);
INSERT INTO Jouer VALUES(141,4);
INSERT INTO Jouer VALUES(142,4);
INSERT INTO Jouer VALUES(143,4);
INSERT INTO Jouer VALUES(144,4);
INSERT INTO Jouer VALUES(149,1);
INSERT INTO Jouer VALUES(151,1);
INSERT INTO Jouer VALUES(151,3);

-- table Seances
INSERT INTO Seances VALUES(1,1,149,'Samedi',9.0,60);
INSERT INTO Seances VALUES(1,3,1,'Lundi',9.0,60);
INSERT INTO Seances VALUES(1,3,1,'Lundi',10.0,60);
INSERT INTO Seances VALUES(1,3,1,'Lundi',11.3,60);
INSERT INTO Seances VALUES(1,3,1,'Lundi',14.0,90);
INSERT INTO Seances VALUES(1,3,1,'Lundi',17.3,120);
INSERT INTO Seances VALUES(1,3,1,'Lundi',19.3,120);
INSERT INTO Seances VALUES(1,3,2,'Dimanche',17.3,120);
INSERT INTO Seances VALUES(1,3,2,'Dimanche',19.3,120);
INSERT INTO Seances VALUES(1,3,2,'Mardi',17.3,120);
INSERT INTO Seances VALUES(1,3,2,'Mercredi',17.3,120);
INSERT INTO Seances VALUES(1,3,2,'Samedi',15.3,60);
INSERT INTO Seances VALUES(1,3,2,'Samedi',16.3,60);
INSERT INTO Seances VALUES(1,3,2,'Samedi',17.3,120);
INSERT INTO Seances VALUES(1,3,3,'Jeudi',20.0,30);
INSERT INTO Seances VALUES(1,3,3,'Lundi',14.0,60);
INSERT INTO Seances VALUES(1,3,3,'Lundi',18.0,30);
INSERT INTO Seances VALUES(1,3,3,'Lundi',19.0,30);
INSERT INTO Seances VALUES(1,3,3,'Lundi',20.0,30);
INSERT INTO Seances VALUES(1,5,7,'Mercredi',17.0,90);
INSERT INTO Seances VALUES(2,2,57,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(3,1,149,'Mercredi',11.0,30);
INSERT INTO Seances VALUES(3,2,57,'Lundi',16.3,90);
INSERT INTO Seances VALUES(3,2,60,'Jeudi',19.0,60);
INSERT INTO Seances VALUES(4,1,149,'Vendredi',10.0,30);
INSERT INTO Seances VALUES(4,5,6,'Mercredi',19.0,60);
INSERT INTO Seances VALUES(5,2,57,'Lundi',16.3,90);
INSERT INTO Seances VALUES(5,5,6,'Jeudi',19.0,60);
INSERT INTO Seances VALUES(6,5,6,'Vendredi',19.0,60);
INSERT INTO Seances VALUES(6,5,7,'Jeudi',17.0,90);
INSERT INTO Seances VALUES(8,2,57,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(8,2,57,'Lundi',16.3,90);
INSERT INTO Seances VALUES(8,2,60,'Vendredi',19.0,60);
INSERT INTO Seances VALUES(8,5,7,'Samedi',17.0,90);
INSERT INTO Seances VALUES(8,5,7,'Vendredi',14.0,120);
INSERT INTO Seances VALUES(9,5,6,'Samedi',19.0,60);
INSERT INTO Seances VALUES(10,2,60,'Samedi',19.0,60);
INSERT INTO Seances VALUES(10,5,6,'Dimanche',19.0,60);
INSERT INTO Seances VALUES(10,5,7,'Dimanche',17.0,90);
INSERT INTO Seances VALUES(12,2,57,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(13,2,60,'Dimanche',19.0,60);
INSERT INTO Seances VALUES(13,5,6,'Mercredi',20.0,60);
INSERT INTO Seances VALUES(13,5,7,'Lundi',17.0,90);
INSERT INTO Seances VALUES(14,1,149,'Mardi',10.0,60);
INSERT INTO Seances VALUES(14,2,57,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(15,2,57,'Lundi',16.3,90);
INSERT INTO Seances VALUES(16,2,57,'Lundi',16.3,90);
INSERT INTO Seances VALUES(16,2,60,'Lundi',17.0,60);
INSERT INTO Seances VALUES(16,2,60,'Lundi',18.0,60);
INSERT INTO Seances VALUES(16,2,60,'Lundi',19.0,60);
INSERT INTO Seances VALUES(16,2,60,'Lundi',20.0,60);
INSERT INTO Seances VALUES(16,5,6,'Mercredi',19.0,60);
INSERT INTO Seances VALUES(17,2,3,'Samedi',17.3,120);
INSERT INTO Seances VALUES(17,2,3,'Vendredi',17.3,120);
INSERT INTO Seances VALUES(17,2,57,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(17,3,3,'Dimanche',18.0,30);
INSERT INTO Seances VALUES(17,3,3,'Mardi',20.0,30);
INSERT INTO Seances VALUES(17,5,7,'Mardi',17.0,90);
INSERT INTO Seances VALUES(18,2,57,'Lundi',16.3,90);
INSERT INTO Seances VALUES(18,2,60,'Mardi',19.0,60);
INSERT INTO Seances VALUES(18,5,7,'Mercredi',14.0,120);
INSERT INTO Seances VALUES(18,5,7,'Mercredi',16.0,90);
INSERT INTO Seances VALUES(19,2,57,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(20,5,6,'Mercredi',19.0,60);
INSERT INTO Seances VALUES(21,2,57,'Lundi',16.3,30);
INSERT INTO Seances VALUES(21,2,60,'Mardi',19.0,60);
INSERT INTO Seances VALUES(21,5,7,'Mercredi',17.0,30);
INSERT INTO Seances VALUES(22,2,57,'Mardi',10.0,30);
INSERT INTO Seances VALUES(24,1,149,'Jeudi',9.0,90);
INSERT INTO Seances VALUES(24,2,57,'Mercredi',10.0,90);
INSERT INTO Seances VALUES(25,1,149,'Dimanche',18.0,60);
INSERT INTO Seances VALUES(27,2,57,'Jeudi',10.0,90);
INSERT INTO Seances VALUES(27,5,7,'Mercredi',14.0,120);
INSERT INTO Seances VALUES(27,5,7,'Mercredi',17.0,90);
INSERT INTO Seances VALUES(28,1,149,'Lundi',9.0,30);
INSERT INTO Seances VALUES(28,5,6,'Dimanche',14.0,60);
INSERT INTO Seances VALUES(28,5,6,'Dimanche',15.0,60);
INSERT INTO Seances VALUES(28,5,6,'Dimanche',16.0,60);
INSERT INTO Seances VALUES(28,5,6,'Dimanche',17.0,60);
INSERT INTO Seances VALUES(28,5,7,'Mardi',18.0,90);
INSERT INTO Seances VALUES(28,5,7,'Samedi',18.0,90);
INSERT INTO Seances VALUES(28,5,7,'Vendredi',18.0,90);


set @conseiller_id = (select idsportif from sportifs where nom = 'CHAADI' and prenom = 'Mourad');  -- sauvegrade l'id du conseiller

update sportifs set idsportifconseiller = @coneiller_id         -- Update Conseiller  
 where nom = 'LACHEMI' and prenom = 'Bouzid';

alter table sports drop constraint chk_sports_libelle;   -- supprime la contraint check de libelle de la table sports

-- insertion des nouveaux sports
insert into sports values (123,'Golf');
insert into sports values (125,'Natation');

alter table sports add constraint chk_sports_libelle check (libelle in
('Golf','Natation','Basket ball','Volley ball','Hand ball','Tennis','Hockey','Badmington','Ping pong',
'Football','Boxe'));                                     -- re definition de la contrainte

delete from gymnases where surface > 400;       -- supprime les gymnases dont la superificie superieur a 400

-- Partie 3
select idsportif , nom , prenom from sportifs where age between 20 and 30;  -- les sportifs ages entre 20 et 30 ans

select distinct idsportifconseiller from sportifs where idsportifconseiller is not null;   -- les conseillers

select distinct idsportifentraineur from entrainer where idsportifentraineur         -- entraineurs pratiquent hand ball ou basket ball ou les deux  
not in( select ent.idsportifentraineur from entrainer ent ,sports sp 
where sp.idsport = ent.idsport and sp.libelle not in ('hand ball' , 'Basket ball') 
);

select idsportifentraineur from entrainer where idsportifentraineur 
not in( select ent.idsportifentraineur from entrainer ent ,sports sp         
where sp.idsport = ent.idsport and sp.libelle not in ('hand ball') 
)    
union                                                                               -- entraineurs pratiquent hand ball uniquement ou basket ball uniquement mais pas les deux  
select idsportifentraineur from entrainer where idsportifentraineur 
not in( select ent.idsportifentraineur from entrainer ent ,sports sp 
where sp.idsport = ent.idsport and sp.libelle not in ('Basket ball') 
);

select idsportif ,age from sportifs where age = (select min(age) from sportifs);    -- sportifs les plus jeunes

select ville ,avg(surface) moyenneSuperficie from gymnases group by ville;          -- moyennes de la surface des gymnases par ville

select ville ,count(*) maxGym from gymnases group by ville having   -- les villes avec le plus grand nombres de gymnases
count(*) in (select max(nb) from 
(select count(*) nb from gymnases group by ville) nbTable
);
