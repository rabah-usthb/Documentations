declare 

cursor cr is select c.codeclient from client c;
code client.codeclient%type;
nbcom number;

begin 
open cr;
fetch cr into code;

while cr%found loop
nbcom :=  tp3q4 (code);
dbms_output.put_line(code||' a '||nbcom||' commandes');
fetch cr into code;
end loop;

close cr;
end;
/
