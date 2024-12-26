create view USER_THING(iduser,objet) as select us.iduser,th.mac from 
DBAIOT.USERS us , DBAIOT.THING th where th.iduser=us.iduser
group by us.iduser,th.mac;
