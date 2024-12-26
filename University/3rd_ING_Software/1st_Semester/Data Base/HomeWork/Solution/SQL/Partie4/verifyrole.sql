sqlplus sys/a2b48a3bfb254f04@//localhost:1521/XE as sysdba
SELECT * FROM DBA_ROLE_PRIVS WHERE GRANTEE = 'ADMIN';
