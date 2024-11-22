CREATE OR REPLACE FUNCTION fncGetOperationList(productId Product.Id%type) 
RETURN sys_refcursor IS
    operationCursor sys_refcursor;
    dummy INT;
BEGIN
    SELECT COUNT(*) INTO dummy
    FROM Product
    WHERE Id = productId;

    IF dummy = 0 THEN
        RAISE NO_DATA_FOUND;
    END IF;

    OPEN operationCursor FOR
        WITH ProductHierarchy (ProductId) AS (
            SELECT Id
            FROM Product
            WHERE Id = productId

            UNION ALL

            SELECT partInput.Id
            FROM ProductHierarchy productHierarchy
            INNER JOIN Product product ON productHierarchy.ProductId = product.Id
            INNER JOIN BOO boo ON product.Id = boo.ProductId
            INNER JOIN Operation operation ON boo.Id = operation.BOOId
            INNER JOIN OperationInput operationInput ON operation.Id = operationInput.OperationId
            INNER JOIN Part partInput ON operationInput.PartId = partInput.Id
            WHERE partInput.Id IS NOT NULL
        )
        SELECT
            partProduct.Name AS ProductName,
            operation.Id AS OperationId,
            operationType.Description AS OperationTypeDescription,
            partInput.Name AS InputPartName,
            partOutput.Name AS OutputPartName,
            workstationType.Id AS WorkstationTypeId,
            workstationType.Name AS WorkstationTypeName
        FROM ProductHierarchy productHierarchy
        INNER JOIN Product product ON productHierarchy.ProductId = product.Id
        INNER JOIN Part partProduct ON product.Id = partProduct.Id
        INNER JOIN BOO boo ON product.Id = boo.ProductId
        INNER JOIN Operation operation ON boo.Id = operation.BOOId
        INNER JOIN OperationInput operationInput ON operationInput.OperationId = operation.Id
        INNER JOIN Part partInput ON partInput.Id = operationInput.PartId
        INNER JOIN Part partOutput ON partOutput.Id = operation.PartOutput
        INNER JOIN OperationType operationType ON operation.OperationTypeId = operationType.Id
        INNER JOIN OperationType_WorkstationType operationType_WorkstationType 
            ON operationType.Id = operationType_WorkstationType.OperationTypeId
        INNER JOIN WorkstationType workstationType 
            ON workstationType.Id = operationType_WorkstationType.WorkstationTypeId
		ORDER BY partProduct.Name, operation.NextOP;

    RETURN operationCursor;
END;