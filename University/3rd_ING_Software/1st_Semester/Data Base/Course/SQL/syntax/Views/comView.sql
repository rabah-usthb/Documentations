
-- create materialzed view

create materialized view viewName (colName_1,...,colName_n)
refresh on commit
as
[select query]


-- to refresh it

-- insert in table

insert into tableName values(val_1,...,val_2);

-- commit

commit;
