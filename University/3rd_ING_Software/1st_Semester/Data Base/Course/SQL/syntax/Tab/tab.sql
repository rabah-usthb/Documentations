create user identified by "user_password"; -- assing default tablespace : the USERS permanent tablespace , and TEMP temporary tablespace

create user identified by "user_password" -- assign user-created tablespace
default tablespace perm_table_name
temporary tablespace temp_table_name;
