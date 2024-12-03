create or replace trigger fkService
before insert on projet
for each row 
declare 
pr projet%rowtype;
begin
select p.* into pr from  projet p inner join service s on s.nserv = :new.nserv;
dbms_output.put_line('project '||pr.nproj||' succefully affected to '||pr.nserv);
exception 
when no_data_found then 
dbms_output.put_line('Foreign key serivce constraint not respected');
end;
/