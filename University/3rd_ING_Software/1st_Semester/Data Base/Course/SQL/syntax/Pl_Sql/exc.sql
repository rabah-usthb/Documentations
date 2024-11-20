declare

User_EXC exception; -- Declare a custom exception

begin

if Condition then

raise User_EXC;   -- Raise the custom exception

end if;

-- Rest of code

exception

when no_data_found then

dbms_output.put_line('No data found.');

when too_many_rows then

dbms_output.put_line('Too many rows returned.');

when User_EXC then

dbms_output.put_line('Custom error occurred.');

when others then

dbms_output.put_line('An unexpected error occurred: ' || SQLERRM);

end;

/


