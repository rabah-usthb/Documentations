create or replace procedure tp3q2

is

begin 

delete produit p where refprod NOT IN (select dc.refprod from detailcommande dc where dc.refprod = p.refprod); 

end;
/