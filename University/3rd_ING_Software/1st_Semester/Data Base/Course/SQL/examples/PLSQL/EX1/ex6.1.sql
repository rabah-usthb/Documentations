create or replace function nbInterventionsLab2 (num in int)
return int

is
nb int;

begin

select count(*) into nb from IntervenantsLab2 l
where l.numemployee = num;

return nb;

end;
/
