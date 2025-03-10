-- moyenne des poids de produit par couleur
select avg(poids), couleur from produit_tp1 group by couleur;
