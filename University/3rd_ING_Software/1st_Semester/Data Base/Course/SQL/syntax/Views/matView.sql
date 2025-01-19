-- create materialzed view
create materialized view viewName (colName_1,...,colName_n)
refresh on demand
as
[select query]


-- to refresh it 
exec dbms_mview.refresh('viewName');
