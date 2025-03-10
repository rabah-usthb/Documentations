-- description catalogue des contraintes
desc user_constraints;

-- contraintes de la table USINE_TP1
select constraint_name , constraint_type from user_constraints where 
table_name = 'USINE_TP1';

-- contraintes de la table PRODUIT_TP1
select constraint_name , constraint_type from user_constraints where 
table_name = 'PRODUIT_TP1';

-- contraintes de la table FOURNISSEUR_TP1
select constraint_name , constraint_type from user_constraints where 
table_name = 'FOURNISSEUR_TP1';

-- contraintes de la table LIVRAISON_TP1
select constraint_name , constraint_type from user_constraints where 
table_name = 'LIVRAISON_TP1';
