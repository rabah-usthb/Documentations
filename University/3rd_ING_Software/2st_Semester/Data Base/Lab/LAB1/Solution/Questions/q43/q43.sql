-- affecter les tablespace a l'utilisateur IGN
alter user ing default tablespace livraison_tbs temporary tablespace livraison_temptbs;

-- description catalogue dba_users
disc dba_users;

-- afficher nom des tablespaces de l'utilisateur ING
select default_tablespace , temporary_tablespace from dba_users where username = 'ING';
