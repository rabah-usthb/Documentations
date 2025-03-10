-- se connecter en tant que ING
sqlplus ING/1234@//localhost:1521/XE

-- creation de la table tableErreurs
create table tableErreurs_tp1 (
adresse rowid,
utilisateur varchar2(100),
nomTable varchar2(100),
nomConstrainte varchar2(100)
);

-- creation de la table fournisseur1
create table fournisseur1_tp1 (
nf int,
nomf varchar2(100),
statut varchar2(100),
ville varchar2(100),
email varchar2(100),
constraint pk_fournisseur1_tp1 primary key (nf),
constraint chk_fournisseur1_tp1_email check (email like '%@%'),
constraint uq_fournisseur1_tp1_email unique (email)
);


