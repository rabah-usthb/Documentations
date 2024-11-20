insert into section (id_section,name) 
 values (1,'A');

insert into section (id_section,name) 
 values (2,'B');

insert into student (id,lastname,firstname,id_section,grade,dob) 
 values (1,chabane,rabah,2,11.80,to_date('2002-03-19','YYYY-MM-DD'));

insert into student (id,lastname,firstname,id_section,grade,dob) 
 values (2,adem,lyna,1,13.451,to_date('2004-07-19','YYYY-MM-DD'));

insert into student (id,lastname,firstname,id_section,grade,dob) 
 values (3,chaouche,mohamed,null,12.125,to_date('2004-02-20','YYYY-MM-DD'));
