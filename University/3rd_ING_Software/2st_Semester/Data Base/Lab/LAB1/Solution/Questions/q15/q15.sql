-- nom des fournisseurs qui livrent produit num 3 a usine num 1

-- methode 1
select f.nomf from fournisseur_tp1 f , livraison_tp1 l where f.nf = l.nf and l.nu = 1 and l.np = 3;

-- methode 2
select f.nomf from fournisseur_tp1 f where nf in (
select l.nf from livraison_tp1 l where f.nf = l.nf and l.nu = 1 and l.np = 3
);
