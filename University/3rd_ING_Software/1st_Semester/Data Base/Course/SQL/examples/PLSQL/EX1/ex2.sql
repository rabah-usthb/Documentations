create or replace procedure printNbModelLab2 

is
cursor cr is
   select numbrand , name from brandLab2;

num  brandLab2.numBrand%Type;
name brandLab2.name%Type;
nb int;

begin

open cr;
fetch cr into num,name;

while(cr%found) loop

select count(*) into nb from modelLab2 m 
where m.numbrand = num;

dbms_output.put_line(name||' has '||nb|| 'models');

fetch cr into num,name;
end loop;

close cr;

end;
/
