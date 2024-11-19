create table student (
    id number primary key,
    lastname varchar2(50) not null,
    firstname varchar2(50) not null,
    id_section number references section(id_section) on delete cascade,
    grade number(4,2) default 00.00 check (grade between 0 and 20),
    dob date not null 
);

