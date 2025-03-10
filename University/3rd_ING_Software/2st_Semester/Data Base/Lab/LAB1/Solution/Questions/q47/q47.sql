-- afficher rowid de fournisseur1
select rowid, nf, email from fournisseur1_tp1;

-- afficher tableErreurs
select * from tableerreurs_tp1;

-- met les rowid qui ne respectent pas la contrainte check dans la table tableErreurs
alter table fournisseur1_tp1 enable constraint chk_fournisseur1_tp1_email exceptions into tableerreurs_tp1;

-- afficher tableErreurs
select * from tableerreurs_tp1;

-- supprimmer les elements de fournisseur1 qui ne respectent pas la contrainte check
delete from fournisseur1_tp1 where rowid in (
select adresse from tableerreurs_tp1);

-- Activer contrainte check
alter table fournisseur1_tp1 enable constraint chk_fournisseur1_tp1_email; 

-- afficher fournisseur1
select * from fournisseur1_tp1;
