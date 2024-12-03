create or replace procedure tp3q2

is

begin 

delete produit p where refprod NOT IN (select distinct dc.refprod from detailcommande dc); 

end;
/
