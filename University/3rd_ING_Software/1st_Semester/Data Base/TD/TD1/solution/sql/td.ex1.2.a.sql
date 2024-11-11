create or replace trigger fiveGenreMax 
before insert on genrefilm 
for each row 
declare 
nbGenre number :=null;
begin
select count(*) into nbGenre from genrefilm gf where 
gf.idfilm = :new.idfilm group by gf.idfilm;
if nbGenre > 5 then
raise_application_error(-20000,'Film '||:new.idfilm||' Can''t have more than 5 genre');
end if;

end;
/