create table musicienTP5 (
num_mus integer,
nom varchar(100),
num_rep integer,
constraint pk_musicienTP5 primary key (num_mus),
constraint fk_musicienTP5_representationTP5 foreign key (num_rep) references representationtp5(num_rep)
);