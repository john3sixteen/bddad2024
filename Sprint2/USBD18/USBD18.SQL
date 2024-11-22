CREATE or REPLACE FUNCTION fncDeactivateCustomer(IdCustomer Customer.Id%type) 
                                        RETURN sys_refcursor IS
                rfStock  sys_refcursor;
                dummy int;
            BEGIN
                SELECT count(*) INTO dummy 
            	FROM Customer 
                WHERE Customer.Id = IdCustomer AND Customer.CustomerState >= 0;

                IF dummy = 0 THEN
                    RAISE NO_DATA_FOUND;
                END IF;

				SELECT count(*) INTO dummy 
            	FROM CustomerOrder
                WHERE CustomerOrder.CustomerId = IdCustomer AND DateDelivery > SYSDATE;

				IF dummy <> 0 THEN
                    RAISE_APPLICATION_ERROR(-20002, 'Customer has active orders.');
                END IF;

				UPDATE Customer
                    SET CustomerState = -1
                    WHERE Customer.Id = IdCustomer;
                OPEN rfStock for
                    SELECT Id, Name 
                    	FROM  Customer
                    WHERE Customer.Id = IdCustomer;
                RETURN rfStock;
            END;