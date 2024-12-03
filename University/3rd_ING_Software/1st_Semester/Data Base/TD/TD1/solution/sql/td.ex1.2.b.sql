create or replace trigger notActorANDRealisateur 
before insert on rolefilm
for each row
declare 
exist number := 0;
begin
select count(*) into exist from rolefilm rf inner join film f on 
f.idfilm = rf.idfilm where :new.idacteur = f.idrealisateur ;
if exist = 1 then
raise_application_error(-20001,:new.idacteur||' can''t be actor and realisator at the same time');
end if;
exception
when no_data_found then 
dbms_output.put_line('Insertion Successfull');
end;
/