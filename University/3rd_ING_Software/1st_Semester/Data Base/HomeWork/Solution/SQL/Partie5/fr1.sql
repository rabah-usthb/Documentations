select t1.constraint_name const , t2.column_name ,
(select t22.column_name from
user_cons_columns t22 where 
t1.r_constraint_name=t22.constraint_name) ref_col,
(select table_name from user_constraints t11
where t1.r_constraint_name=t11.constraint_name) ref_table
from
user_constraints t1,user_cons_columns t2 where
t1.table_name='SUBSCRIBE' and t1.constraint_type='R' and
t2.constraint_name = t1.constraint_name;
