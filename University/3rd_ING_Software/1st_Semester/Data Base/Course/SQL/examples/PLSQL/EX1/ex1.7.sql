create table IntervenantsLab2(
    numIntervention int,
    numEmployee int,
    datebegin date,
    dateend date,
    constraint pk_IntervenantsLab2 primary key ( numIntervention,numEmployee),
    constraint fk_IntervenantsLab2_EmployeeLab2 foreign key (numEmployee) references EmployeeLab2(numEmployee),
    constraint fk_IntervenantsLab2_InterventionLab2 foreign key (numIntervention) references InterventionsLab2(numIntervention)
);
