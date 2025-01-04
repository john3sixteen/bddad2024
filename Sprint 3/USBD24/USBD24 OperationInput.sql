CREATE OR REPLACE TRIGGER validateOperatationInput
    BEFORE INSERT OR UPDATE ON OperationInput
    FOR EACH ROW

    DECLARE BOOproduct NUMBER;
    ERROR EXCEPTION;

BEGIN
    SELECT COUNT(*) INTO BOOproduct
        FROM Operation
        INNER JOIN BOO 				ON Operation.BOOId 	= BOO.Id
        INNER JOIN OperationInput 	ON Operation.Id 	= OperationInput.OperationId
        WHERE Operation.Id = :new.OperationId
        AND OperationInput.PartId = BOO.ProductId;

    IF (BOOproduct > 0) THEN
        RAISE ERROR;
    END IF;

EXCEPTION
    WHEN ERROR THEN
        RAISE_APPLICATION_ERROR(-20003, 'A Product can not be an input on its own BOO!');

END validateOperatationInput;