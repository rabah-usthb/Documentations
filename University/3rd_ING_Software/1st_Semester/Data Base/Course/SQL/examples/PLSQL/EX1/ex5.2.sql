create or replace procedure globalverificationLab2

is
cursor cr is
select numintervention,datebegin,dateend from interventionsLab2;

num int;
datebegin date;
dateend date;

begin 
open cr;
fetch cr into num,datebegin,dateend;

while(cr%found) loop
verificationLab2 (num,datebegin,dateend);
fetch cr into num,datebegin,dateend;
end loop;

close cr;

end;
/
