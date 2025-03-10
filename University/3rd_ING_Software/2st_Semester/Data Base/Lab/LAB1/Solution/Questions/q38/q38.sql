-- nb produit par usines
select l1.nu , count(*) np_produit from livraison_tp1 l1
group by nu 
union
select u1.nu , 0 np_produit  from usine_tp1 u1 where u1.nu not in(
select nu from livraison_tp1);

