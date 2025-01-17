create view vtp5q8 as select count(p.num_rep) nb_rep , p.date_pro from programmertp5 p where p.tarif<=200 group by p.date_pro order by nb_rep;
