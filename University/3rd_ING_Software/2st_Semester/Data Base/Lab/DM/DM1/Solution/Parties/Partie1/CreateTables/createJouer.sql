create table jouer (
 idsportif int,
 idsport int,
 constraint pk_jouer primary key (idsportif,idsport),
 constraint fk_jouer_sports foreign key (idsport) references sports(idsport),
 constraint fk_jouer_sportifs foreign key (idsportif) references sportifs(idsportif)
 );