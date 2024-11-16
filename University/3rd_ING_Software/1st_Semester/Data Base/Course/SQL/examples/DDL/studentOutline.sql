create table student (
    id number,
    constraint pk_student primary key(id),
    lastname varchar2(50),
    firstname varchar2(50),
    constraint nn_student_lastname lastname not null,
    constraint nn_student_firstname firstname not null,
    id_section number,
    constraint fr_student foreign key (id_section) references section(id_section) on delete cascade,
    grade number(4,2),
    grade default 00.00,
    constraint chk_student_grade check (grade between 0 and 20),
    dob date not null,
    constraint chk_student_dob check (dob<= add_months(sysdate,-18*12))
);

