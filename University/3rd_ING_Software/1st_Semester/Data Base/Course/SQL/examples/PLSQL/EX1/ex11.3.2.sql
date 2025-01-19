create or replace trigger nbInterLab2_2
after delete on intervenantsLab2

for each row

declare 

begin

update employeelab2 e set nb_inter =nb_inter-1 where 
e.numemployee = :old.numemployee;



end;
/
