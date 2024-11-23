
-- create materialzed view

create materialized view viewName
refresh on demand
as
[select query]


-- to refresh it 

exec dbms_mview.refresh('viewName');
