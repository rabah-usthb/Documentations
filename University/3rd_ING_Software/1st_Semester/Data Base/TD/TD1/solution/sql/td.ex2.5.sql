create or replace trigger ideminiteConstraint
before insert on affectation
for each row
declare
budget projet.budgetpro%type;
nemp employe.numemp%type;

begin
select p.budgetpro into budget from  projet p where p.nproj = :new.nproj; 

if budget is null then
raise_application_error(-20003,'ERROR num project inputed in affectation table doesn''t exist in project table');
end if;

select e.numemp into nemp from employe e where e.numemp = :new.numemp;
if nemp is null then
raise_application_error(-20004,'ERROR num employee inputed in affectation table doesn''t exist in employee table');
end if;

if :new.montant_indeminite > budget*0.1  then
raise_application_error(-20005,' ERROR num employee inputed in affectation table has an ideminite > 10% of project budget ');
else
dbms_output.put_line('Employee'||nemp||' Successfully affected');
end if;

end;
/