-- nb produits par fournisseur parisien
select count(*) nb_produit , l.nf from livraison_tp1 l , fournisseur_tp1 f
where l.nf = f.nf and f.ville = 'Paris' group by l.nf;
