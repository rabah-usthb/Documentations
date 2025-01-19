create table InterventionsLab2(
    numIntervention int,
    numVehicule int,
    type varchar2(20),
    datebegin date,
    dateend date,
    cost number,
    constraint pk_InterventionsLab2 primary key (numIntervention),
    constraint fk_InteventionsLab2_VehiculeLab2 foreign key (numVehicule) references VehiculeLab2(numVehicule)
);
