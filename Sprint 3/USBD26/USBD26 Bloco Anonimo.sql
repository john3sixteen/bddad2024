DECLARE 
    myCursor    SYS_REFCURSOR;
	available	NUMBER;
BEGIN
    myCursor := fncGetPartsFromOrder(1);

    IF myCursor%NOTFOUND THEN
        dbms_output.put_line('An error has ocured with the order');
	ELSE
        available := fncCheckPartAvailability(myCursor);

		IF available = 0 THEN
        	dbms_output.put_line('Order can be done!');
		ELSE
        	dbms_output.put_line('Not enough parts available!');
    	END IF;

    END IF;

    CLOSE myCursor;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Order does not exist!');
END;