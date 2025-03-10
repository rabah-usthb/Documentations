-- num produit plus leges
select np , poids from produit_tp1 where poids in (select min(poids) from produit_tp1);
