-- usine qui utilise tout produit de nf = 3
select nu from livraison_tp1 where nf=3 group by nu having
count(distinct np) = (select count(distinct np) from livraison_tp1 where nf=3 );
