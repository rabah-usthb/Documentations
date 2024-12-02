create or replace trigger tp4q3
before update of codeclient on commande
for each row

declare
messageError varchar2(100);
exist number;
exc exception;

begin
messageError:='Error Can''t Update CodeClient In Commnade Table Because '||:new.codeclient||' Doesn''t exist in Client Table';


select count(codeclient) into exist from client where codeclient = :new.codeclient;

exception
when NO_DATA_FOUND then
dbms_output.put_line(messageError);
when others then
dbms_output.put_line(sqlcode||sqlerrm);
end;
/
