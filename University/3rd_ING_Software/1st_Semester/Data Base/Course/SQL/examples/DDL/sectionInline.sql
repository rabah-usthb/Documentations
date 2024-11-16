create table section (
    id_section number primary key,
    name varchar2(5) not null check in ('A','B','C','D','1','2','3','4')
);

