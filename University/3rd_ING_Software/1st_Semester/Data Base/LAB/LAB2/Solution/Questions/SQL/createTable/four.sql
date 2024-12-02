CREATE TABLE fournisseur  (
   numfour  integer,
   societe  varchar2(30),
   contact  varchar2(30),
   fonction  varchar2(30),
   adresse  varchar2(30),
   ville  varchar2(30),
   region  varchar2(30),
   codepostal  varchar2(30),
   pays  varchar2(30),
   tel  varchar2(30),
   fax  varchar2(30),
   pageaccueil  varchar2(30),
   constraint pk_fournisseur  PRIMARY KEY (numfour)
);
