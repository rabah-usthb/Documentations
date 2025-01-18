grant all privileges to admin;                         -- give all privileges to admin and right to grant/revoke
grant select on sys.t1 to admin with grant option;     -- give the right to admin user to grant others right to select on the object sys.t1
grant create session to admin with admin option;       -- give the right to admin user to grant others right to create session 
grant drop any table to admin;                         -- give the right to drop any table to admin user
grant create index to admin;                           -- give the right to create index to admin user 
grant update on dbaiot.v1 to admin;                    -- give the right to update the object dbaiot.v1 to admin user  
