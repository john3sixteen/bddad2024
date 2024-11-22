CREATE OR REPLACE FUNCTION fncGetInputList(productId Product.Id%type) 
RETURN sys_refcursor IS
    operationCursor sys_refcursor;
    dummy INT;
BEGIN
    -- Validate if the Part exists
    SELECT COUNT(*) INTO dummy
    FROM Product
    WHERE Id = productId;

    IF dummy = 0 THEN
        RAISE NO_DATA_FOUND;
    END IF;

    OPEN operationCursor FOR
        WITH PartHierarchy (PartId) AS (
            SELECT Id
            FROM Part
            WHERE Id = productId

            UNION ALL

            SELECT partInput.Id
            FROM PartHierarchy partHierarchy
        	INNER JOIN Part part ON part.Id = partHierarchy.partId
        	INNER JOIN Product ON product.Id = part.Id
        	INNER JOIN BOO boo ON product.Id = boo.ProductId
            INNER JOIN Operation operation ON boo.Id = operation.BOOId
            INNER JOIN OperationInput operationInput ON operation.Id = operationInput.OperationId
            INNER JOIN Part partInput ON operationInput.PartId = partInput.Id
            WHERE partInput.Id IS NOT NULL
        
        )
        SELECT
            partInput.Id AS PartId,
            SUM(operationInput.Quantity) AS TotalQuantity
        FROM PartHierarchy
        INNER JOIN Part part ON PartHierarchy.PartId = part.Id
        INNER JOIN Operation operation ON part.Id = operation.partOutput
        INNER JOIN OperationInput operationInput ON operationInput.OperationId = operation.Id
        INNER JOIN Part partInput ON partInput.Id = operationInput.PartId
        LEFT OUTER JOIN Product product ON product.Id = part.Id
        WHERE product.Id IS NULL
        GROUP BY partInput.Id
        ORDER BY partInput.Id;

    RETURN operationCursor;
END;