declare
    -- Declare a cursor that selects data
    cursor cr is
      [select query]

    -- Variables to hold fetched data
    var_1 table.col1%TYPE;
    var_2 table.col2%TYPE;
    .....
    var_n table.coln%TYPE;


begin

    open cr; -- Open the cursor

    fetch cr INTO var_1,var_2,...,var_n -- load first line
    
    while(cr%FOUND) loop -- Loop through the result set

        --traitements
        
        fetch cr into var1,var2,...,varn --loads next line 
        
    end loop;

    close cr; -- Close the cursor

end;
/
 
