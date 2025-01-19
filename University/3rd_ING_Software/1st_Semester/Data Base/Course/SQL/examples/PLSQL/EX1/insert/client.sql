INSERT ALL
    INTO ClientLab2 (numClient, CIV, firstName, lastName, DOB, address, telProf, telPriv, fax) VALUES (1, 1, 'John', 'Doe', TO_DATE('1980-05-15', 'YYYY-MM-DD'), '123 Main St, CityA', '123-456-7890', '098-765-4321', '111-222-3333')
    INTO ClientLab2 (numClient, CIV, firstName, lastName, DOB, address, telProf, telPriv, fax) VALUES (2, 2, 'Jane', 'Smith', TO_DATE('1990-08-25', 'YYYY-MM-DD'), '456 Elm St, CityB', '234-567-8901', NULL, NULL)
    INTO ClientLab2 (numClient, CIV, firstName, lastName, DOB, address, telProf, telPriv, fax) VALUES (3, 1, 'Alice', 'Johnson', TO_DATE('1975-12-10', 'YYYY-MM-DD'), '789 Oak St, CityC', NULL, '345-678-9012', '444-555-6666')
    INTO ClientLab2 (numClient, CIV, firstName, lastName, DOB, address, telProf, telPriv, fax) VALUES (4, 2, 'Bob', 'Brown', TO_DATE('1985-03-22', 'YYYY-MM-DD'), '321 Pine St, CityD', '456-789-0123', '567-890-1234', NULL)
    INTO ClientLab2 (numClient, CIV, firstName, lastName, DOB, address, telProf, telPriv, fax) VALUES (5, 1, 'Charlie', 'Davis', TO_DATE('1995-07-30', 'YYYY-MM-DD'), '654 Cedar St, CityE', NULL, NULL, '777-888-9999')
SELECT 1 FROM DUAL;
