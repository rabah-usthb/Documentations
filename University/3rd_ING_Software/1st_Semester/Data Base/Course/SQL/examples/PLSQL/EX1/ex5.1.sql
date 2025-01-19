create or replace procedure verificationLab2 (num in int ,datebegin in date ,dateend in date)

is

begin

if (datebegin < dateend) then

 dbms_output.put_line('Positive Verification For Intevention '||num);

else 

 dbms_output.put_line('Negative Verification For Intevention '||num);

end if;

end;
/
