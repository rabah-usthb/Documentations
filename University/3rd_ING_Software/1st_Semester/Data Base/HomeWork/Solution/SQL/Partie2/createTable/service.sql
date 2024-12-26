create table service (
idservice integer,
name varchar2(50),
servicetype varchar2(50),
constraint pk_service primary key (idservice),
constraint chk_service_type check (servicetype in ('quantifiedself','smarthome'))
); 
