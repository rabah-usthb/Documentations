alter table ranklab1 modify (namerank varchar2(10)); -- reduce size
desc ranklab1;                                       -- verify

alter table ranklab1 modify (namerank varchar2(30)); -- add size
desc ranklab1;                                       -- verify

