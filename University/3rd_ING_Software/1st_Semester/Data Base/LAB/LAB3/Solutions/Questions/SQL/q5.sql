create or replace procedure tp3q5 (numcom in number , codeclient in varchar2 ,numemp in number,datecom in date,alivavant in varchar2 ,
dateenv in date , nummess in number, port in varchar2 , destinataire varchar2, adrliv in varchar2 ,villeliv in varchar2, 
regionliv in varchar2,codepostalliv in varchar2 ,paysliv in varchar2)

is
exist number:=0;
pk exception;
fk_mes exception;
fk_client exception;
fk_emp exception;

begin

select count(c.numcom) into exist from commande c where c.numcom = numcom;
if(exist!=0)then
raise pk;
end if;

select count(c.codeclient) into exist from client c where c.codeclient = codeclient;
if(exist=0)then
raise fk_client;
end if;

select count(e.numemp) into exist from employe e where e.numemp = numemp;
if(exist=0)then
raise fk_emp;
end if;

select count(m.nummess) into exist from messager m where m.nummess = nummess;
if(exist=0)then
raise fk_mes;
end if;

insert into commande values (numcom,codeclient,numemp,datecom,alivavant,dateenv, nummess, port, destinataire,
adrliv,villeliv,regionliv,codepostalliv,paysliv);

exception
when pk then
dbms_output.put_line('Primary Key Already Exist');
when fk_client then
dbms_output.put_line('Client Foreign key Doesn''t Exist');
when fk_emp then
dbms_output.put_line('Employe Foreign key Doesn''t Exist');
when fk_mes then
dbms_output.put_line('Messager Foreign key Doesn''t Exist');
when others then
dbms_output.put_line(sqlcode||sqlerrm);
end;
/