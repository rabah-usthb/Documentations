-- fournisseur livre a paris ou sochaux produit rouge
select f.nomf from fournisseur_tp1 f , livraison_tp1 l , usine_tp1 u , produit_tp1 p 
where f.nf = l.nf and l.nu = u.nu and (u.ville = 'Paris' or u.ville = 'Sochaux' ) and 
l.np = p.np and p.couleur = 'Rouge';
