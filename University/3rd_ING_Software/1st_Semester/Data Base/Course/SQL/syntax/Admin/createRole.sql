create role role_name; --create role

grant right_name to role_name; -- grant system/object privelge to the role
grant right_name to role_name with admin; -- grant right to grant others system privelge to the role
grant right_name to role_name with grant; -- grant right to grant others object privelge to the role

revoke right_name from role_name -- revoke the privilege and the ability to revoke/grant it to the role 
