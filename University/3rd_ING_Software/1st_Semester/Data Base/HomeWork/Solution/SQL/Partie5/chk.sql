select t1.constraint_name const , t1.SEARCH_CONDITION from
user_constraints t1
where t1.table_name='SUBSCRIBE' and t1.constraint_type='C';
