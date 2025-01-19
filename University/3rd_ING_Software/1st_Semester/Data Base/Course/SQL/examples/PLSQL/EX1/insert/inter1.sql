INSERT ALL
    INTO InterventionsLab2 (numIntervention, numVehicule, type, datebegin, dateend, cost) 
    VALUES (501, 401, 'Repair', TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2023-10-03', 'YYYY-MM-DD'), 500) -- begin < end
    INTO InterventionsLab2 (numIntervention, numVehicule, type, datebegin, dateend, cost) 
    VALUES (502, 402, 'Maintenance', TO_DATE('2023-10-05', 'YYYY-MM-DD'), TO_DATE('2023-10-06', 'YYYY-MM-DD'), 300) -- begin < end
    INTO InterventionsLab2 (numIntervention, numVehicule, type, datebegin, dateend, cost) 
    VALUES (503, 403, 'Inspection', TO_DATE('2023-10-11', 'YYYY-MM-DD'), TO_DATE('2023-10-10', 'YYYY-MM-DD'), 200) -- begin > end
    INTO InterventionsLab2 (numIntervention, numVehicule, type, datebegin, dateend, cost) 
    VALUES (504, 404, 'Repair', TO_DATE('2023-10-15', 'YYYY-MM-DD'), TO_DATE('2023-10-16', 'YYYY-MM-DD'), 400) -- begin < end
    INTO InterventionsLab2 (numIntervention, numVehicule, type, datebegin, dateend, cost) 
    VALUES (505, 405, 'Maintenance', TO_DATE('2023-10-21', 'YYYY-MM-DD'), TO_DATE('2023-10-20', 'YYYY-MM-DD'), 250) -- begin > end
SELECT 1 FROM DUAL;

