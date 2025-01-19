create or replace procedure fillnbInterventionsLab2

is
cursor cr is
select numemployee from employeeLab2;

num int;
nb int;

begin 
open cr;
fetch cr into num;

while(cr%found) loop
nb := nbInterventionsLab2 (num);

update employeelab2 e set nb_inter = nb where
e.numemployee = num;

fetch cr into num;
end loop;

close cr;

end;
/
