create table employeTP5 (
num_emp integer,
nom_emp varchar2(50),
prof varchar2(50),
dateemb date,
salaire number,
comm varchar2(50) default '',
num_dep integer,
constraint pk_employeTP5 primary key (num_emp),
constraint fk_employeTP5_departementsTP5 foreign key (num_dep) references departementstp5(num_dep)
);