alter table users add constraint nn_users_lastname check (lastname is NOT null);
