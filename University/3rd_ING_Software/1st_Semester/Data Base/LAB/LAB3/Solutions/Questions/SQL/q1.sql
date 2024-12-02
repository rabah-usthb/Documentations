create or replace procedure tp3q1

is

nbproduit integer:=0;
nom categorie.nomcateg%type;

cursor cr is
select count(p.refprod) , c.nomcateg from produit p inner join categorie c on p.codecateg = c.codecateg group by c.nomcateg;

begin
open cr;
fetch cr into nbproduit,nom;

while (cr%found) loop
dbms_output.put_line('La Categorie '''||nom||''' possede '||nbproduit||' produits');
fetch cr into nbproduit , nom;
end loop;

exception 

when no_data_found then
dbms_output.put_line(sqlcode||sqlerrm);

when others then 
dbms_output.put_line(sqlcode||sqlerrm);

end;
/