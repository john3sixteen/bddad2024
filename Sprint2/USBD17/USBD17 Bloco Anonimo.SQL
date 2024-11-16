DECLARE
    rfc SYS_REFCURSOR;
    orderId CustomerOrder.Id%type;
BEGIN
    rfc := fncRegisterOrder('PT501245987', 'Tv. Augusto Lessa 23', '4200-047', 'Porto',   'Portugal', 'La Belle 22 5l pot', 1, SYSDATE());

    LOOP
    FETCH rfc INTO orderId;
    EXIT WHEN rfc%NOTFOUND;    
        dbms_output.put_line('Customer Order ' || orderId || ' registered!');
    END LOOP;

	IF rfc%ROWCOUNT = 0 THEN
        dbms_output.put_line('Customer Order not created.');
	END IF;

EXCEPTION
    WHEN INVALID_NUMBER THEN
        dbms_output.put_line('Delivery Date cannot be in the past');
    WHEN OTHERS THEN
		IF SQLCODE = -20001 THEN
			DBMS_OUTPUT.PUT_LINE('Customer Not Found.');
		ELSIF SQLCODE = -20002 THEN
			DBMS_OUTPUT.PUT_LINE('Address Not Found.');
		ELSIF SQLCODE = -20003 THEN
			DBMS_OUTPUT.PUT_LINE('Product Not Found.');
		END IF;
END;
