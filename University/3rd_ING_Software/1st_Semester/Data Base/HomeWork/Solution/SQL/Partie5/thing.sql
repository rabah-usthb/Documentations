select column_name col ,
data_type  type, 
data_length len,
nullable n ,
column_id id 
from user_tab_columns where table_name='THING';
