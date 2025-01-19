-- inline method
create table examLab1 (
    numexam int primary key,
    nameexam varchar2(20) check ( nameexam in ('TS','ING SI','Main ING')),
    dateexam date,
    dateresult date
);

-- out-of-line method

-- a.
create table examLab1 (
    numexam int,
    primary key(numexam),
    nameexam varchar2(20),
    dateexam date,
    dateresult date,
    constraint chk_examLab1_nameexam check (nameexam in ( 'TS','ING SI','Main ING'))
);

-- b.
create table examLab1 (
    numexam int,
    nameexam varchar2(20),
    dateexam date,
    dateresult date,
    constraint pk_examLab1 primary key(numexam),
    constraint chk_examLab1_nameexam check (nameexam in ( 'TS','ING SI','Main ING'))
);

-- alter method
create table examLab1 (
    numexam int,
    nameexam varchar2(20),
    dateexam date,
    dateresult date
);

alter table examLab1 add constraint pk_examLab1 primary key(numexam);
alter table examLab1 add constraint chk_examLab1_nameexam check (nameexam in ( 'TS','ING SI','Main ING'));

