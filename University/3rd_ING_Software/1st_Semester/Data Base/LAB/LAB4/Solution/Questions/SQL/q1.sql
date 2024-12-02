create or replace trigger tp4q1
after insert on employe

begin

dbms_output.put_line('Un Nouveau Employe Est Ajoute');

end;
/