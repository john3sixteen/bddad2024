SELECT DISTINCT customerOrder.Id AS "Customer Order Id", 
    	workstationType.Id AS "Workstation Type Id", 
    	workstationType.Name AS "Workstation Type Name"
    FROM WorkstationType workstationType 
INNER JOIN Operation_WorkstationType 		operationWorkstationType 	ON workstationType.Id 						= operationWorkstationType.WorkstationTypeId
INNER JOIN Operation 						operation 					ON operationWorkstationType.OperationId 	= operation.Id
INNER JOIN BOO 								boo 						ON operation.Id 							= boo.OperationId
INNER JOIN ProductFamily 					productFamily 				ON boo.ProductFamilyId 						= productFamily.Id
INNER JOIN Product 							product 					ON productFamily.Id 						= product.ProductFamilyId
INNER JOIN CustomerOrderLine 				customerOrderLine 			ON product.Id 								= customerOrderLine.ProductId
INNER JOIN CustomerOrder 					customerOrder 				ON customerOrderLine.CustomerOrderId 		= customerOrder.Id
WHERE customerOrder.Id = 4
ORDER BY workstationType.Id