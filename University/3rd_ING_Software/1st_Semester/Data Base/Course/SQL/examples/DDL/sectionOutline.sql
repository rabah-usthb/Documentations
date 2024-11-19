create table section (
    id_section number,
    name varchar2(5),
    constraint nn_sec_name not null,
    primary key (id_section),
    constraint chk_sec_name check ( name in ('A','B','C','D','1','2','3','4') )
);

