-- Exists
select attribute_1,...,attributs_n from tableName
where exists (
    select 1
    rest_subqeury
);

-- Not Exists
select attribute_1,...,attributs_n from tableName
where not exists (
    select 1
    rest_subqeury
);
