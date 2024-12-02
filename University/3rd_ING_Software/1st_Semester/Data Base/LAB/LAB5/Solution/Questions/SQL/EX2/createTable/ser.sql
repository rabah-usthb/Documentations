create table serviceTP5(
numc number,
numr number,
dateService date,
constraint pk_serviceTP5 primary key (numc,numr,dateservice),
constraint fk_serviceTP5_chefTP5 foreign key (numc) references cheftp5(numc),
constraint fk_serviceTP5_restaurantTP5 foreign key (numr) references restauranttp5(numr)
);