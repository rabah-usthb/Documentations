create view v1TP5EX1(idagence,numcl,nblocation) as select l.idagence,l.numcl ,count(l.numcl) nblocation 
from louertp5 l group by l.idagence,l.numcl
having count(l.numcl) = (
select max(count(l2.numcl)) from louertp5 l2 where l2.idagence = l.idagence group by l2.numcl
);