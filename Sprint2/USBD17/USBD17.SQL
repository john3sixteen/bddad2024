CREATE or REPLACE FUNCTION fncRegisterOrder(CustomerVATIN Customer.Vatin%type,
    												StreetName Address.Street%type,
    												ZIPCodeNum Address.ZIPCode%type,
    												TownName Town.Name%type,
    												CountryName Country.Name%type,
    												Products IN sys_refcursor,
    												DateDelivery CustomerOrder.DateDelivery%type) 
                                        RETURN sys_refcursor IS
                rfStock  sys_refcursor;
                dummy int;
				nextOrder CustomerOrder.Id%type;
				customerId Customer.Id%type;
				addressId CustomerOrder.AddressId%type;
				townId Town.Id%type;
                countryId Country.Id%type;
				productId CustomerOrderLine.ProductId%type;
				product Part.Name%type;
				quantity Operation.OutputQuantity%type;

            BEGIN
                SELECT count(*) INTO dummy 
            	FROM Customer 
                WHERE Customer.VATIN = CustomerVATIN AND Customer.CustomerState >= 0;

				IF DateDelivery < SYSDATE THEN
                    RAISE INVALID_NUMBER;
                END IF;

                if dummy = 0 then
                    RAISE_APPLICATION_ERROR(-20001, 'Customer Not Found');
                end if;

                SELECT count(*) INTO dummy 
            	FROM Address 
                INNER JOIN Town ON Address.TownId = Town.Id
                INNER JOIN Country ON Address.CountryId = Country.Id
                WHERE Address.Street = StreetName AND Address.ZIPCode = ZIPCodeNum AND Town.Name = TownName AND Country.Name = CountryName;

                if dummy = 0 then
                    RAISE_APPLICATION_ERROR(-20002, 'Address Not Found');
                end if;

				LOOP
                	FETCH Products into product, quantity;
                	EXIT WHEN Products%NOTFOUND;
					SELECT count(*) INTO dummy 
            		FROM Part 
                	WHERE Part.Name = product;

                	if dummy <> 0 then
						SELECT Id INTO productId 
						FROM Part 
						WHERE Part.Name = product;
                        INSERT INTO temp_product_table (product, quantity) VALUES (productId, quantity);
                	end if;
				END LOOP;

				SELECT count(*) INTO dummy 
            	FROM temp_product_table;
                    
				if dummy = 0 then
                    RAISE_APPLICATION_ERROR(-20003, 'Products Not Found!');
                end if;

				Select MAX(Id)+1 INTO nextOrder
                    FROM CustomerOrder;

				Select Id INTO townId
                    FROM Town
                    WHERE Town.Name = TownName;

				Select Id INTO countryId
                    FROM Country
                    WHERE Country.Name = CountryName;

				Select Id INTO customerId
                    FROM Customer
                    WHERE Customer.VATIN = CustomerVATIN;

				Select Id INTO addressId
                    FROM Address
                	WHERE Address.Street like StreetName AND Address.ZIPCode like ZIPCodeNum AND Address.TownId = townId AND Address.CountryId = countryId;

				INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES (nextOrder, customerId, addressId, SYSDATE, DateDelivery);

                FOR rec IN (SELECT * FROM temp_product_table) LOOP
        			INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(nextOrder, rec.product, rec.quantity);
    			END LOOP;

				DELETE FROM temp_product_table;
                    
                open rfStock for
                    SELECT Id 
                    	FROM  CustomerOrder
                    WHERE Id = nextOrder;
                RETURN rfStock;
            END;