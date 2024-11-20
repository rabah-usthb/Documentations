select t1.col_1 ,..., t1.col_n , t2.col_1 ,..., t2.col_n , tn.col_1 , ... , tn.col_n from
table1 t1 inner join table2 t2 on t1.communCol = t2.communCol inner join ..... inner join 
tablen tn on tn-1.communCol = tn.communCol;

select t1.col_1 ,..., t1.col_n , t2.col_1 ,..., t2.col_n , tn.col_1 , ... , tn.col_n from
table1 t1 left join table2 t2 on t1.communCol = t2.communCol left join ..... left join 
tablen tn on tn-1.communCol = tn.communCol;

select t1.col_1 ,..., t1.col_n , t2.col_1 ,..., t2.col_n , tn.col_1 , ... , tn.col_n from
table1 t1 right join table2 t2 on t1.communCol = t2.communCol right join ..... right join 
tablen tn on tn-1.communCol = tn.communCol;

select t1.col_1 ,..., t1.col_n , t2.col_1 ,..., t2.col_n , tn.col_1 , ... , tn.col_n from
table1 t1 full outer join table2 t2 on t1.communCol = t2.communCol full outer join ..... full outer join 
tablen tn on tn-1.communCol = tn.communCol;
