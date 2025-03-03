select distinct idsportifentraineur from entrainer where idsportifentraineur 
not in( select ent.idsportifentraineur from entrainer ent ,sports sp 
where sp.idsport = ent.idsport and sp.libelle not in ('hand ball' , 'Basket ball') 
);

select idsportifentraineur from entrainer where idsportifentraineur 
not in( select ent.idsportifentraineur from entrainer ent ,sports sp 
where sp.idsport = ent.idsport and sp.libelle not in ('hand ball') 
)
union 
select idsportifentraineur from entrainer where idsportifentraineur 
not in( select ent.idsportifentraineur from entrainer ent ,sports sp 
where sp.idsport = ent.idsport and sp.libelle not in ('Basket ball') 
);