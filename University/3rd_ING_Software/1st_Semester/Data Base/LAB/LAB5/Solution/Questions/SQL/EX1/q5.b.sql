create or replace procedure fillNBL 

is

cursor cr is 
select numcl from clienttp5;

cl number;

begin
open cr;
fetch cr into cl;

while cr%found loop

update clienttp5 c set c.nbl = ( select count(l.numcl) from louertp5 l where l.numcl=cl ) where c.numcl = cl;
fetch cr into cl;

end loop;

close cr;

exception 
when others then 
dbms_output.put_line(sqlcode||sqlerrm);
end;
/
