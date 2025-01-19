create table participantLab1 (
    numparticipant int,
    firstnameparticipant varchar2(50),
    lastnameparticipant varchar2(50),
    numrank int,
    constraint pk_participantLab1 primary key (numparticipant),
    constraint fk_participantLab1_rankLab1 foreign key (numrank) references ranklab1(numrank)
);
