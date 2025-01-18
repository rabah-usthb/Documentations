create temporary tablespace iot_temp tempfile
 'oracle/tempfile_1/temp_1.tmp' size size_value 1g 
  reuse autoextend on next 100m;

-- create temporary tablespace with 1 tempfile
-- initial size 1g
-- autoextend by 100m
-- no limit
