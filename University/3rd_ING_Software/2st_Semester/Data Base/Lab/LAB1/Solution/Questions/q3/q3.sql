-- creation de la table usine
create table usine_tp1 (
nu int ,
nomu varchar2(100),
ville varchar2(100),
constraint pk_usine_tp1 primary key(nu)
);

-- creation de la table produit
create table produit_tp1 (
np int,
nomp varchar2(100),
couleur varchar2(100),
poids number,
constraint pk_produit_tp1 primary key (np),
constraint chk_produit_tp1_poids check (poids > 0)
);

-- creation de la table fournisseur
create table fournisseur_tp1 (
nf int,
nomf varchar2(100),
statut varchar2(100),
ville varchar2(100),
email varchar2(100),
constraint pk_fournisseur_tp1 primary key (nf),
constraint chk_fournisseur_tp1_email check (email like '%@%'),
constraint uq_fournisseur_tp1_email unique (email)
);

-- creation de la table livraison
create table livraison_tp1 (
np int,
nu int,
nf int,
quantite int,
constraint pk_livraison_tp1 primary key (np,nu,nf),
constraint fk_livraison_tp1_produit_tp1 foreign key (np) references produit_tp1(np),
constraint fk_livraison_tp1_usine_tp1 foreign key (nu) references usine_tp1(nu),
constraint fk_livraison_tp1_fournisseur_tp1 foreign key (nf) references fournisseur_tp1(nf),
constraint chk_livraison_tp1_quantite check (quantite > 0)
);
