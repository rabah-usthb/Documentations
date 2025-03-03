create table sportifs (
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


create table sports (
idsport int,
libelle varchar(50),
constraint pk_sports primary key (idsport)
);


create table gymnases (
 idgymnase int,
 nomgymnase varchar(50),
 adresse varchar(50),
 ville varchar(50),
 surface int,
 constraint pk_gymnases primary key (idgymnase)
);


create table arbitrer (
 idsportif int,
 idsport int,
 constraint pk_arbitrer primary key (idsportif,idsport),
 constraint fk_arbitrer_sports foreign key (idsport) references sports(idsport),
 constraint fk_arbitrer_sportifs foreign key (idsportif) references sportifs(idsportif)
 );


create table entrainer (
 idsportifentraineur int,
 idsport int,
 constraint pk_entrainer primary key (idsportifentraineur,idsport),
 constraint fk_entrainer_sports foreign key (idsport) references sports(idsport),
 constraint fk_entrainer_sportifs foreign key (idsportifentraineur) references sportifs(idsportif)
);


create table jouer (
 idsportif int,
 idsport int,
 constraint pk_jouer primary key (idsportif,idsport),
 constraint fk_jouer_sports foreign key (idsport) references sports(idsport),
 constraint fk_jouer_sportifs foreign key (idsportif) references sportifs(idsportif)
 );


create table seances (
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
