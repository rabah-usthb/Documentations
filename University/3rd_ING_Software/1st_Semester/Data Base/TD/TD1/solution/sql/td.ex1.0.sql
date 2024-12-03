create table personne (
idpersonne number primary key,
nom varchar2(25),
datenaissance date , --can't use check to see if it's < sysdate because check has to be determinist check doesn't allow sysdate(value dynamic changes with each insertion/update)
lieunaissance varchar2(50),
biographie varchar2(50)
);

create table film (
idfilm number primary key,
titre varchar2(25),
annee number,
idrealisateur number references personne(idpersonne)
);

create table rolefilm (
idacteur number references personne(idpersonne),
idfilm number references film(idfilm),
primary key (idacteur,idfilm),
personnage varchar2(15)
);

create table genrefilm (
idfilm number references film(idfilm),
genre varchar2(25)
);