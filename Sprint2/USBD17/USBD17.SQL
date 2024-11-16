CREATE or REPLACE FUNCTION fncRegisterOrder(CustomerVATIN Customer.Vatin%type,
    												Street Address.Street%type,
    												ZIPCode Address.ZIPCode%type,
    												TownName Town.Name%type,
    												CountryName Country.Name%type,
    												Product Part.Name%type,
    												Quantity CustomerOrderLine.Quantity%type,
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

            BEGIN
                SELECT count(*) INTO dummy 
            	FROM Customer 
                WHERE Customer.VATIN = CustomerVATIN;

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
                WHERE Address.Street = Street AND Address.ZIPCode = ZIPCode AND Town.Name = TownName AND Country.Name = CountryName;

                if dummy = 0 then
                    RAISE_APPLICATION_ERROR(-20002, 'Address Not Found');
                end if;

				SELECT count(*) INTO dummy 
            	FROM Part 
                WHERE Part.Name = Product;

                if dummy = 0 then
                    RAISE_APPLICATION_ERROR(-20003, 'Product Not Found');
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
                	WHERE Address.Street = Street AND Address.ZIPCode = ZIPCode AND Address.TownId = townId AND Address.CountryId = countryId;

				INSERT INTO CustomerOrder(Id,CustomerId,AddressId,DateOrder,DateDelivery) VALUES (nextOrder, customerId, addressId, SYSDATE, DateDelivery);
				INSERT INTO CustomerOrderLine(CustomerOrderId,ProductId,Quantity) VALUES(nextOrder,productId, Quantity);

                open rfStock for
                    SELECT Id 
                    	FROM  CustomerOrder
                    WHERE Id = nextOrder;
                RETURN rfStock;
            END;