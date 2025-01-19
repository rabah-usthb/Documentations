create table rankLab1 (
    numrank int,
    namerank varchar2(20),
    constraint pk_rankLab1 primary key (numrank),
    constraint chk_rankLab1_namerank check (namerank in ('BDD','SI','GL'))
);
