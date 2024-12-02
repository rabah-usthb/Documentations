create or replace trigger tp4q2

after insert on produit
for each row

declare
nom categorie.nomcateg%type;

begin

select cat.nomcateg into nom from categorie cat where cat.codecateg = :new.codecateg;

dbms_output.put_line('Un Produit Est Ajaoute A La Categorie '||nom);

end;
/