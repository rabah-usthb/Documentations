--method with nested select
select c.nom , c.prenom from clienttp5 c where c.numcl not in (
 select l.numcl from louertp5 l where l.typelocation='longue duree'
); 

--method with left join
select  c.nom , c.prenom from clienttp5 c LEFT JOIN louertp5 l on c.numcl = l.numcl and
l.typelocation='longue duree' 
where l.numcl is  null;
