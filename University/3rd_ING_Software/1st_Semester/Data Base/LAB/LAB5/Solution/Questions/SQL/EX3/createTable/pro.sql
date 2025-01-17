create table programmerTP5 (
num_rep integer,
date_pro date,
tarif number,
constraint fk_programmerTP5_representationTP5 foreign key (num_rep) references representationtp5(num_rep)
);