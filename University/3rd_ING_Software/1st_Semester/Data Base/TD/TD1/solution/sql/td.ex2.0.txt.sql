create table service (
nserv number primary key,
nomserv varchar2(25),
localisation varchar2(50),
directeurserv varchar2(25)
);

create table employe (
numemp number primary key,
nomemp varchar2(25),
salaireemp number(10,2),
dateemb date,
nserv number references service(nserv)
);

create table projet (
nproj number primary key,
titreproj varchar2(25),
responsableproj varchar2(25),
datedeb date,
budgetpro number(10,2),
nserv number references service(nserv)
);

create table affectation (
numemp number references employe(numemp),
nproj number references projet(nproj),
primary key (numemp,nproj),
date_affec date,
montant_indeminite number (10,2)
);

