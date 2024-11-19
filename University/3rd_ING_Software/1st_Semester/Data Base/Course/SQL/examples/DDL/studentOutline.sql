create table student (
    id number,
    constraint pk_student primary key(id),
    lastname varchar2(50),
    firstname varchar2(50),
    constraint nn_lastname_student lastname not null,
    constraint nn_firstname_student firstname not null,
    id_section number,
    constraint fr_student foreign key (id_section) references section(id_section) on delete cascade,
    grade number(4,2),
    constraint df_grade_student grade default 00.00,
    check (grade between 0 and 20),
    dob date,
    constraint nn_dob_student dob not null
);

