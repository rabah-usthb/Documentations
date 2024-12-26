sqlplus system/a2b48a3bfb254f04@//localhost:1521/XE
alter session set "_oracle_script" = true;
create user DBAIOT identified by "1234" Default tablespace IOT_TBS temporary tablespace IOT_TempTBS;
grant all privileges to DBAIOT;
create tablespace IOT_TBS DATAFILE '\tablespace_Data.dat' size 100M autoextend on online;
create temporary tablespace IOT_TempTBS TEMPFILE '\tablespace_Temp.dat' size 100M autoextend on;
alter table users add (adressuser varchar2(100));
alter table users modify (adressuser varchar2(150));
sqlplus dbaiot/1234@//localhost:1521/XE
alter table subscribe add (date_deb date);
alter table subscribe drop constraint pk_subscribe; 
alter table subscribe add constraint pk_subscribe primary key (iduser,idservice,date_deb);
alter table users drop column adruser;
alter table subscribe add (date_fin date);
alter table subscribe add constraint chk_subscribe_date check(date_deb<date_fin);
alter table users add constraint nn_users_lastname check (lastname is NOT null);
alter table users add constraint nn_users_adressuser check (adressuser is NOT null);
alter table users rename column adressuser to adruser;
alter table users modify (adressuser varchar2(90));
desc users;
desc users;
insert all
    into service values(1,'myKWHome','smarthome')
    into service values(2,'FridgAlert','smarthome')
    into service values(3,'RUNstats','quantifiedself')
    into service values(4,'traCARE','quantifiedself')
    into service values(5,'dogWATCH',NULL)
    into service values(6,'CarUse',NULL)
select * from dual;
insert all
    into subscribe values(2,1,to_date('2020/01/12','YYYY/MM/DD'),to_date('2020/02/12','YYYY/MM/DD'))
    into subscribe values(2,2,to_date('2020/01/19','YYYY/MM/DD'),to_date('2020/02/07','YYYY/MM/DD'))
    into subscribe values(1,3,to_date('2020/02/05','YYYY/MM/DD'),to_date('2020/04/05','YYYY/MM/DD'))
    into subscribe values(3,7,to_date('2020/02/01','YYYY/MM/DD'),to_date('2020/02/15','YYYY/MM/DD'))
select * from dual;
insert all
    into thing values('f0:de:f1:39:7f:17',1,NULL,NULL)
    into thing values('f0:de:f1:39:7f:18',2,NULL,NULL)
    into thing values('f0:de:f1:39:7f:19',2,'thingtempo',60)
    into thing values('f0:de:f1:39:7f:25',10,NULL,NULL)
    into thing values('f0:de:f1:39:7f:20',2,'thingtempo',1.5)
    into thing values('f0:de:f1:39:7f:21',4,NULL,NULL)
    into thing values('f0:de:f1:39:7f:22',4,NULL,NULL)
select * from dual;
insert all
    into users values(1,'Souad','MESBAH','souad.mesbah@gmail.com')
    into users values(2,'Younes','CHALAH','younes.chalah@gmail.com')
    into users values(3,'Chahinaz','MELEK','chahinaz.melek@gmail.com')
    into users values(4,'Samia','OUALI','samia.ouali@gmail.com')
    into users values(5,'Djamel','MATI','djamel.mati@gmail.com')
    into users values(6,'Assia','HORRA','assia.horra@gmail.com')
    into users values(7,'Lamine','MERABAT','Lamine.MERABAT@gmail.com')
    into users values(8,'Seddik','HMIA','seddik.hmia@gmail.com')
    into users values(9,'Widad','TOUATI','widad.touati@gmail.com')
select * from dual;
alter session set "_oracle_script" = true;
create user Admin identified by "1234" Default tablespace IOT_TBS temporary tablespace IOT_TempTBS;
alter user admin profile C##IOT_Profil;
sqlplus admin/1234@//localhost:1521/XE
create view USER_THING(iduser,objet) as select us.iduser,th.mac from 
DBAIOT.USERS us , DBAIOT.THING th where th.iduser=us.iduser
group by us.iduser,th.mac;
grant create table , create user to admin;
grant create view to admin; 
grant select on DBAIOT.THING to admin;
grant create any index to admin; 
grant select on DBAIOT.SERVICE to admin;
grant C##SUBSCRIBE_MANAGER to admin;
grant select on DBAIOT.USERS to admin;
grant create session to admin;
create index NAMESERVICE_IX on DBAIOT.SERVICE(name);
create profile C##IOT_Profil limit
  sessions_per_user 3               -- 3 sessions simultanees autorisees par utilisateur
  cpu_per_call 35                   -- Un appel systeme ne peut pas consommer plus de 35 secondes de CPU
  connect_time 5400                 -- La session ne peut exceder 90 minutes (5400 secondes)
  logical_reads_per_call 1200       -- Un appel systeme ne peut lire plus de 1200 blocs de donnees
  private_sga 25k                   -- Chaque session ne peut allouer plus de 25 Ko en memoire SGA 
  idle_time 30                      -- I'inactivite maximale de 30 minutes avant deconnexion de la session
  failed_login_attempts 5           -- 5 tentatives de connexion echouees avant verrouillage du compte
  password_life_time 50             -- Le mot de passe est valable pendant 50 jours
  password_reuse_time 40            -- Il faut attendre 40 jours avant qu'un mot de passe puisse etre reutilise
  password_grace_time 5             -- 5 jours de periode de grace avant que le mot de passe doive etre change
  password_lock_time 1/24;          -- 1 jour d'interdiction d'acces apres avoir atteint 5 tentatives de connexion echouees
revoke create view from admin;
revoke create any index from admin;
revoke create user from admin;
revoke create table from admin;
revoke select on DBAIOT.USERS from admin;
revoke select on DBAIOT.SERVICE from admin;
revoke select on DBAIOT.THING from admin;
revoke create session from admin;
alter session set "_oracle_script" = true;
create role C##SUBSCRIBE_MANAGER;
grant select on DBAIOT.SERVICE to C##SUBSCRIBE_MANAGER;
grant select on DBAIOT.USERS to C##SUBSCRIBE_MANAGER;
grant update on DBAIOT.SUBSCRIBE to C##SUBSCRIBE_MANAGER;
Select * from DBAIOT.USERS;
SELECT * FROM USER_SYS_PRIVS;
SELECT * FROM ALL_TAB_PRIVS where grantee='ADMIN';
sqlplus sys/a2b48a3bfb254f04@//localhost:1521/XE as sysdba
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'ADMIN';
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
