alter table ranklab1 add constraint nn_ranklab1_namerank check ( namerank is not null);
alter table participantlab1 add constraint nn_participantlab1_firstnameparticipant check ( firstnameparticipant is not null);
alter table participantlab1 add constraint nn_participantlab1_lastnameparticipant check ( lastnameparticipant is not null);
alter table examlab1 add constraint nn_examlab1_nameexam check ( nameexam is not null);
