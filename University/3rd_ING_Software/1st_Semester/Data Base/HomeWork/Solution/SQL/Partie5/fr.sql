select count(constraint_name) from user_constraints where 
table_name = 'SUBSCRIBE' and constraint_type='P' 
and constraint_name in (select r_constraint_name from user_constraints 
where table_name='THING' and constraint_type = 'R');
