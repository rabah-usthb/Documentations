-- nb produits par fournisseur
select count(*) nb_produit , f.nomf from livraison_tp1 l , fournisseur_tp1 f
where l.nf = f.nf group by f.nomf;
