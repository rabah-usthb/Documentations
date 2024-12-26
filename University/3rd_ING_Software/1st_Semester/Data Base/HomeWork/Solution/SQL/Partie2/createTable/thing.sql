create table thing (
mac varchar2(20),
iduser integer,
thingtype varchar2(50),
param number,
constraint pk_thing primary key (mac),
constraint fk_thing_users foreign key (iduser) references users(iduser)
); 
