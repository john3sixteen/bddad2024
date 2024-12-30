/*USBD27- As a Production Manager, I want to reserve the necessary materials
and components to fulfil a given order. The reserved materials and components
should be registered in the database, but not automatically deducted from stock.
The reservation should be created only if the whole order can be fulfilled.
*/

DECLARE 
    myCursor	SYS_REFCURSOR;
	available	NUMBER;
BEGIN
	BEGIN
    myCursor := fncGetPartsFromOrder(1);

    IF myCursor%NOTFOUND THEN
        dbms_output.put_line('An error has ocured with the order');
	ELSE
        available := fncCheckPartAvailability(myCursor);
		
		myCursor := fncGetPartsFromOrder(1);

		IF available = 0 THEN
			UpdateReservedStock(myCursor);
			-- Commit the transaction
			COMMIT;
			DBMS_OUTPUT.PUT_LINE('Parts Reserved');
		ELSE
        	dbms_output.put_line('Not enough parts available!');
    	END IF;

    END IF;

    CLOSE myCursor;

		EXCEPTION
		WHEN NO_DATA_FOUND THEN
			dbms_output.put_line('Order does not exist!');
		WHEN OTHERS THEN
			-- If there's any error, rollback
			ROLLBACK;
			dbms_output.put_line('Error occurred: ' || SQLERRM);
	END;
END;