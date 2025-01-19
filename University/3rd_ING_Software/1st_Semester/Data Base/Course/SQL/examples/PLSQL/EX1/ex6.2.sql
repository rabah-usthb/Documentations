create or replace procedure globalnbInterventionsLab2

is
cursor cr is
select numemployee,firstname,lastname from employeeLab2;

num int;
fname employeeLab2.firstname%type;
lname employeeLab2.lastname%type;
nb int;

begin 
open cr;
fetch cr into num,fname,lname;

while(cr%found) loop
nb := nbInterventionsLab2 (num);
dbms_output.put_line('Employee '||fname||' '||lname||' has '||nb||' interventions');

fetch cr into num,fname,lname;
end loop;

close cr;

end;
/
