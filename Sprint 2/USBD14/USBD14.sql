CREATE OR REPLACE FUNCTION fncGetProductWithAllWorkstationTypesList(Inicialproduct Product.Id%type) 
RETURN sys_refcursor IS
    operationCursor sys_refcursor;
BEGIN
    -- Open the operationCursor, which will hold the final result set
    OPEN operationCursor FOR
        WITH ProductHierarchy (productId, rootProductId) AS (
        -- Base case: Start with the current product and mark it as the root product
        SELECT Id, Id AS rootProductId
        FROM Product
        WHERE Product.Id = Inicialproduct
    
        UNION ALL
    
        -- Recursive case: Find products involved in operations where the current product is an output
        SELECT operationInput.PartId, productHierarchy.rootProductId  -- Keep root product ID from the recursion
        FROM ProductHierarchy productHierarchy
        INNER JOIN Operation operation ON operation.PartOutput = productHierarchy.productId
        INNER JOIN OperationInput operationInput ON operation.id = operationInput.operationId
        INNER JOIN BOO boo ON boo.Id = operation.BOOId
        INNER JOIN Product product ON product.Id = boo.ProductId
        WHERE  operationInput.PartId IS NOT NULL  -- Ensure there is a valid input part
	)
		-- Query to count distinct workstation types used by the products in the recursive hierarchy
        SELECT 
            productHierarchy.rootProductId  -- Identify the root product in all rows
        FROM ProductHierarchy
        INNER JOIN Product product ON productHierarchy.productId = product.Id
        INNER JOIN BOO boo ON boo.productId = product.Id
        INNER JOIN Operation operation ON operation.booId = boo.Id
        INNER JOIN OperationType operationType ON operationType.Id = operation.OperationTypeId
        INNER JOIN OperationType_WorkstationType operationType_WorkstationType 
            ON operationType_WorkstationType.operationTypeId = operationType.Id
    	HAVING COUNT(DISTINCT operationType_WorkstationType.WorkstationTypeId) = 
                (SELECT COUNT(*) FROM WorkstationType)
        GROUP BY productHierarchy.rootProductId
        ORDER BY productHierarchy.rootProductId;

    RETURN operationCursor;
END;