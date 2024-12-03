create or replace procedure tp3q3 

is
cursor cr is 
select e.nom , e.prenom , 
(select nvl(sum(dc.prixunit*dc.qte-dc.remise),0) from detailcommande dc where dc.numcom in ( 
select c.numcom from commande c where c.numemp = e.numemp)) chiffre_affaire from employe e
where (select nvl(sum(dc.prixunit*dc.qte-dc.remise),0) from detailcommande dc where dc.numcom in ( 
select c.numcom from commande c where c.numemp = e.numemp)) between 8000 and 10000;
nom employe.nom%type;
prenom employe.prenom%type;
ca number;

begin
open cr;
fetch cr into nom,prenom,ca;

while cr%found loop
dbms_output.put_line('nom '||nom||' prenom '||prenom||' chiffre d''affaire '||ca);
fetch cr into nom,prenom,ca;
end loop;

close cr;
end;
/
