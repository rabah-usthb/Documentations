select distinct age from sportifs; 
select idsportif ,age from sportifs where age = (select min(age) from sportifs);