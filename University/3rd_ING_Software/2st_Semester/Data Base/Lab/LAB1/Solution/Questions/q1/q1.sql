-- se connecter en tant que system
sqlplus system/a2b48a3bfb254f04@//localhost:1521/XE

-- creation de l'utilisateur ING
alter session set "_oracle_script" = true;
create user ING identified by "1234";

-- Donnez tout les privilges a ING
grant all privileges to ING;

-- se deconnecter
exit;

-- se connecter en tant que ING
sqlplus ING/1234@//localhost:1521/XE
