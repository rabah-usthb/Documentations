select c.nomc,c.numc from cheftp5 c where 
(select count(distinct s.numr) from servicetp5 s where s.numc= c.numc) = 
(select max(count(distinct s.numr)) from servicetp5 s group by s.numc);