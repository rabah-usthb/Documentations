-- insertion sur usine
insert all
into usine_tp1 values(1,'Citroen','Paris')
into usine_tp1 values(2,'Peugeot','Sochaux')
into usine_tp1 values(3,'Citroen','Sochaux')
into usine_tp1 values(4,'Renault','Paris')
into usine_tp1 values(5,'Toyota','Lyon')
select * from dual;

-- insertion sur produit
insert all
into produit_tp1 values(1,'Plaquette','Noir',0.257)
into produit_tp1 values(2,'Siege','Rouge',15.23)
into produit_tp1 values(3,'Siege','Vert',15.23)
into produit_tp1 values(4,'Pare-Brise',NULL,11.9)
into produit_tp1 values(5,'Retroviseur','Vert',1.02)
select * from dual;

-- insertion sur fournisseur
insert all
into fournisseur_tp1 values(1,'Monroe','Producteur','Lyon','monroe@gmail.com')
into fournisseur_tp1 values(2,'Au bon siege','Sous-traitant','Limoges','au_bon_siege@gmail.com')
into fournisseur_tp1 values(3,'Saint Gobain','Producteur','Paris','saint_gobain@gmail.com')
select * from dual;

-- insertion sur livraison
insert all
into livraison_tp1 values(3,1,2,60)
into livraison_tp1 values(1,2,3,2500)
into livraison_tp1 values(1,3,3,3000)
into livraison_tp1 values(2,2,3,120)
into livraison_tp1 values(3,1,1,49)
into livraison_tp1 values(3,2,1,45)
into livraison_tp1 values(3,3,1,78)
into livraison_tp1 values(2,4,2,52)
into livraison_tp1 values(2,1,1,52)
select * from dual;
