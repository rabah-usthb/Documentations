-- fournisseurs qui approvisionnent les usines 1 et 2 au moins.
select nf from livraison_tp1 where nu = 1
intersect
select nf from livraison_tp1 where nu = 2;
