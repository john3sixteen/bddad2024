CREATE or REPLACE FUNCTION fncGetPartsFromOrder(orderIdNum CustomerOrder.Id%Type) 
	RETURN SYS_REFCURSOR IS
	dummy NUMBER;
	partsQuantity  SYS_REFCURSOR;
	productNum Product.Id%Type;
	prodQuantity CustomerOrderLine.Quantity%Type;
BEGIN
    SELECT COUNT(*) INTO dummy
    FROM CustomerOrder
    WHERE Id = orderIdNum;

	IF dummy = 0 THEN
		RAISE NO_DATA_FOUND;
    END IF;

	OPEN partsQuantity FOR
		WITH PartHierarchy (PartId, Quantity) AS (
            SELECT Product.Id, CustomerOrderLine.Quantity
            FROM Product
        	INNER JOIN CustomerOrderLine ON CustomerOrderLine.ProductId = Product.Id
            WHERE CustomerOrderLine.CustomerOrderId = orderIdNum

            UNION ALL

            SELECT partInput.Id, PartHierarchy.Quantity
            	FROM PartHierarchy partHierarchy
            	INNER JOIN Part part ON part.Id = partHierarchy.PartId
                INNER JOIN InternalPart internalPart ON internalPart.Id = part.Id
            	INNER JOIN Product product ON product.Id = internalPart.Id
            	INNER JOIN BOO boo ON product.Id = boo.ProductId
                INNER JOIN Operation operation ON boo.Id = operation.BOOId
                INNER JOIN OperationInput operationInput ON operation.Id = operationInput.OperationId
                INNER JOIN Part partInput ON operationInput.PartId = partInput.Id
                WHERE partInput.Id IS NOT NULL
        		AND partInput.Id IN (
        			SELECT Id
        			FROM Product
                )
        
        	)
                
			SELECT OperationInput.PartId, SUM(OperationInput.Quantity*PartHierarchy.Quantity)
            	FROM PartHierarchy
                INNER JOIN Part ON PartHierarchy.PartId = Part.Id
        		INNER JOIN InternalPart ON InternalPart.Id = Part.Id
        		INNER JOIN BOO ON BOO.ProductId = InternalPart.Id
        		INNER JOIN Operation ON Operation.BOOId = BOO.Id
        		INNER JOIN OperationInput ON OperationInput.OperationId = Operation.Id
        		WHERE OperationInput.PartId NOT IN (
                	SELECT Id
                	FROM InternalPart
            	)
        		GROUP BY OperationInput.PartId;          

	RETURN partsQuantity;
END;

CREATE or REPLACE FUNCTION fncCheckPartAvailability(partsQuantity IN SYS_REFCURSOR) 
	RETURN NUMBER IS
	available NUMBER := 0;
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
				available := -1;
            END IF;
	END LOOP;
	
	RETURN available;
END;
