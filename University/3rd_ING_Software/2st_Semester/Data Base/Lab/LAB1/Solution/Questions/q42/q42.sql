-- se connecter en tant que system
sqlplus system/a2b48a3bfb254f04@//localhost:1521/XE

-- creation tablespace permanente
create tablespace Livraison_TBS datafile '\livraison_TBS.dat' size 100M autoextend on online;

-- creation tablespace temporaire
create temporary tablespace Livraison_TempTBS tempfile '\livraison_TempTBS.dat' size 100M autoextend on;
