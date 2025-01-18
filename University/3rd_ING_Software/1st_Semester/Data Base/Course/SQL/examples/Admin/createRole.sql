create role manager_role;                          -- create the manager_role role

grant create view to manager_role;                 -- grant create view to the role
grant create session to manager_role with admin;   -- give right to grant others create session to the role
grant update system.t1 to manager_role with grant; -- give right to grant others update on system.t1 to the role

revoke create session from manager_role            -- revoke create session to the role 
