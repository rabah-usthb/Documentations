create or replace trigger modifProdDC
after update on detailcommande
for each row

declare
oldca number;
newca number;

begin 

oldca:= :old.prixunit*:old.qte-:old.remise;
newca:= :new.prixunit*:new.qte-:new.remise;


if(:old.refprod != :new.refprod) then

update produit p set p.chiffre_affaire = p.chiffre_affaire -oldca 
where p.refprod = :old.refprod;

update produit p set p.chiffre_affaire = p.chiffre_affaire + newca 
where p.refprod = :new.refprod;

else
update produit p set p.chiffre_affaire = p.chiffre_affaire - oldca + newca 
where p.refprod = :old.refprod;
end if;


end;
/
