create or replace function tp3q4 (code in char)
return number 
is
nbcom number:=0;

begin
select count(c.codeclient) into nbcom from commande c where c.codeclient = code;
RETURN nbcom;
end;
/