alter table sports drop constraint chk_sports_libelle;

insert into sports values (123,'Golf');
insert into sports values (125,'Natation');

alter table sports add constraint chk_sports_libelle check (libelle in
('Golf','Natation','Basket ball','Volley ball','Hand ball','Tennis','Hockey','Badmington','Ping pong',
'Football','Boxe'));
