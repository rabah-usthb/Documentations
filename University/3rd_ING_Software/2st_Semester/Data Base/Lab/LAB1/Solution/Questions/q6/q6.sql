-- ajoutter l'attribut adresse a la table fournisseur
alter table fournisseur_tp1 add (adresse varchar2(100));

-- ajouter la contrainte not null
alter table fournisseur_tp1 add constraint nn_fournisseur_tp1_adresse check (adresse is not null);

-- verifie l'ajout de l'attribut
desc fournisseur_tp1;

-- verifier les contraintes de la table FOURNISSEUR_TP1
select constraint_name , constraint_type from user_constraints where 
table_name = 'FOURNISSEUR_TP1';

-- supprimer l'attribut adresse
alter table fournisseur_tp1 drop column adresse;

-- verifie supression
desc fournisseur_tp1;
