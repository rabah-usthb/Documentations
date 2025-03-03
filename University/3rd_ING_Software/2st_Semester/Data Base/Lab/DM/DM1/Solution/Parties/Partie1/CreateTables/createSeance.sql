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
 constraint chk_seances_jour check (jour in 
    ('Dimanche','Lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi'))
);
