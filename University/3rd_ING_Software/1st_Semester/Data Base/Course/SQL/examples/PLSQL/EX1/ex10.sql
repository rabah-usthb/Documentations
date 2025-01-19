create or replace trigger checkperiodLAB2
before insert on intervenantsLab2

for each row

declare
datebegin date;
dateend date;
exc exception;

begin

select datebegin ,dateend into datebegin ,dateend  from
interventionsLab2 l where l.numintervention = :new.numintervention;

if(datebegin<:new.datebegin or dateend>:new.dateend) then
    raise exc;
end if;

Exception

when exc then
RAISE_APPLICATION_ERROR(-20002, 'Error: Employee doesn''t respect the period.');
when others then
dbms_output.put_line(SQLCODE||SQLERRM);


end;
/
