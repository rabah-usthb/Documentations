select column_id,
column_name col,
data_type type,
nullable ,
data_default def
from user_tab_columns where table_name='SUBSCRIBE';
select t1.constraint_name const , t1.SEARCH_CONDITION from
user_constraints t1
where t1.table_name='SUBSCRIBE' and t1.constraint_type='C';
alter table t1 add (name varchar2(20) default 'admin');
sqlplus admin/1234@//localhost:1521/XE
sqlplus system/a2b48a3bfb254f04@//localhost:1521/XE
sqlplus test/1234@//localhost:1521/XE
alter table t1 add constraint pk_t1 primary key (id1);
alter table t2 add constraint uq_t2 unique(id2);
select constraint_name name,
constraint_type type,
table_name tab
from user_constraints;
alter session set "_oracle_script" = true;
create user TEST identified by "1234" Default tablespace IOT_TBS temporary tablespace IOT_TempTBS;
grant all privileges to test;
desc all_tab_columns;
desc user_tab_columns;
desc ALL_TAB_COLUMNS;
desc USER_USERS;
desc ALL_CONSTRAINTS; 
desc USER_TAB_PRIVS;
desc dict;
select t1.constraint_name const , t2.column_name ,
(select t22.column_name from
user_cons_columns t22 where 
t1.r_constraint_name=t22.constraint_name) ref_col,
(select table_name from user_constraints t11
where t1.r_constraint_name=t11.constraint_name) ref_table
from
user_constraints t1,user_cons_columns t2 where
t1.table_name='SUBSCRIBE' and t1.constraint_type='R' and
t2.constraint_name = t1.constraint_name;
select count(constraint_name) from user_constraints where 
table_name = 'SUBSCRIBE' and constraint_type='P' 
and constraint_name in (select r_constraint_name from user_constraints 
where table_name='THING' and constraint_type = 'R');
--2 privileges system
grant create session to admin;
grant create user to admin;

--1 privilges objet
grant select on DBAIOT.USERS to admin;
select object_name name from all_objects
where owner='ADMIN';
select owner from all_objects
where object_name='SUBSCRIBE';
select t1.constraint_name const , t2.column_name from
user_constraints t1,user_cons_columns t2 where
t1.table_name='SUBSCRIBE' and t1.constraint_type='P' and
t2.constraint_name = t1.constraint_name;
--privileges objets
SELECT privilege priv,table_name tab FROM USER_TAB_PRIVS;

--privileges system
SELECT privilege priv FROM USER_SYS_PRIVS;


sqlplus dbaiot/1234@//localhost:1521/XE
select table_name name from user_tables;
select table_name name from all_tables where owner = 'SYSTEM';
select table_name name from all_tables where owner = 'DBAIOT';
select granted_role from user_role_privs;
select * from dict;
select username from user_users;
select bytes/1024 size_KO from user_segments where 
segment_name='SUBSCRIBE';
select column_name col ,
data_type  type, 
data_length len,
nullable n ,
column_id id 
from user_tab_columns where table_name='SUBSCRIBE';
create table t1 (id1 int);
create table t2 (id2 int);
select column_id,
column_name col,
data_type type,
nullable ,
data_default def
from user_tab_columns;
select object_name name from user_objects;
select column_name col ,
data_type  type, 
data_length len,
nullable n ,
column_id id 
from user_tab_columns where table_name='THING';
select t1.constraint_name const , t2.column_name from
user_constraints t1,user_cons_columns t2 where
t1.table_name='SUBSCRIBE' and t1.constraint_type='U' and
t2.constraint_name = t1.constraint_name;
