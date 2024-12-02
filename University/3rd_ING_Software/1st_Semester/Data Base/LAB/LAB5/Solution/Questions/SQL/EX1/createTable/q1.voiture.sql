create table voitureTP5 (
matricule number,
modele varchar2(50),
marque varchar2(50),
couleur varchar2(50),
description varchar2(50),
idagence number,
constraint pk_voitureTP5 primary key (matricule),
constraint fk_voitureTP5_agenceTP5 foreign key (idagence) references agencetp5(idagence)
);
