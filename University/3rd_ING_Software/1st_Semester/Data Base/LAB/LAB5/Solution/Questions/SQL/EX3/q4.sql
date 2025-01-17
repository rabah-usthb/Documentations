create view vtp5q4(nom,titre) as select m.nom ,(select r.titre_rep from representationtp5 r where m.num_rep = r.num_rep )
from musicientp5 m;