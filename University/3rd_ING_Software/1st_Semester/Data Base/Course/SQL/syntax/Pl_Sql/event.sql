create or replace trigger triggername
    { after | before | instead of }
    { insert | delete | update | drop }
    [ or { insert | delete | update | drop } ]  -- optional: multiple events
    on tablename
    
[ for each row ]  -- optional: row-level or table-level

declare

    -- variables

begin

    -- logic

end;
/

