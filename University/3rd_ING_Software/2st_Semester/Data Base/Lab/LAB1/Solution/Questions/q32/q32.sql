-- couleur des produit dont avg(poids) >= 10
select couleur , avg(poids) from produit_tp1 group by couleur having avg(poids) >=10; 
