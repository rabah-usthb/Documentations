create table ClientLab2(
    numClient int,
    CIV int ,
    firstName varchar2(50),
    lastName varchar2(50),
    DOB date,
    address varchar2(100),
    telProf varchar2(30),
    telPriv varchar2(30),
    fax varchar2(30),
    constraint pk_clientLab2 primary key (numClient)
);
