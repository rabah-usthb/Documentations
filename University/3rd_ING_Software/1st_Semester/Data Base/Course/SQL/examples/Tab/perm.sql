create tablespace iot_tab datafile
 'oracle/datafile_1/data_1.dbf' size 100m 
  reuse autoextend on next 10m maxsize 1g offline,
 'oracle/datafile_2/data_2.dbf' size 50m 
  reuse autoextend maxsize unlimited offline;

 -- creates a permanent tablespace with 2 data files
 -- first data file has inital size of 100m autoextend by 10 until 10g
 -- second data file has inital size of 50m autoextend by default value unlimited maxsize
 -- default state offline
