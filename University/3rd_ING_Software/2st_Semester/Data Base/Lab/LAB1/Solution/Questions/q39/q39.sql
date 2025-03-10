-- fournisseur avec plus grand nombre de produits distinct
select f.nomf from livraison_tp1 l1 , fournisseur_tp1 f
where l1.nf = f.nf group by l1.nf , f.nomf having 
count(distinct l1.np) = (select max(nb_produit) from 
(select count(distinct np) nb_produit from livraison_tp1 l2 group by l2.nf) nb_table);
