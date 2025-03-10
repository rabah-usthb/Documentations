-- activer la tablespace permanente livraison_tbs
alter tablespace livraison_tbs online;

-- afficher nom,type,status des contraintes de la table fournisseur1
select constraint_name , constraint_type , status from user_constraints where table_name = 'FOURNISSEUR1_TP1';

-- inserer elements dans fournisseur1
insert into fournisseur1_tp1 values ( 1 ,'SaintGobain','Producteur','Paris','saint_goubain@gmail.com');
insert into fournisseur1_tp1 values ( 2 ,'Au bon siege','Soustraitant','Limoges','au_bon_siegegmail.com');

-- desactiver la contrainte check de fournisseur1
alter table fournisseur1_tp1 disable constraint chk_fournisseur1_tp1_email;

-- afficher nom,type,status des contraintes de la table fournisseur1
select constraint_name , constraint_type , status from user_constraints where table_name = 'FOURNISSEUR1_TP1';

-- inserer elements dans fournisseur1
insert into fournisseur1_tp1 values ( 2 ,'Au bon siege','Soustraitant','Limoges','au_bon_siegegmail.com');
