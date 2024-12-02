create or replace trigger deleteLouerTP5
after delete on louerTP5
for each row 

begin

update clienttp5 c set c.nbl = c.nbl-1 where c.numcl = :old.numcl;

end;
/