-- produit livre a tout les usines parisien
select np from livraison_tp1 where nu in (
select l.nu from livraison_tp1 l,usine_tp1 u where
l.nu = u.nu and u.ville = 'Paris')
group by np having count(distinct nu) = 
(select count(distinct l2.nu) from livraison_tp1 l2 , usine_tp1 u2
where l2.nu = u2.nu and u2.ville = 'Paris');
