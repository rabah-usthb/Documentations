insert all

into section (id_section,name) VALUES (3,'C')

into section (id_section,name) VALUES (4,'D')

into student (id,lastname,firstname,id_section,grade,dob)
 values (4,bakhti,sohaib,3,10.51,to_date('2000-10-01','YYYY-MM-DD'))

into student (id,lastname,firstname,id_section,grade,dob)
 values (5,ibtissame,ahlem,4,14.834,to_date('2001-08-21','YYYY-MM-DD'))

into student (id,lastname,firstname,id_section,grade,dob) 
 values (6,yacine,salem,null,9.801,to_date('2000-11-06','YYYY-MM-DD'))

select * from dual;
