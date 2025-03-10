-- usines qui utilisent des produits du fournisseur num 3 (pas forcement livre a l'usine)
select distinct nu from livraison_tp1 where np in (
select np from livraison_tp1 where nf = 3);

