create table restaurantTP5 (
numr number,
nomr varchar2(50),
adresse varchar2(100),
etoilesr integer,
constraint pk_restaurantTP5 primary key (numr),
constraint chk_restaurantTP5_etoilesr check (etoilesr in (1,2,3,4,5))
);