create table VehiculeLab2(
    numVehicule int,
    numClient int,
    numModel int,
    mat varchar2(30),
    year int,
    constraint pk_VehiculeLab2 primary key (numVehicule),
    constraint fk_VehiculeLab2_ClientLab2 foreign key (numClient) references ClientLab2(numClient),
    constraint fk_VehiculeLab2_ModelLab2 foreign key (numModel) references ModelLab2 (numModel)
);
