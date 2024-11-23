
-- create materialzed view

create materialized view viewName
refresh on commit
as
[select query]


-- to refresh it

-- insert in table

insert into tableName values(val_1,...,val_2);

-- commit

commit;
