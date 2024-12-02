create table clientTp5 (
numcl number,
nom varchar2(50),
prenom varchar2(50),
genere varchar2(15),
adresse varchar2(50),
tel varchar2(50),
constraint pk_clientTP5 primary key (numcl),
constraint chk_clienTP5_genere check (genere in ('homme','femme'))
);