create table arbitrer (
 idsportif int,
 idsport int,
 constraint pk_arbitrer primary key (idsportif,idsport),
 constraint fk_arbitrer_sports foreign key (idsport) references sports(idsport),
 constraint fk_arbitrer_sportifs foreign key (idsportif) references sportifs(idsportif)
 );