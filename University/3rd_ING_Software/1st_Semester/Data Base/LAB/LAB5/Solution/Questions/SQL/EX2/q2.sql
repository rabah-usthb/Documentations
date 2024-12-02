select c.nomc from cheftp5 c where 
(select count(s.numr) from servicetp5 s where s.numc = c.numc and
s.numr in 
(select r.numr from restauranttp5 r where r.adresse='Oran')) = 
(select count(r.numr) from restauranttp5 r where r.adresse='Oran')
;
