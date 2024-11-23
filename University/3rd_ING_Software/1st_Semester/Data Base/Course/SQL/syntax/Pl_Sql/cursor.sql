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
    -- Open the cursor
    open cr;

    -- load first line
    fetch cr INTO var_1,var_2,...,var_n
    
    -- Loop through the result set
    while(cr%FOUND) loop

        --traitements
        
        --loads next line 
        fetch cr into var1,var2,...,varn
        
    end loop;

    -- Close the cursor
    close cr;
end;
/
 
