create table subscribe (
iduser integer,
idservice integer,
constraint pk_subscribe primary key (iduser,idservice),
constraint fk_subscribe_users foreign key (iduser) references users(iduser),
constraint fk_subscribe_service foreign key (idservice) references service(idservice)
); 
