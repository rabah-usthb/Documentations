-- usine de fournisseurs num 3 seulement
select distinct l1.nu from livraison_tp1 l1 where l1.nu not in (
select l2.nu from livraison_tp1 l2 where l2.nf not in (3)); 
