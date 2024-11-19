/*USBD13 As a Production Manager, I want to get a list of operations involved in
the production of a product, as well as each workstation type.
Acceptance criteria: A function should return a cursor with all product operations.
When a part is a subproduct made at the factory, its list of operations
should be included. For each operation, the inputs and outputs should be included.*/

CREATE OR REPLACE FUNCTION fncGetOperationList(productId Product.Id%type) RETURN sys_refcursor IS
	operationCursor sys_refcursor;
	dummy int;
BEGIN
	SELECT COUNT(*) INTO dummy
	FROM Product
	WHERE Id = productId;
	IF dummy = 0 THEN
	RAISE NO_DATA_FOUND;
	END IF;

	OPEN operationCursor FOR
		SELECT partProduct.Name, operation.Id, operationType.Description, partInput.Name, partOutput.Name, workstationType.Id, workstationType.Name
		FROM Product product
		INNER JOIN Part 							partProduct 					ON product.Id 					= partProduct.Id
		INNER JOIN BOO 								boo								ON product.Id 					= boo.ProductId
		INNER JOIN Operation 						operation						ON boo.Id 						= operation.BOOId
		INNER JOIN OperationInput					operationInput					ON operationInput.OperationId	= operation.Id
		INNER JOIN Part								partInput						ON partInput.Id					= operationInput.PartId
		INNER JOIN Part								partOutput						ON partOutput.Id				= operation.PartOutput
        INNER JOIN OperationType 					operationType					ON operation.OperationtypeId 	= operationType.Id
		INNER JOIN OperationType_WorkstationType 	operationType_WorkstationType	ON operationType.Id				= operationType_WorkstationType.OperationTypeId
		INNER JOIN WorkstationType					workstationType					ON workstationType.Id			= operationType_WorkstationType.WorkstationTypeId;
	RETURN operationCursor;
END;