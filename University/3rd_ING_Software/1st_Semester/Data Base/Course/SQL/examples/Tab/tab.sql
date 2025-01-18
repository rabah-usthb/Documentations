create manager identified by "1234";   -- assign to manager USERS and TEMP tablespace

create admin identified by "1234"      -- assign to admin iot_tab and iot_temp tablespace
default tablespace iot_tab
temporary tablespace iot_temp;
