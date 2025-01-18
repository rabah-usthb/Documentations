alter user user_name default tablespace new_perm_tablespace;               -- changes the premanent tablespace to new_perm_tablespace to user_name 
alter user user_name default temporary tablespace new_temp_tablespace;    -- changes the temporary tablespace to new_temp_tablespace to user_name  

alter table table_name move tablespace new_perm_tablespace;     -- move the table to the new tablespace
alter index index_name rebuild tablespace new_perm_tablespace;  -- move the index to the new tablespace
