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
