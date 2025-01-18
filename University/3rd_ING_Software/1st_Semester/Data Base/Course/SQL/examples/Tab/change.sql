alter user manager default tablespace iot_tab;                 -- changes the premanent tablespace to iot_tab to manager 
alter user user_name default temporary tablespace iot_temp;    -- changes the temporary tablespace to iot_temp to manager  

alter table t_1 move tablespace new_iot_tab;       -- move t1 to the new_iot_tab tablespace
alter index ind_1 rebuild tablespace new_iot_tab;  -- move ind1 to the new_iot_tab tablespace
