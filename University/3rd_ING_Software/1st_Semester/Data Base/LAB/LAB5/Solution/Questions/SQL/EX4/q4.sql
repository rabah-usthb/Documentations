create view vtp5ex4q4(salaire_moy) as select avg(e.salaire) from employetp5 e where e.num_dep in
(select d.num_dep from departementstp5 d where d.nom_dep='production');