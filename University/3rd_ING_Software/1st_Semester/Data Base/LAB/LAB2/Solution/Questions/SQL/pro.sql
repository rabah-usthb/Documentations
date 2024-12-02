CREATE TABLE produit (
   refprod  integer,
   nomprod  varchar2(100) ,
   numfour  integer,
   codecateg  integer,
   qteparunit  varchar2(100),
   prixunit  number,
   unitesstock  integer,
   unitescom  integer,
   niveaureap  integer,
   indisponible  integer,
   constraint pk_produit PRIMARY KEY (refprod),
   constraint fk_produit_categorie foreign key (codecateg) references categorie(codecateg) on delete cascade,
   constraint fk_produit_fournisseur foreign key (numfour) references fournisseur(numfour) on delete cascade,
   constraint ck_produit_indisponible check (indisponible in (0,1))
);
