revoke create session from admin;   -- revoke the right to create session and right to grant/revoke it from admin
revoke drop any table from admin;   -- revoke the right to drop any table and right to grant/revoke it from admin
revoke all privileges from admin;              -- revoke all rights from admin 
revoke all privileges on system.t1 from admin; -- revoke all rights on object system.t1 from admin
