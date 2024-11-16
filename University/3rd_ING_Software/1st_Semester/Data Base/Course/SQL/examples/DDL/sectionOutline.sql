create table section (
    id_section number,
    name varchar2(5),
    name not null,
    constraint pk_sec primary key (id_section),
    constraint chk_sec check ( name in ('A','B','C','D','1','2','3','4') )
);

