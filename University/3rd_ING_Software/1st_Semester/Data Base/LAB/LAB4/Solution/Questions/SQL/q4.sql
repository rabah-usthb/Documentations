create or replace procedure fillProdCA

is
cursor cr is select p.refprod from produit p;
ref number;

begin
open cr;
fetch cr into ref;

while cr%found loop

update produit p set p.chiffre_affaire = 
(select nvl(sum(dc.qte*dc.prixunit-dc.remise),0) from detailcommande dc where dc.refprod = ref)
where p.refprod = ref;

fetch cr into ref; 
end loop;

close cr;
end;
/