-- produits livre par fournisseur num 2

-- methode 1
select p.nomp , p.couleur from produit_tp1 p, livraison_tp1 l where p.np = l.np and l.nf = 2;

-- methode 2
select p.nomp , p.couleur from produit_tp1 p where p.np in (
select l.np from livraison_tp1 l where p.np = l.np and l.nf = 2); 
