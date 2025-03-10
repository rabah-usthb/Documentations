-- desactiver la tablespace permanente livraison_tbs
alter tablespace livraison_tbs offline;

-- afficher fournisseur
-- pas d'erreur objet appartient a la table space users
select * from fournisseur_tp1;

-- creation de la table test
-- quand on creer de nouvelle objet avec une tablspace offline
-- oracle utilisera la tablespace par defaut users
create table test_tp1 (a int, b char);

-- afficher fournisseur1 
-- pas d'erreur meme si tablespace desactiver
-- les objects de livraison_tbs sont toujours accessible
-- mais les mise-ajour sur les objets est interdite si tablespace offline
select * from fournisseur1_tp1;
