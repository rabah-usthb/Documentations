-- fournisseur qui livre a usine num 1 produit rouge
select l.nf from livraison_tp1 l , produit_tp1 p where l.nu = 1 and l.np = p.np and p.couleur='Rouge'; 
