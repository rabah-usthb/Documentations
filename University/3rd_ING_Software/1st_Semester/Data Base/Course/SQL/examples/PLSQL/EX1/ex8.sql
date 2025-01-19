create or replace trigger notifyModelLab2 
after insert on modelLab2

for each row

declare
name brandLab2.name%type;

begin

select b.name into name from brandLab2 b where
b.numbrand = :new.numbrand;

dbms_output.put_line('A new Model Was added to the brand '||name);

end;
/
