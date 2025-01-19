alter table examlab1 drop constraint chk_examLab1_nameexam;
alter table examLab1 add constraint chk_examLab1_nameexam 
check (nameexam in ('BDD','SI','GL','SYS','General Culture')); 
