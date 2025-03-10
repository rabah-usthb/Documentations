-- usine dont au moins un fournisseur pas dans la meme villes
select distinct u.nu from usine_tp1 u , livraison_tp1 l ,fournisseur_tp1 f where
u.nu = l.nu and f.nf = l.nf and u.ville != f.ville; 
