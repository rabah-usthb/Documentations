alter table users add (adressuser varchar2(100));
alter table users modify (adressuser varchar2(150));
sqlplus dbaiot/1234@//localhost:1521/XE
alter table subscribe add (date_deb date);
alter table subscribe drop constraint pk_subscribe; 
alter table subscribe add constraint pk_subscribe primary key (iduser,idservice,date_deb);
alter table users drop column adruser;
alter table subscribe add (date_fin date);
alter table subscribe add constraint chk_subscribe_date check(date_deb<date_fin);
alter table users add constraint nn_users_lastname check (lastname is NOT null);
alter table users add constraint nn_users_adressuser check (adressuser is NOT null);
alter table users rename column adressuser to adruser;
alter table users modify (adressuser varchar2(90));
desc users;
desc users;
