--USBD29 As a Factory Manager, I want to know the workstation types not used in any BOO.
--Function

CREATE OR REPLACE FUNCTION fncWorkstationTypesNotUsedInAnyBoo
RETURN sys_refcursor IS
    refCursor sys_refcursor;
BEGIN
	OPEN refCursor FOR
		SELECT ID, Name
		FROM WorkstationType
		WHERE 1=1
		AND Id NOT IN (SELECT UNIQUE operationType_WorkstationType.WorkstationTypeId
				FROM BOO boo
				INNER JOIN Operation 						operation 						ON boo.Id 						= operation.BOOId
				INNER JOIN OperationType					operationType					ON operation.OperationTypeId	= operationType.Id
				INNER JOIN OperationType_WorkstationType 	operationType_WorkstationType	ON operationType.Id				= operationType_WorkstationType.OperationTypeId
				);
	RETURN refCursor;
END;