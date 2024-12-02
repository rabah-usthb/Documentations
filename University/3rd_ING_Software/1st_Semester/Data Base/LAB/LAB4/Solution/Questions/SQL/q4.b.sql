create or replace trigger insertProdDC
after insert on detailcommande
for each row

declare
newca number;

begin 

newca:=:new.qte*:new.prixunit-:new.remise;

update produit p set p.chiffre_affaire = p.chiffre_affaire + newca 
where p.refprod = :new.refprod;

end;
/
