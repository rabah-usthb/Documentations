create or replace trigger deleteProdDC
after delete on detailcommande
for each row

declare 
oldca number;

begin 

oldca:=:old.qte*:old.prixunit-:old.remise;

update produit p set p.chiffre_affaire = p.chiffre_affaire - oldca 
where p.refprod = :old.refprod;

end;
/
