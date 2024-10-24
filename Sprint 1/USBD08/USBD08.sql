SELECT DISTINCT Operation_WorkstationType.OperationId AS "Operation Id" , Operation.Description AS "Description"
FROM Operation_WorkstationType
INNER JOIN Operation ON Operation_WorkstationType.OperationId=Operation.Id
ORDER BY Operation_WorkstationType.OperationId