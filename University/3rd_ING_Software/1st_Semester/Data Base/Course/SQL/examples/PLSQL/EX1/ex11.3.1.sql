create or replace trigger nbInterLab2_1
after insert on intervenantsLab2

for each row

declare 

begin

update employeelab2 e set nb_inter =nb_inter+1 where 
e.numemployee = :new.numemployee;



end;
/
