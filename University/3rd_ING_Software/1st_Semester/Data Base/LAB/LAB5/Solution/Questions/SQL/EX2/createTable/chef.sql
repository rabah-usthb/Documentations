create table chefTP5 (
numc number,
nomc varchar2(50),
age integer,
pays varchar2(50),
specialiteCulinaire varchar2(50),
etoilesc integer,
constraint pk_chefTP5 primary key (numc),
constraint chk_chefTP5_age check (age>=18),
constraint chk_chefTP5_etoilesc check (etoilesc in (1,2,3,4,5))
);