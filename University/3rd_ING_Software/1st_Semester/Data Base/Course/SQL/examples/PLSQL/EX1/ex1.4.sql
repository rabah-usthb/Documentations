create table ModelLab2(
    numModel int,
    numBrand int,
    name varchar2(50),
    constraint fk_modelLab2_brandLab2 foreign key (numBrand) references BrandLab2(numBrand),
    constraint pk_modelLab2 primary key (numModel)
);
