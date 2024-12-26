select t1.constraint_name const , t2.column_name from
user_constraints t1,user_cons_columns t2 where
t1.table_name='SUBSCRIBE' and t1.constraint_type='U' and
t2.constraint_name = t1.constraint_name;
