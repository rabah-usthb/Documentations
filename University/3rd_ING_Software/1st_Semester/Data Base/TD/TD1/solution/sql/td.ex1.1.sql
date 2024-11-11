create or replace function mostRecentMovieRealised (idpersonne in number)
return number

is
year film.annee%type :=null;
nom personne.nom%type;
begin
select max(f.annee) , p.nom into year,nom from film  f inner join personne  p on
f.idrealisateur = idpersonne group by p.nom;
dbms_output.put_line('annee la plus recente dun film realise par '||nom||' est '||year);
return year;
exception
when no_data_found then 
dbms_output.put_line('Error Personne '||idpersonne||' realised no films');
return null;
end;
/