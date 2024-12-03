create or replace trigger updateNbEmpProject 
after update on affectation 
for each row 
declare
begin
if inserting then
update projet p set p.nbemp = p.nbemp+1 where p.nproj = :new.nproj;
elsif deleting then
update projet p set p.nbemp = p.nbemp-1 where p.nproj = :new.nproj;
end if;
end;
/