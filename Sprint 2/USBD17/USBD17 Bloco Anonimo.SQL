DECLARE
    rfc SYS_REFCURSOR;
	products SYS_REFCURSOR;
    orderId CustomerOrder.Id%type;
BEGIN
    OPEN products FOR
        SELECT 'Pro 22 5l pot bottom' AS product, 10 AS quantity FROM dual
        UNION ALL
        SELECT 'Pro 20 lid', 5 FROM dual
        UNION ALL
        SELECT 'Pro 20 3l pot bottom', 3 FROM dual;
    
    rfc := fncRegisterOrder('PT501245987', 'Tv. Augusto Lessa 23', '4200-047', 'Porto',   'Portugal', products, SYSDATE());

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
			DBMS_OUTPUT.PUT_LINE('Products Not Found.');
		END IF;
END;