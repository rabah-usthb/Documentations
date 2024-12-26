alter session set "_oracle_script" = true;
create role C##SUBSCRIBE_MANAGER;
grant select on DBAIOT.SERVICE to C##SUBSCRIBE_MANAGER;
grant select on DBAIOT.USERS to C##SUBSCRIBE_MANAGER;
grant update on DBAIOT.SUBSCRIBE to C##SUBSCRIBE_MANAGER;
