create view vtp5q5(lieu,tarif) as select r.lieu,(select p.tarif from programmertp5 p where p.date_pro = to_date('31/12/2020','DD/MM/YYYY')
and p.num_rep = r.num_rep)
from representationtp5 r;