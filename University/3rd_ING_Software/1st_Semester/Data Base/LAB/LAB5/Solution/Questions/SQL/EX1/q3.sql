 --method nested select
select a.idagence from agencetp5 a where a.adresse='Alger'
and a.idagence not in (select v.idagence from voituretp5 v where v.marque not in ('BMW','Volkswagen'));

 --method join
select distinct a.idagence from 
agencetp5 a inner join voituretp5 v on a.idagence = v.idagence and a.adresse='Alger'
left join voituretp5 v1 on v1.idagence = a.idagence and v1.marque not in ('BMW','Volkswagen') 
where v1.idagence is null ;

 
