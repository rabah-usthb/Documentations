sqlplus system/a2b48a3bfb254f04@//localhost:1521/XE
alter session set "_oracle_script" = true;
create user DBAIOT identified by "1234" Default tablespace IOT_TBS temporary tablespace IOT_TempTBS;
grant all privileges to DBAIOT;
create tablespace IOT_TBS DATAFILE '\tablespace_Data.dat' size 100M autoextend on online;
create temporary tablespace IOT_TempTBS TEMPFILE '\tablespace_Temp.dat' size 100M autoextend on;
