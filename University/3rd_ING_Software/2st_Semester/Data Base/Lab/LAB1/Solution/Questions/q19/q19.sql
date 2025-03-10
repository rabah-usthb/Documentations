-- produit usine fournisseur de meme ville
select l.np from livraison_tp1 l , usine_tp1 u , fournisseur_tp1 f
where l.nf = f.nf and l.nu = u.nu and f.ville = u.ville; 
