alter session set "_oracle_script" = true;
create user TEST identified by "1234" Default tablespace IOT_TBS temporary tablespace IOT_TempTBS;
grant all privileges to test;
