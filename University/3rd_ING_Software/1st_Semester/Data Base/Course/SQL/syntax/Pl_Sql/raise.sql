declare

sqlCode_1 number := -20004; -- value must be between -20000 and 20999

begin

--code

if Condition then

raise_application_error(sqlCode_1,'custom error message') User_EXC;   -- Raise Application Error

end if;

-- Rest of code

end;

/


