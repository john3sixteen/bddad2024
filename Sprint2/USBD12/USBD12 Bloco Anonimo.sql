DECLARE 
    myCursor           SYS_REFCURSOR;
    partInputId        Part.Id%type;
    partInputQuantity  NUMBER;

BEGIN
    myCursor := fncGetInputList('AS12945S22');
    LOOP
        FETCH myCursor INTO partInputId, partInputQuantity;
        EXIT WHEN myCursor%NOTFOUND;
        dbms_output.put_line('Part ID: ' || partInputId || ' | Quantity: ' || partInputQuantity);
    END LOOP;

    IF myCursor%ROWCOUNT = 0 THEN
        dbms_output.put_line('Product does not have BOO.');
    END IF;

    CLOSE myCursor;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No product was found with that Id.');
END;