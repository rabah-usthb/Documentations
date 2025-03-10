-- usine qui ne recoit pas produit rouge d'un fournisseur parisien 
select distinct l1.nu from livraison_tp1 l1 where l1.nu not in (
select l2.nu from livraison_tp1 l2, produit_tp1 p , fournisseur_tp1 f 
where l2.np = p.np and l2.nf = f.nf and p.couleur = 'Rouge' and f.ville = 'Paris'
);
