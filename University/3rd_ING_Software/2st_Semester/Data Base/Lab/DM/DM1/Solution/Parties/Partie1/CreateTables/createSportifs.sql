create table sportifs (
idsportif int,
nom varchar(50),
prenom varchar(50),
sexe char(1),
age int,
idsportifconseiller int,
constraint pk_sportifs primary key (idsportif),
constraint chk_sportifs_sexe check  (sexe in ('M','F')),
constraint fk_sportifs_sportifs foreign key (idsportifconseiller) references sportifs(idsportif)
);