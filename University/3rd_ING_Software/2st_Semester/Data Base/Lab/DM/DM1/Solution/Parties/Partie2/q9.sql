set @conseiller_id = (select idsportif from sportifs where nom = 'CHAADI' and prenom = 'Mourad'); 

update sportifs set idsportifconseiller = @coneiller_id
 where nom = 'LACHEMI' and prenom = 'Bouzid';