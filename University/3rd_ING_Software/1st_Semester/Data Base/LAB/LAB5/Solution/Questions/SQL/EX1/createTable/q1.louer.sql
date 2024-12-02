create table louerTP5 (
idagence number,
numcl number,
matricule number,
datedebut date,
datefin date,
prix number,
typelocation varchar2(50),
constraint pk_louerTP5 primary key (idagence,numcl,matricule,datedebut),
constraint fk_louerTP5_agenceTP5 foreign key (idagence) references agenceTP5(idagence),
constraint fk_louerTP5_clientTP5 foreign key (numcl) references clientTP5(numcl),
constraint fk_louerTP5_voitureTP5 foreign key (matricule) references voitureTP5(matricule),
constraint chk_louerTP5_date check (datefin>datedebut),
constraint chk_louerTP5_type check (typelocation in ('longue duree' ,'courte duree'))
);
