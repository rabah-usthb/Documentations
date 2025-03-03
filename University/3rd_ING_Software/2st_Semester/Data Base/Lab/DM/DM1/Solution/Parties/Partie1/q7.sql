alter table sports add constraint chk_sports_libelle check (libelle in
('Basket ball','Volley ball','Hand ball','Tennis','Hockey','Badmington','Ping pong','Football','Boxe'));