create or replace procedure updateSalaryLab2

is
cursor cr is
 select numEmployee,firstname,lastname,category,salary from employeeLab2;

num employeeLab2.numEmployee%type;
fname employeeLab2.firstname%type;
lname employeeLab2.lastname%type;
cat employeeLab2.category%type;
oldsal employeeLab2.salary%type;
newsal number;

begin
open cr;
fetch cr into num,fname,lname,cat,oldsal;

while(cr%found) loop
if (cat = 'Assistant' or cat = 'Mechanician') then

if (cat = 'Assistant') then
    newsal:=oldsal+0.3*oldsal;
end if;

if (cat = 'Mechanician') then
    newsal:=oldsal+0.5*oldsal;
end if;

update employeeLab2 e set e.salary= newsal where e.numemployee=num;

dbms_output.put_line('Employee '||fname||' '|| lname ||' of category '|| cat ||' went from '||oldsal||' to '||newsal);
end if;

fetch cr into num,fname,lname,cat,oldsal;
end loop;

end;
/
