create table entrainer (
 idsportifentraineur int,
 idsport int,
 constraint pk_entrainer primary key (idsportifentraineur,idsport),
 constraint fk_entrainer_sports foreign key (idsport) references sports(idsport),
 constraint fk_entrainer_sportifs foreign key (idsportifentraineur) references sportifs(idsportif)
);