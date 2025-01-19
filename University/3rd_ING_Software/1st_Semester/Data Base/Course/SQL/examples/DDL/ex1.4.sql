create table resultLab1 (
    numparticipant int,
    numexam int,
    grade number,
    constraint pk_resultLab1 primary key (numparticipant,numexam),
    constraint fk_resultLab1_participantLab1 foreign key (numparticipant) references participantlab1(numparticipant),
    constraint fk_resultLab1_examLab1 foreign key (numexam) references examlab1(numexam)
);
