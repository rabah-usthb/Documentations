create or replace trigger salaryLab2
before update of salary on EmployeeLab2

for each row

declare
exc exception;

begin

if(:new.salary < :old.salary) then
raise exc;
end if;

exception 

when exc then
RAISE_APPLICATION_ERROR(-20001, 'Error: Cannot update salary to a lower value.');
when others then
dbms_output.put_line(SQLCODE||SQLERRM);

end;
/
