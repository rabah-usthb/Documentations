CREATE TABLE detailcommande (
  numcom integer,
  refprod integer,
  prixunit NUMBER ,
  qte integer,
  remise number,
  constraint pk_detailcommande PRIMARY KEY (numcom,refprod),
  constraint fk_detailcommande_produit foreign key (refprod) references produit(refprod) on delete cascade,
  constraint fk_detailcommande_commande foreign key (numcom) references commande(numcom) on delete cascade
);
