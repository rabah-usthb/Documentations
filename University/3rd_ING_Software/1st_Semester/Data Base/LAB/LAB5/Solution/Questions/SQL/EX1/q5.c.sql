create or replace trigger insertLouerTP5
after insert on louerTP5
for each row 

begin

update clienttp5 c set c.nbl = c.nbl+1 where c.numcl = :new.numcl;

end;
/