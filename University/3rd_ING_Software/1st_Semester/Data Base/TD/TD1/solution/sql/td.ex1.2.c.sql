create or replace trigger filmDateTrigger
before insert or update on film 
for each row 
begin
 if :new.annee > extract(year from sysdate) then 
 raise_application_error(-20002,'Film Release Year can''t be greater than current year');
end if;
end;
/