insert all
    into service values(1,'myKWHome','smarthome')
    into service values(2,'FridgAlert','smarthome')
    into service values(3,'RUNstats','quantifiedself')
    into service values(4,'traCARE','quantifiedself')
    into service values(5,'dogWATCH',NULL)
    into service values(6,'CarUse',NULL)
select * from dual;
insert all
    into subscribe values(2,1,to_date('2020/01/12','YYYY/MM/DD'),to_date('2020/02/12','YYYY/MM/DD'))
    into subscribe values(2,2,to_date('2020/01/19','YYYY/MM/DD'),to_date('2020/02/07','YYYY/MM/DD'))
    into subscribe values(1,3,to_date('2020/02/05','YYYY/MM/DD'),to_date('2020/04/05','YYYY/MM/DD'))
    into subscribe values(3,7,to_date('2020/02/01','YYYY/MM/DD'),to_date('2020/02/15','YYYY/MM/DD'))
select * from dual;
insert all
    into thing values('f0:de:f1:39:7f:17',1,NULL,NULL)
    into thing values('f0:de:f1:39:7f:18',2,NULL,NULL)
    into thing values('f0:de:f1:39:7f:19',2,'thingtempo',60)
    into thing values('f0:de:f1:39:7f:25',10,NULL,NULL)
    into thing values('f0:de:f1:39:7f:20',2,'thingtempo',1.5)
    into thing values('f0:de:f1:39:7f:21',4,NULL,NULL)
    into thing values('f0:de:f1:39:7f:22',4,NULL,NULL)
select * from dual;
insert all
    into users values(1,'Souad','MESBAH','souad.mesbah@gmail.com')
    into users values(2,'Younes','CHALAH','younes.chalah@gmail.com')
    into users values(3,'Chahinaz','MELEK','chahinaz.melek@gmail.com')
    into users values(4,'Samia','OUALI','samia.ouali@gmail.com')
    into users values(5,'Djamel','MATI','djamel.mati@gmail.com')
    into users values(6,'Assia','HORRA','assia.horra@gmail.com')
    into users values(7,'Lamine','MERABAT','Lamine.MERABAT@gmail.com')
    into users values(8,'Seddik','HMIA','seddik.hmia@gmail.com')
    into users values(9,'Widad','TOUATI','widad.touati@gmail.com')
select * from dual;
