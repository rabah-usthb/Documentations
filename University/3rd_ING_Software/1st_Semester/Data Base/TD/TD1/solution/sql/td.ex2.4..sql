create or replace trigger sameNService 
before insert on affectation
for each row
declare
affectRow affectation%rowtype;
begin
select a.* into affectRow from affectation a inner join employe e on e.numemp = :new.numemp inner join projet p on p.nproj = :new.nproj 
where p.nserv = e.nserv;
dbms_output.put_line('Employe '||affectRow.numemp||' succesfully affected to '||affectrow.nproj||' project');
exception 
when no_data_found then
dbms_output.put_line('Error can''t affect a project to an employe of a different service');
end;
/