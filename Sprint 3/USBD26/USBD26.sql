CREATE or REPLACE FUNCTION fncGetPartsFromOrder(orderIdNum CustomerOrder.Id%Type) 
	RETURN SYS_REFCURSOR IS
	dummy NUMBER;
	partsQuantity  SYS_REFCURSOR;
	productsQuantity  SYS_REFCURSOR;
	productNum Product.Id%Type;
	prodQuantity CustomerOrderLine.Quantity%Type;
BEGIN
    SELECT COUNT(*) INTO dummy
    FROM CustomerOrder
    WHERE Id = orderIdNum;

	IF dummy = 0 THEN
		RAISE NO_DATA_FOUND;
    END IF;

	OPEN productsQuantity FOR
        SELECT ProductID, Quantity
        FROM CustomerOrderLine
        WHERE CustomerOrderId = orderIdNum;
	CLOSE productsQuantity;

	IF productsQuantity%NOTFOUND THEN
        RAISE_APPLICATION_ERROR(-20005, 'Order Has no Products');
	END IF;

	LOOP
       FETCH productsQuantity into productNum, prodQuantity;
       EXIT WHEN productsQuantity%NOTFOUND;

			--Falta recursividade e (talvez) como fazer a soma da mesma parte em produtos diferentes
			
			OPEN partsQuantity FOR
				SELECT OperationInput.PartId, (SUM(OperationInput.Quantity)prodQuantity)
            	FROM OperationInput
            	INNER JOIN Operation ON Operation.Id  = OperationInput.OperationId
            	INNER JOIN BOO ON BOO.Id = Operation.BOOId
            	INNER JOIN Product ON Product.Id = BOO.ProductId
            	INNER JOIN Part ON Part.Id = OperationInput.PartId
				WHERE OperationInput.PartId NOT IN (
                	SELECT Id
                	FROM InternalPart
            	)
            	AND Product.Id = productNum
            	GROUP BY OperationInput.PartId;
            CLOSE partsQuantity;
	END LOOP;

	RETURN partsQuantity;
END;

CREATE or REPLACE FUNCTION fncCheckPartAvailability(partsQuantity IN SYS_REFCURSOR) 
	RETURN NUMBER IS
	available NUMBER := -1;
	partNumber Part.Id%Type;
	partQuantity OperationInput.Quantity%Type;
	minSk ExternalPart.MinimumStock%Type;
    sk ExternalPart.Stock%Type;
    resSk ExternalPart.ReservedStock%Type;
BEGIN
	LOOP
       FETCH partsQuantity into partNumber, partQuantity;
       EXIT WHEN partsQuantity%NOTFOUND;
			
			SELECT MinimumStock, Stock, ReservedStock 
            INTO minSk, sk, resSK 
            FROM ExternalPart 
        	WHERE ExternalPart.Id = partNumber;

            IF partQuantity >= (minSK + resSK + sk) THEN
				available := 0;
			ELSE
                available := -1;
            END IF;
	END LOOP;
	
	RETURN available;
END;