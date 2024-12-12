DECLARE
    rfc SYS_REFCURSOR;
    Id Customer.Id%type;
    Name Customer.Name%TYPE;
BEGIN
    rfc := fncDeactivateCustomer(785);

    LOOP
		FETCH rfc INTO Id, Name;
        EXIT WHEN rfc%NOTFOUND;    
            dbms_output.put_line('Customer ' || Id || ', "' || Name || '" was deactivated!');
        END LOOP;

		IF rfc%ROWCOUNT = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Customer not deactivated');
		END IF;

EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Customer does not exist or is already inactive.');
		WHEN OTHERS THEN
        	IF SQLCODE = -20002 THEN
            	DBMS_OUTPUT.PUT_LINE('Customer has at least one active order and cannot be deactivated.');
			END IF;
END;