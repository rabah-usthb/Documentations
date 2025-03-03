select ville ,count(*) maxGym from gymnases group by ville having 
count(*) in (select max(nb) from 
(select count(*) nb from gymnases group by ville) nbTable
);
